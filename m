Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053BF1E834B
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761859794; cv=none; b=G8jwNJK+Fnu2ZOPsFtZUnGHV2mKfBEDx3I8uRGLA33UCCCxT7cE3if8tVJ47jV/YToSoX9PbESPhnXujag1l1/89Tp1WV3QpbxPlG9DBJqZIVjdVa982/O/UAqxN8w48INAxkC1rnGzbBcGtmzK65TPNleoGS3HeXcwpe+WwGeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761859794; c=relaxed/simple;
	bh=lvFBARuOaqiZFHgfrYPFQUD7ycsBfyLPWjF09fndnLs=;
	h=To:Subject:From:Message-Id:Date; b=ckhDztWg+wubZLdgQIOyI+InWPiEMR2a1CAFxOkx6ESYtvbIojMFyMLdyLzxuQB0w+wLTVESZYvpoYdW5jAXvwJ2HzAxMG9lqkJK56Hf6HH4G1fg1ODZ3LkgVQprxfa5LfDLCSo5GRZhFjy+zUVth8hKya6GGTOalhATDB75w4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUiweolM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUiweolM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B9DC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761859793;
	bh=lvFBARuOaqiZFHgfrYPFQUD7ycsBfyLPWjF09fndnLs=;
	h=To:Subject:From:Date:From;
	b=pUiweolMKVRT4BsauG/eTv3R2aUzDQ/VA4yZ8KouRpoiF8tBroYnnoinay9Z461gs
	 Np7cj9J3+mYu1ieGhzmsGXHi9MnbA9zzog1jcc67WlAs1EoZqsRBR5mzvOupLeOjjI
	 LAequ6N49RXy7DnKBpTk5wTMYzbJ7Trvk6Jk2Xpkm+k1SPCJPjygmuz2HrFPscBF79
	 L3JdR8mNoM2WIgmFk4KW3x8VhBjE7Ea3ihdXfbmxM7bKNHWPndbTfnt7kZsnNE8qXm
	 JjEdC8t4uv6oTlOCf/NuQJ5rpR242araCGf5cs+ZaPzITeADTTMaJjBVviShNEr/ZB
	 DQV5SHM7vGHrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9385FCCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176185979359.8772.7222263816056916383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 542381ab1a6a134173639e4fac43fc72d0dcfe2e5f57aab15ee152832b5394f9
Date: Thu, 30 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761859793
