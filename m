Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5141A3C1D7A
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787163634; cv=none; b=QydGZZJEm9nhJWHAjgriB9jaGrcpsP99oEtLhqd9og4DQw89f2w24HM7GnLzF+HfwUHSLwl1pxQyMghODS1na3sJizaBWfluGhbeQWtGMtXpOQuChPI8tfrZIC1wUQVzq87pyhoilIdnDEhbcK3aU4AXFqaC6Wy7gV+iEA8NYh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787163634; c=relaxed/simple;
	bh=KzR5uH+p735Cghco6UJDLhbHp+frZbV8lGnH4JRbmZ8=;
	h=To:Subject:From:Message-Id:Date; b=gq38eckSKbdMlhFYPuhTbRzqsvUvNIF7OaTwyEvQRndFHT0NBPDL5US6b5jJYCU+1vX1A9fy5l44MCSJtTXmuAVrfP3TXpemni+aas1GW0kSNUVh8MV6gn0Qq7KFgVgGdmxGJrIObVMx3u52gRKICV3bSmem3zs/eaVwc6hubYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxkJiwaH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxkJiwaH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E136CC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787163633;
	bh=KzR5uH+p735Cghco6UJDLhbHp+frZbV8lGnH4JRbmZ8=;
	h=To:Subject:From:Date:From;
	b=lxkJiwaHaJonr5ag6o6zr4/KWbIcLMksbzdwUhyU7oBrhznDA2krSjHDyc2kWW0kf
	 t8qhchBWiLnsUF0CUF8sC75BMY/MeEt/a+3DYleOvr8Z9hHTK72dMzAoZxwA9dXyXi
	 NL/OoB/FqFqRM44QKGpkYguVs02pKGu8Eih5NhnRZo+uhBdjKNcLzVdK4X7rNcMIpI
	 Xjwkx1/Uo/EHoIR8D6uf4f4PaZljbV9NUFeyfFWxkcqrdts4rGsRis6TNTS1JwZ6ah
	 tmECTn/gmUCiAiAWT22rdwM4J6pqK4kAqBDUlddpGbmrXT5A9USw/j2fBDVryhlRCd
	 vU2C95KBT715A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B99F8C5DF85
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178716363371.25054.4512151576449907266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1027bc5d5212902c2802c80b310204db00a4f24795b875180b32afc9506b7c46
Date: Wed, 19 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787163633
