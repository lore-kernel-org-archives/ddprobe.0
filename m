Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3111019CC08
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727778954; cv=none; b=Kx5fZFPJHA24kzNrgGqjbv2NGnc+67lKaDy+is3jj6HunpKVCwj3ff4/aXz3mJdZZ1AemIWRnuNyv/058Ck4w42U6RKSlDYuVNagQOOr1iE3wVsqyi/GNhcJX839Npr76M5ueP4v9loXEtbPriAtvwHnrp/6nnH+w72jjJr3Hjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727778954; c=relaxed/simple;
	bh=HTNaMPeTV+0jfSv5dtBzIUIexWmN+pxogF4KFK/jGNw=;
	h=To:Subject:From:Message-Id:Date; b=budU32tW3IMo8u+D3Bx4M5J9/kDamKrgb14F8cGEHR4pbsthufGJyisk8tuKgI9ld+WD7Yv1xl44TgnNNk6zAWC07s9y944a38Jz4UL5WOs/pU8jsjgO5G5m4NZeQuLcN5mvmQ8CCB8kNmtlOrTKq1KaHGngEo9sr21vAjN9+II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DfbytSAP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DfbytSAP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89BDC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727778953;
	bh=HTNaMPeTV+0jfSv5dtBzIUIexWmN+pxogF4KFK/jGNw=;
	h=To:Subject:From:Date:From;
	b=DfbytSAP8kTqEqW6Ls6rElV8yFM98+yRBJE6vmxN9+WnE1adU94ljLcMzvGpvWqSp
	 p7aATM44W9jiGsv8Asupx0uN3KZy+2FhsnfUIu0GEuewgVZG5HYmoDnC99rvTwfLO4
	 ffOfOCONCtP5jiRDYGskQD0C/Ui5o/PcY4gHRmRMTQCpUCWxecJOXkLvBt3Y4ZfuoF
	 2p4m+hAdJn5ZAfToKWjdWSEYY+mg3dMTq4Xv/0vfIoAbuTFM832EACsbPcq2ifh2O4
	 yO6jYTzzc7invU5veaRBAIV2tcNh0YPt4/Nygpn15ZcN0UTmksbZJvf7BRZ4YJAxcC
	 VX2r3CuYTp8vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A401DCE7D0B
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172777895365.29354.7139940393966215714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a72b3e4312971f59773ba0bc79df47e86327849924e04f67e03c4e3dbd2c2868
Date: Tue, 01 Oct 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727778953
