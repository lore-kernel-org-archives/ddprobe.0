Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF5372617
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766280234; cv=none; b=QnFLMLRbTPetuAtu7F+wwpqTpdHKZGmdyJvsbFdYhagk62nv29keoJmWEjUgnjVKjOmMwm7cZw/2RsDdPgr/hsWVK4GJMA1GbvwXTWBf3Dua4A3CNaGYY6J6eqSLB8qGiIPHrnCkiaQeVAshNjjQZS5i7GSYa6IjwsMx/3SqKnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766280234; c=relaxed/simple;
	bh=U1beoIqBXZbdAtcTfbxpz+bWHiSPBc6qxn2tVq30OoI=;
	h=To:Subject:From:Message-Id:Date; b=hLRKqv93yqvlAwQC7ksOTY6FKEaFrFhR5uTjoKOomabDTrGozGegOhlsiM8uAwHto6jHECuM+DDwsqxyE7oayiFlGRGvVHPd2yBNN2VJlX1YftL6Lh2QszJrBYi1At4sxcR4S3zL0vFI3kF0kpqcvb+y9cCWZCvB7PoJazocg4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBNhunjf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBNhunjf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A370EC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766280233;
	bh=U1beoIqBXZbdAtcTfbxpz+bWHiSPBc6qxn2tVq30OoI=;
	h=To:Subject:From:Date:From;
	b=lBNhunjfpTM5OrfsHhz9My1Hv+lgJ1GA9+LMOBFvVo3/oE0GbGZBSeOH+HttnLyDU
	 k45A0orpRAX0J9PFL7k1Mq8ZS2M+6Q3ETrgKrFKf4jCx4naBNonuxRlajb7nLs34RV
	 FB34nYMQwzrD1n696scdnM/IKCv9FjBOgWwvvgB1VuaROaDIv6ITs0LV65+5c2mexp
	 o3GwhRtBOMNjFsFPPBtAaAdc5t4Fuw6MxUKwhOmVOJOCKLgGuym/Lvsf4dtaB9C2NM
	 BcPdBX716G36ucSaqkP1j726cOLJzjcoQ6wKGUjhXQbUgVKelcpFX9w8BOi3aDNWqd
	 BiHPcSiErHwPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96902E67496
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176628023358.7601.3819700481879958312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67458f46b774df91f0dbad6294be05c0b5295d3025c206530fb3baf11093f86a
Date: Sun, 21 Dec 2025 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766280233
