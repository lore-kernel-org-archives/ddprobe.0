Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7BF146A66
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787991634; cv=none; b=IkVm98sjPChbKVEVTWXJ3muw28rt9MPBFyrVCSvnUruakZKeFlmzNzqJVceKry1vZq05ipggASUwQitoDT4T5REjrEUcx5TlB1d3BbTFoiT8WyUupZJFReuT1D2oT90quin1wxAM0csIgptWi+zD5EGbdA6E5twYDgtAO5HMmWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787991634; c=relaxed/simple;
	bh=f3SYbN8MfI1cdx+Gp+LBRYr/paFWkajqjOOQx0nKMMk=;
	h=To:Subject:From:Message-Id:Date; b=XxUNRyeUS6jczgQBUX6ciIP6+7og5WwggM/CMPItGyrUOnMKv9hfdPysGlOsvop7NTiux6OUc14uPljjNcZAv+4je+6wsTRPbU0Og8qnuLTus1A01z1kelh8tTenFiJL25bcTpQuOrUfGcmmZ2/0DZMGYI4PK5ELpR6x18fOKj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=faHJFDuJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="faHJFDuJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE217C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787991633;
	bh=f3SYbN8MfI1cdx+Gp+LBRYr/paFWkajqjOOQx0nKMMk=;
	h=To:Subject:From:Date:From;
	b=faHJFDuJKaACG4625x9JFy/ck5Bv8JQP2Qw13ZBfB3AH8z4aAU4YU0ECDHJfOhRMX
	 AFM4TZvEPPlgYqvgSIT1C4vK/irsEbcQ8R6Eu6SkNGlVVr5rTMN4nVXl///JZhQ02p
	 pD84lT32NxsUtxor2Yu2nq+VlFXHnTOeWweFCvJMlpmoAfAXQ9VgH8AkZv6OVKIxPv
	 hE6rL3Mm/5TlfgsjK3LzsNoGhMR1NxVnUNONhQ0GwzAp3QGw68nR+qWvnJWBMGoSN0
	 pJ60nIUAQwLvdFaiZlz2xCIitoZWadYJNEIqsuSBDDODqe1RHlO0/12n+DuBOLZ/BK
	 /w9WDoR6EDYUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA349C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178799163368.27427.7273925656880114999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 007253665124e19371b4d9c89e6514dba9c7b8b46e6bac52ce3a28fea4b2f8bd
Date: Sat, 29 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787991633
