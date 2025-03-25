Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F9A1E1E05
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742933994; cv=none; b=MOlQ97ZXkiAmqL0rbDQ67qJhXKEmVRsKMuu7wxqTyRYSE24AMu9Gv0qitSMsVjiuFXqfbLtpb/0TfgFApyo8hmNY0xmTkspJWihC6wTL/y7jIqmm2j1vboq01yYMzgFLR2QRhOVQkgTEbHhkriubqBiUzFqRxHT3pFIR5ofks3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742933994; c=relaxed/simple;
	bh=HUcbArdCecTdhMZMVgwmcAwzA06tGdiZe99LSsKtbFA=;
	h=To:Subject:From:Message-Id:Date; b=cNWIt7zy3Y4VwbqQ4iyjGp+YPbzsWNMqP1snZy4RToN0/CvFymKMfzQfgt6Z34Rx48tvmkjQ0J9A+/0jhrQsUmBlFSnRWLrZFzaZw3mFRiDQqL+WEOrUx/SnLCP4I8xPbaYaby9U2329aKjdqRQ5umPYvfbVYXj3d5X8hUantxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkCLHWrh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkCLHWrh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA63C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742933993;
	bh=HUcbArdCecTdhMZMVgwmcAwzA06tGdiZe99LSsKtbFA=;
	h=To:Subject:From:Date:From;
	b=QkCLHWrh7kEexzCCO3hCMVcs49aBfiWMcCbJsVxPRLkovBDjenI3uWPQBqtg9TR09
	 L4iDYFRYbXSOv8d4FtYkZtIn3z3lMnpkASWNwH58dA4Id1guhaqFwQJegpvT4XCt3Y
	 cpBGIfxEFCdF6udeL4oAgaASw2m35/5FATv1uOAhVdj5ZPMKSM1Tv7jLoz3Fgn/F7a
	 QQBKhHLAdXHWjNKbi0GxTjM3UnHwPqHJdDA3Q+XgpbQSbtMh+mhrSgFH4WZOs9S0ut
	 PM68iezQi7mf18PwTHUEpJqk6pt0BrS9c5Ou7SJAzQtRxLRolPtl2A5j53u82+QwQ0
	 EIFerAzqgXFkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2BF3C36008
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174293399364.2311.13493164859801989828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d4c51210142421244725c60cdd32978cd96045d6110f50715a8fb48388aa283
Date: Tue, 25 Mar 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742933993
