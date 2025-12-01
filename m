Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CCD29BDA2
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 10:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764583974; cv=none; b=VP1hnKFwe0AXXBRPh+MA2nF70cQqm6Gh3WHUZjiflvEf9nFQ4D8fg3QLQyPQwg4d2Oj7rThHfQ9W3W81x8lreIGVVQEPBRjeL7kBYcAqcSgNOkXlQvPfMDNCP05dFNbq6+rnB/qvhKEM5ucgUkynTICdevcizKRHq9kauNhXRNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764583974; c=relaxed/simple;
	bh=BliU05u8aLgGKFsAwx7viT6yzQgqF2AkbgHZ4RXxJQE=;
	h=To:Subject:From:Message-Id:Date; b=mOSqUsIWGRJraVsW1/eYyr5nRtgDgmUXLJOW4mEkAdUKhTvpSiMvA/Hz1PEfa7SWMbj10DkZ6wZw+m9gHunDQurzwa0ljW3j2ktk/6ZbIu/dCRFvTvGrRnSekOIKF1HE2/7ZPtVAmEcx0QIn6rgx0AEdZdLcEpLQb2PJHPOVaeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGtY45uE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGtY45uE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95D7C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 10:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764583973;
	bh=BliU05u8aLgGKFsAwx7viT6yzQgqF2AkbgHZ4RXxJQE=;
	h=To:Subject:From:Date:From;
	b=WGtY45uEOrk6LiO2Rl1y1+TOvxfGuRcvphNZeQRdhJxLHnPWPtF2ekM3K6vlJjTju
	 s06BdJKUpCIK8rl0LjLXZwgdOa4IKbpNbnDqphNTbV4n+c84IcQjTvHYg0bWM+DcaB
	 IQRFGjJP7FECEUjub/b7Sace8OZBWFRqhJIMd5r8Ol2J8z61Ml71woOmz2lHx6czBP
	 u7LBv0O/jz1v/E6KGnBul1AKAsuEvrkiDNNtw2zFV+GcW5dr2Fzas1AH14R2UzxLd3
	 Z86G6dYWaYE6F/EbTZ9ORrXm7eyCDcaQASAZLEbaPtUuzCCxaEB6x3Azn0yaMV3pJw
	 rsOn59+3TLbzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F29FD116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 10:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176458397363.28190.16783564656854769095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cff8bbee005295e351517a082c23f9ca40d4e0b39144b0d4710465f1dc8144ca
Date: Mon, 01 Dec 2025 10:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764583973
