Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C856E614
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 09:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716888263; cv=none; b=fTTiPuNsQOKhWH7bRwQXGEBsSdgx2UkOdzt1Jml6NkQSTAS87SVJZuhna12h3xBMwrEsFq3qI1zop9wmh5PJR9eTNj7AdFGzNBtlkzcO7mnD6roTUOv2Uqnqzxqz5bIqmir2zYCyZZ5LChH2mE+wa3IFPA21Mm1TXWqBst+ztKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716888263; c=relaxed/simple;
	bh=PFGp0k3SbmOeTgG4+rWhgjJcbh7A2CeOBLYAbfiGChM=;
	h=To:Subject:From:Message-Id:Date; b=hE5Qc8lUMIDOUzOSi3F9aT3+cNo9XnFvPmXBtskYVTPMAcrRU022beaKRUgQ8q3PYfqsIVlzWNryivL2mAZb3RVcSUxDImGJ3IbE01G/WHWpYrtebp5XyrLVJYBTTLSkO6ax6S+vSM/7CPf4KAfLaLWOemCYUQcudAqF8LjapPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLrwTtqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLrwTtqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D2CC32782
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 09:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716888262;
	bh=PFGp0k3SbmOeTgG4+rWhgjJcbh7A2CeOBLYAbfiGChM=;
	h=To:Subject:From:Date:From;
	b=tLrwTtqWeF5GKvEJNffNcT0YSLVYPI6FzslQ3NGS3Kn6BRK55FCY+jL81XGsQuRN7
	 nnbDqb1o7CzLDvDYvdZ/Esr88rGXJrOCRSoWPOu87w2tIYJswK9o2AccxmXUdjcoYP
	 KZliSVZLY0Qnd2kqPX2HNNmuwQ+M9p/DY+8DSiyoM1fZXWFGeLd4PoaH+8Sp1e9c+9
	 UeImIMd7Z2Xz61ozonnQjZl3xuf+k22n3NFx/K1q3eM3m3qNzLW1ub9kpxug3e+G+M
	 GSIkQTAsDEybTiUM5be7UrZtVa2jNP11IHAUeQL+Dx5FxOsNDGOjohfDMIsTEt42PB
	 mPrIblPEh5Y6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A95C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 09:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171688826276.7319.18053828647486026416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b62b71741a8db0f09a238b88fe7f7a8ef3d0eb1763b39397062472820b06adc
Date: Tue, 28 May 2024 09:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716888262
