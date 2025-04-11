Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6A2D2989BD
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744372193; cv=none; b=MI7rBl0ilgZYO+sjnkR9nW6mn+Hq61LHu/MDtQTJm0KS103sOuw6qqA2YS6YrGkxOyNZaqc8vKIOvRvCYIAYXbmDs0Wd5gSfdc+QGoL/Fwo8cqQ6WDDjcCsjSuxQjdN6VslJR0UMwNSZcSNagloL4/5KVw++C5o9TQ2ZUWbHAGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744372193; c=relaxed/simple;
	bh=gE1ihr4ckecFW29CpVt2fc6Gh5H8f9uqsF2CNx/L3c8=;
	h=To:Subject:From:Message-Id:Date; b=lvVvFDLHV716qD6VS8K4cd+6rndeF1DAquPor14Ls29lMHpmQFv1R6LKzF7aMgfpVP8nP1HL3AAVihLUIWByQihyzawhlsbqKAlCvCAazVfSdvoTj4+PzzFMGQA3N1ahsoZqS1hkXffWp53Hj73OaQdYmCRCGrzUiXU7Pr5klL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfsxuWGb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfsxuWGb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9FDC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744372193;
	bh=gE1ihr4ckecFW29CpVt2fc6Gh5H8f9uqsF2CNx/L3c8=;
	h=To:Subject:From:Date:From;
	b=KfsxuWGbeL8/VNI0wmaoBxQVSyk/+5OO/+1Pu6Q5ysUdQaG6LBLYiuX2Zm3eWaclI
	 fjmQPBaR/NsOLKxdSq3Zqlq+k+7jIxAzyz5qCTmcAzTXBXNbn/ZKwneGPP8m3WbzcU
	 ijAVq2YW4zZweJV2Y7gx0fdFql00AfRjSxapyP0ic5nsRAh7cmix7Ye3c5O761oRMw
	 EoafEX8+7jgoJtwF8tzq2wSFZ5ccGKigm0jWlUlftJu0+rplQ+4F3A606EcZK12RB7
	 X1ncef9WiI8a3Coi7g0mGi7zR+Tn23wBtG5B4hOoPjvF0W4khevc05HnHqZA15ulal
	 eAbxWTEExC2wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990D0C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174437219361.1561.3156716612509194848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfeef47eefb67b9d93cc355def0979081ce28fb84a82dc7a1b9f208edf29dd91
Date: Fri, 11 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744372193
