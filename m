Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA1C1EFFB7
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 04:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764303774; cv=none; b=pzHh9ADsvHiOrknQ7BTarBORAQfNTUftTsELFJViquMKpHUQFLdq01bnbS357CsUbsLY8t5sxpcDJZ+fsItvslhBSAGQ/uwcQSE14FmKIlgcScsQULDppreO8yR2rINt9xG/+bt50kVPSa/oL853IgEkfLInC/qH4endOut5UEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764303774; c=relaxed/simple;
	bh=1f2I2zQj87yVmGxiv4Y2/8GsjGFpHKYMk6D5Eiil4P8=;
	h=To:Subject:From:Message-Id:Date; b=FsiQZJaen9dWQyUItnfM04rVVzVFuoSGpu9jjy/UQ32uNWTc0QuGCeKWK7T668yQeDvLBUzudJa6uBaMbX2tPlkQQ4szZVFSixPVaMhmIsf1Xt1R4YEXGpo7Y5EL2l39kLqGxLL5MtwqEZEXJYU7Na5Aac5GxLfB3aqjvB+OKAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RaOCc8cX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RaOCc8cX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC06C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 04:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764303773;
	bh=1f2I2zQj87yVmGxiv4Y2/8GsjGFpHKYMk6D5Eiil4P8=;
	h=To:Subject:From:Date:From;
	b=RaOCc8cXhhKLYlYtkF+nLBandJijqUj05xFNwKxWJCzmm35BhDbSch7LAQgnT0m2M
	 2IyQ5eynQxIBFrDXny1iFmHCeeSC0glshYz2WW58jw9SM/Gn1bdx4I3dQyRodtAvur
	 kaDAJPT4zaxV+blk4+pJ2LSuXI10tuRfX53xiTy2I14aABo9bkKorraMITwhLEEQcS
	 Z167+qBR/L3WCy6Lz1VInZOGAFj1BKCeMQGE11dwFCeFGrRDnFYSc62ZPvn2Tde7y0
	 FOsQS7+5aPsP3WfUnA2ZZmRkIHjCsbqCbxmieAnJOGL1612RvlJKxFkk9+CUqZ+S4I
	 YhKhsKmvC9VrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C4BCFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 04:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176430377365.28675.198672273170689979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a18da4bda6aa2b768939fa483d8cd3a71703285c05d81bee7b4d176f43578c1
Date: Fri, 28 Nov 2025 04:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764303773
