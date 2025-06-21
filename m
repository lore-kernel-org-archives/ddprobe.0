Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331B42940B
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750469394; cv=none; b=NL+IY43VakyRI7A5tECmeIB2O6n699tcvM6n/ZY/CY3P/FcX5jm+rBqbtIFZ+nZCrNVfRmdrDdfnnCtGaEKyQtOnnXuzrru2YL0LnSFx5G8c/6CL+AxYqCGLBqtIoquPIYrYR3tbceO2uMXwF9knITFBNUjTub550xT6W7zEsX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750469394; c=relaxed/simple;
	bh=3TW24R49JQYvOml99v4qAWz6U++Xwj/c+PvzrMDeHEQ=;
	h=To:Subject:From:Message-Id:Date; b=ElwX0Umgwbm7wG6nA8QSeuk7lP9Pe79bOoyRftwKEoIJq4VkyOGCkOdzXxhkbwj8uwstrO8dSj21yh6mppErVf6UbNaEmcKsPuXz2oZAy5aVX/EeWlBwHZp1QD8TqMDnA27wrqA2Ad3mFX+4IZfmKhBPGApuL/pqbOaGpT+KdZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fxamc81Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fxamc81Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BF1C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750469393;
	bh=3TW24R49JQYvOml99v4qAWz6U++Xwj/c+PvzrMDeHEQ=;
	h=To:Subject:From:Date:From;
	b=Fxamc81YRYxBIutNq1fVh7Rr4PVmJbXuFpATHHwL2wqGMi6g1bWSeGRZNpmAzCRzu
	 47Qx81yLZr5lJDb9K4olbFPM8gF4/tqEbjJDrRKDqzik//ePW+11XM5u6+5MvN1CVO
	 FbRSQ3kaV/PHL9n3eex96+HZD6zlRlwt/jTXRyVtmfonnYJcI4ck86G1IrbI02+usr
	 0B8TqGfA4eCPrvzXR9BR3ozT92nEeDEOsbPd77z9hM0v4Tk53XB123Uy65lDYexnya
	 GsQuVOsq4F05kDWq7+rFOfLUQTSIgpoS3wz9qOcIwwQaR0cwQNO0rKglPaPOn9CQ5S
	 FULmB60phJRFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D82C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175046939358.2097.4101719148652599254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35632026815f7ce4883aeb52c2f5660e98b1dd9738cbaa6008bbb42367a01ed8
Date: Sat, 21 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750469393
