Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C2A81724
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760837994; cv=none; b=ASYnwOU1jzfpIs/oK6XIF7nP6JlrSdmYVjyr4TtnhMHwu1QIDrkJaGTBXaso9DMxmgYEgcYIMGOn64sWj3IxxkbikQuFLOdQIulHuZDKld1phRVccqXIrUVkGc7W5aIlYfjRZUJm0r8e6YxU504fwoN+o9PKweJEWmFKxifGHAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760837994; c=relaxed/simple;
	bh=HfunYg5b8eVFqkBQx2TfZNItolb45O3oDPJjEpS7CSk=;
	h=To:Subject:From:Message-Id:Date; b=VXqpWvCO4PddLRW0QC68ueSY3DPeA1x3Q4Yke8npGRXpyBwd2tvEN3rKZxEAQCnjA79KsKjXSb4E5itWCH3LxP91u11foutQBN6EQloP4Afa9ikQNBcRhsWgiHRIgz12QxazToNceZspGhoRHbKGqREGT8AoA2zDLxOR653j6kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCGPlVmu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCGPlVmu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A633CC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760837993;
	bh=HfunYg5b8eVFqkBQx2TfZNItolb45O3oDPJjEpS7CSk=;
	h=To:Subject:From:Date:From;
	b=DCGPlVmuNQKqRyw+3fWMv19vW2VnEC4ySblB9CObCP7aUtnEagMyqDzGqTrmDEIb1
	 iI3FFBi9bCVfWbn8TcIDb3/apcaVElZvZfUtIeKI97jBGMXe/Na7sMN1cg83X7a2uO
	 JCm80Qm08qXj79UqF4PkNWKBtpxUHLGm54uX4PmYFjuGhMa7Xu6QP0p6lC3RefGJxR
	 nE2JgTMapX8WnPIttalq4ABHDElCRqd1wfJHVrXKTLeRd5ctICvrb8A/HUsNA293sF
	 DnasMJm2dfUHMDVi8taqfs4OnXFXql/zD7msxyE6n//tE2a0uOnMJVDCK3PV4RY8Uv
	 RYMI4+Flb9dBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94375CCD193
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176083799357.16099.15139399180622695580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19f73bb6efc6415f038b60a0f7fe6420584c26ad0498ecefb9ea3d55ab0a9a00
Date: Sun, 19 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760837993
