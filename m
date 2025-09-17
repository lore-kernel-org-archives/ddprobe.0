Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2464ADDA9
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758080994; cv=none; b=cd5ILKdcOOcX/WTGOPlNPglpwN8CekFVQHuwqRFd2BPoIsg6CsnP9XicZ2vEZdxNEIhJLKMLcqBDgJ7Q2+s4G40quaxZK1/09Q4OC061XhqlkX4qsfOnBTCgMZs2AChJdqdZlbIJRNxor84xR5yxOl8wRX2JFRFj5d986bcFrq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758080994; c=relaxed/simple;
	bh=e6Bx9eODXZ2tY3kFJEVeuGonm7YsCOT5Vqn3REAf010=;
	h=To:Subject:From:Message-Id:Date; b=feC28SKDKilyibpe7JeLtzsdjHzWwt3PMvqVv0K2MLOOd1KFKoTQsVnoVCVTvvPr8DxVOJF+kBm/sdIBIXEY1/9vBrt1Vnp6okKRhLPRzHqfK8tmJify/k4Gjr9FVilLTTOjfdyX42gfnryAf0uEzXU7FPcPene6gkZtLvyqNiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/O+5rHP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/O+5rHP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A814EC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758080993;
	bh=e6Bx9eODXZ2tY3kFJEVeuGonm7YsCOT5Vqn3REAf010=;
	h=To:Subject:From:Date:From;
	b=n/O+5rHPt2NlOClWNfKP2cNCs87ulOklozIH1PZGFHwxXdFDXz2QLE4gBFBFlTKbJ
	 XlW/YZ/w9L4R49/OY2mJI84uLjtwgW+RNL8DxGoivNErtiuMHXuMYy9hZTJ75fy7wC
	 qHzp11PFlr9tyvPYC1iLyAzHZanVakOgxDYNVjI2cqhSja1L5v50P/dKU/yMztfGAr
	 ZDYvT6y3SIxK1mBMfQsJk6Zjuuo5HSkhIoX7zSNIkptcNOLII4fIjHVOl7ep/4SOYg
	 7kpt3c1925papraS5+hjaqPDz1+fAfYPNB5t++C2Yf8metWPVg/ZJbd6/3ltu1ywUY
	 Jg658b+hbnyJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94443CA0EE8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175808099358.24030.3350129551568470474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fe04fcf7deeb4cced16122874360bdc655bf0e76065137c4656166c1df56a14
Date: Wed, 17 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758080993
