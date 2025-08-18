Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19ADA30DD36
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755508194; cv=none; b=LZ1CHk6n2cFCFFbAEfEBZY18DUJJfKxFbOwn5ymHmJ92ADnIaP1U6n3P7C5M+RoyGWEr8V+RmwnFH3yYSLYDrBNxXboIbLyIk+VgvC55dfLGyXbLXe4n4cb5f/pAFf+CS1pV7AS5nq3b0n/7IM+LyXXvhNNDb9g7tRdP63nUiIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755508194; c=relaxed/simple;
	bh=VP7cFQAwbr3m6gbMQSjq03dqqXZtVNXYKaXr/CUkBUg=;
	h=To:Subject:From:Message-Id:Date; b=MbiSXj8mKMG5Cqdp15B9YxutnG4pQclvC/WFG1NjQRjYzXTlluMBpbxqyZsXLTr2TYKFkrccmCNT7vjGcteMOFK6xOTw1+8yPOtW3pTqcn1jr+1T7HDaps0N0mafeXTy9HDwhjmUYAbYcSVUN4lMkFgApDWA3GoghPnqsGbrXQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Li1LZJiM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Li1LZJiM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59AFC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755508193;
	bh=VP7cFQAwbr3m6gbMQSjq03dqqXZtVNXYKaXr/CUkBUg=;
	h=To:Subject:From:Date:From;
	b=Li1LZJiMHDd8Ix5RoRBtdSmQPlnIxNqPuy7vbEWAhXd8UUF5vIMfk2KIzSKZibGj5
	 JaE5bd8Vp1Zcr+i3j5bGNhTdxENEjDRj9fU88pxS0/AfL+b96/BHt5rQPiGakr8jye
	 0VmuN44TPZV8yuf2MKDodYJQYEHgVu3/80YY+2hE8b7Z6BIS0e9gdq7mfBCDqybwWC
	 wVViQgQXEn/jf1b0ebBZy+nY8AGdL3Vw3O3zgLl4SczMsq2xj4gMkAWdUMvYCEBBxt
	 BWRzhrluTvm3fIPVgXRvJJSwN3u5pSUi52u0cosiqcF0HJbYxT99mRb5nbYsrInlaX
	 NWRMncJPyebmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9605ACA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175550819358.18813.11030153692424122590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 194ab8d5eb2ef4151a9a93a45bb0e99fe466d5592b8823e36a339c6b04a485d4
Date: Mon, 18 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755508193
