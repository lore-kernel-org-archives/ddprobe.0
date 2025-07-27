Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D32086338
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753598994; cv=none; b=QIzYH7tzsEIRnZ6bv1w0ZXwIxwxWLuFHXkHYWAdu2OleWDHeeD/tzUp3Wvpc1jWacHmiwDSfQSGG0D9naTmKq+4o0qxxt9HeA7/Ue1b5Iov/m1iZE0iuTcp15KTX9lw2ugqESykgbX8USEQdkUKm/MWeGkYFsw6eaFVIwU/DEd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753598994; c=relaxed/simple;
	bh=sZCdFbHMofgvTkV46T+oKprfxVTUBTT30ckIqflt59o=;
	h=To:Subject:From:Message-Id:Date; b=u7mUzpLQZtw2qdwQJAJP/4xxBUcpvFIl7ViSxVVZ0ipYH5Sy5fOyFSiA0Q35uBBapi+tpUE/XWWgy6ILVz02wLOSwWGB6n1aF1Mri3mDNoDIJVe1XfYhz88orfLi5Ig0g1NtW3w7vhKWvZT7OaR35nLpLLCXlIRGC/MxVgeYANA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=maZgm1ea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="maZgm1ea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB53C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753598993;
	bh=sZCdFbHMofgvTkV46T+oKprfxVTUBTT30ckIqflt59o=;
	h=To:Subject:From:Date:From;
	b=maZgm1eafVfpS3CecDhDK5czJMgoPp7CSKwUZyINJOeb2LXHz5c/0I1U5P14GssKG
	 f3Uc+uN7xlhs4EcR1dGnhPqyV5VIhi0OSRsI4ZExOFAfM8TGtY0GCxmbD0eYn7tUSq
	 ZZu4G7M+8jrP2fRKkGhG3hAPZm/pCFehOyxy3SKy8CKoJl40LGoB3PINbhwfSNZSYv
	 FQ1j3aDBfRYOW60CWiDdhphNZeZ9Urx1ixJ45eOO50MDvMUpE/bz3cbhVG4uevx4iE
	 on8id99j5gpkzuix2wbwMSOuszpfJ63mSV/W3aP6gXiaX4xPfZoE7qPeI069WyT0Lq
	 o7dovbo7/IhKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9013EC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175359899358.22268.9447906653632662562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f5a74295354633d4a1eb424d94835ea3f68e79756227da5efa6666776d9796c
Date: Sun, 27 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753598993
