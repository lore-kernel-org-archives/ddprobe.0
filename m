Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE631226863
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758667794; cv=none; b=Su1BqubpDPJ6atniQD4+HWpDMYFGfZFCB1A8icd0+vp7+5QN/j566ePsWW7iDcMYvJ0Ay++Rk0JznbeG2ZKzQ5kKf90csomHypIMXtrgxGaZVrFx7xUei+G5NXiXYj5B+GrJpmKaF2W0K/BG3bYITSg+6sVHpeSP/tIfoIT9cnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758667794; c=relaxed/simple;
	bh=UvV1ae+PIOBkCVjrj8DAc5k2U01jlgzu2qtMrMm1nhQ=;
	h=To:Subject:From:Message-Id:Date; b=cpb4eMeGRkPCbppq18d2jWd543AU6JZjzUDKjvT3ajCdnNt70i1HgVY5msu1UMm5UJd41LtSwDU+DcJWlGbKgwzTJ5KoK5CtBVsJfL7IBoXmzV/XPEk6g9iyzNIy4/cOGTVnVU2tgSCwpBv0fGX9D3vssb8l2JNU6TEN3rQCqKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDtfR+6u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDtfR+6u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F01FC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758667793;
	bh=UvV1ae+PIOBkCVjrj8DAc5k2U01jlgzu2qtMrMm1nhQ=;
	h=To:Subject:From:Date:From;
	b=SDtfR+6uRUNB5qDQXc7PAyLOK3pw9vzad6xX5Md05hgQxyXeXxZBDLr3rF2ZAaCur
	 Q5KF0RRk6N9DstliKeRpbC+5TWNsi/Ib+k8zfbSRipbWpBMQg971PZtlcFky/9wTFr
	 xoq2vZbZftg8Xy79VRbjb5ExgtU7hfMmck897+R47Fh5G/p+hLiiBn+But/AUy3QdF
	 p91MbZvY/1m4HltY8gghVR3KEnn6tTUfUGdGBo8r2Cu16Ks9pe6gSnRIO3Di6y8gui
	 BlcXnNOBsRk36YLu80eR6P9CB2bYHthEPbMPUTrKIWM3PKJkOCVTQeN5kLwt5dO3+r
	 w7qb7pgFR/5rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF14CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175866779358.1710.1714591084261404267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44ed9bd48bb7e90d5211611a78d3dfedbad17a4250a6006dbd535813f05a7bc1
Date: Tue, 23 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758667793
