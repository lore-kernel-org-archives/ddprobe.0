Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B9D2EB849
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761206994; cv=none; b=TTcvglHcGp3u1iVWnIUi25o05AcF6xA6xdgxrYPbf4gdeYwddTmuftEwdItQEaf2/kRKMVHCiooRjNuUjD91FTW7CDS5l/gKQyFYE/AdnANllDu5bupLJttAGjd4VTwHN4FFtqxQnDoYDWIoci3B0Nn5CVVdO4rC7UKAkMrDI6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761206994; c=relaxed/simple;
	bh=sPnIopzO4ZbmqDUey1QOWdtqdkkVp1LCBntZWtbTziM=;
	h=To:Subject:From:Message-Id:Date; b=exC/MhOXZUuLQ8PsHty2LabtFpAy5ThAhQ2Yy+QeN+TXL2wuDr87FUCWBYWeLCfjzaLt9dHMmHBigo6mvGEuyuqMWisKM0WKfiBai24EoPfq/VxI60HHOdxcoV0+lCLGUMbCK570rfVj5CtyGfUisSJ1AUuF/OLJfWCr62qq+eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GmpniWKJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GmpniWKJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C9EC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761206993;
	bh=sPnIopzO4ZbmqDUey1QOWdtqdkkVp1LCBntZWtbTziM=;
	h=To:Subject:From:Date:From;
	b=GmpniWKJPuPEScKyH8t0wpm3egXMm6imkWrnBRReqhaWISfQl2RGhEiALfck8cQiP
	 BgE0veJfGKDYiRUCZ7C+uhwTmp8qRpMnAwVzEhgi9lnfUeNqBMi5QM9erbOJMPJv6H
	 dZrqRCIuzJiQJ7KfXx8iGt54Ng82wIS0w9H8Fq5GBL1YQyxnQ5gjCTAMSF0+JMWHc8
	 MbI0OqLWaq+Sha8kcnDne4vW54m7CNo6XrY6mjcByXPHgV+HGdoXf3cliKakyyrSjq
	 nZnU4+bLIMMydbig/+0vnXVdG2Zqz6Nju/1D9CtVo3FP9YMU93t4qfMFV8mGIepgsT
	 1cR9hWB7ey1Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E48CCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176120699358.2106.17365297146430124611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17a01b84d2b97979462b10839be085f4143249d9b7a16ad458c466081b6403b2
Date: Thu, 23 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761206993
