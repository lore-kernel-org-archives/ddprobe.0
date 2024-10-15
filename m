Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B1821E3D2
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729030554; cv=none; b=qdGxVK66EvVk1CPcJNyJWzzNbHgY1YpMm7mMOFP7sXoF32eJWVDQVSl06isiWrc/fdp0PuPsEKQLFHCYcN22o3JiaoJUjWBQTikiVkm2SvZ5WOHqLW0DJF3LS9rHdjrG7NFcKGiFOdnhDUyj13Anng7fSjfyOevGnDr1s2qom7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729030554; c=relaxed/simple;
	bh=QLzDHyqkZy02ndLSXQqSb6pJxlKur0RJ2nMAm0xK3gA=;
	h=To:Subject:From:Message-Id:Date; b=FFKnpnIdBYNLupK2KIsq5ctbshhn5h9o5pnBKl/m6kq+jaQxQZWQo8V8qI7HWAte+eZILrHZ7MgByTynKFhSVfwch9NJjfDyLETr3IpvEXv57rj+50i/cLCA9+f2Q5WeokFKCWe9bCJTgGc1lvOKqNhtd6wfz2iCdph8nHC+7Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xv15T+47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xv15T+47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C6AC4CECE
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729030553;
	bh=QLzDHyqkZy02ndLSXQqSb6pJxlKur0RJ2nMAm0xK3gA=;
	h=To:Subject:From:Date:From;
	b=Xv15T+47C6pYZyBhySkl2q8dHKLENB5s0X+42zaNbb6tHjE9BvvZOG42LmVoXDNfy
	 qLRT7Sw1EBtiOY7ckmVP1X4CJZkIk0SZAnqsmly9NXoHaAca1cJQtkubiaDrKqmke0
	 nwtW2pdjigDFL2X46n0KGQ2B3AOn2U266WoYEKE7lTbiQu+td9ZBaDHjf892v1PQfL
	 WDTBjwZbTpNFhsnFoaqhmdw2qu4Iyc8TiCacEeyM6l9R3LXDVhy/+wwFL2cYwIOCpI
	 JAY6AvC6dSHe5MLxb9iTNWNnBsf68XFlacgoIXU2EY9Lrvynh/F1EdiVVKS9Ylnx4W
	 +EFadqzQRjP9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93286D20680
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172903055358.28402.5108603435926531658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 374e5490c243094e74c1c381f0fef5b17c14922615dc2ebacee89013a13c2822
Date: Tue, 15 Oct 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729030553
