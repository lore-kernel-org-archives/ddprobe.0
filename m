Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267F5271464
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776297454; cv=none; b=rHmBgBefwCocQXPXwBrtGoRGLGDL0utYL+9Bl5pr3xnVDaux3eRXctPCqEl/RePRXgyryydBlFeHq9opcT6oe9CBM0uuMQ4jWpcYFB4RjzUjVbh9dIvNv4FMhS6Dx/hgttzZMTKwfmzPXr1OoL25kp3sTSJ1jvnDOEG6djdqnK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776297454; c=relaxed/simple;
	bh=M0b3ReJs26yKKs7uTD0Fp/kxj/07/VVy4mF48UdaYgQ=;
	h=To:Subject:From:Message-Id:Date; b=Zm9NwK63u5SPV2a6Uu+OM1G+E/eheRLi/tZAlMcjWYhMcCrxy9csC8wNvQWwx5GXB+rNS/ouLwMT4Rq7qpCC/oMMmuerbOm+lfTgTeyUK0cOpbgVVcrcPbU9LCu0ND3kR3gcF4AmF1a1cAEH9KOUpf2Q06mjH0nSXacoWFeQpk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kc5BohvA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kc5BohvA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9954C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776297453;
	bh=M0b3ReJs26yKKs7uTD0Fp/kxj/07/VVy4mF48UdaYgQ=;
	h=To:Subject:From:Date:From;
	b=Kc5BohvAuOk0s70vJO/4tmCAq9SpTqES1FqGezTwJXjlqSz5klxEjFH6AalR+XMUl
	 OgJHYIxkKLpaI9R8fokavYpli2XOHTQvZWBWR153aUk9AMTLYwA73NcCXZafWhofjE
	 MijRgdromAfgtn7ET6snqlB5EPe6pdklpKzBsZB62I8ENBLcT3zwNPXTGlaZhWJj3B
	 BqWXvoiA4P54uIzFioN50jUdpLibVKEZs4Pe7CnhoWZ9SagfcfQ8oEqHRDu+fZE6IF
	 OLIsCLt+AvBLXquehSX94ZJVTwMizQ3Rjq/GDsSaVzG4ZiKVDNuj9ogjbmVlOw+8Hy
	 CxePR4dqR4kBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA00EF433CC
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177629745368.6522.6649700571423058084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67a3a8f12c945685c45fa5df74e65fdc4a2fe2008ea4116903a8e52e68fa40be
Date: Wed, 15 Apr 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776297453
