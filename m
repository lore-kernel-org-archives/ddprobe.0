Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B57645D919
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788996634; cv=none; b=NTh3XPI+IsWgAWLiLYK9qxyj/hOOelggC5D1gbV6NSEdTh/qNfQjZt85dOGzzs2da8UokcHy3iyZd20uUsFbN6xY9kghh6atVaoKMf1VSRykIp6hFzWMexhHF9l9BZEUXZ3X/0+zm9EBAwmNWfZfzPoeqCU7iG1Lj/JoXXGEhp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788996634; c=relaxed/simple;
	bh=eLmZ1Yh5NGZLEbVoMR0rtt3oZbMtnyxa07DJErLjdkw=;
	h=To:Subject:From:Message-Id:Date; b=b1ZJh9Kb5XnByP4+shiLAFAVw5d9esmEtEa9AFLt8cCaPFCKnGkQqBqtZE+7JS6lKU20VCprOzgdvv4wTBShZCPVJEgg9WhoLapQJVvX8431KMGBlX0U7u/W51QSnE7QhRId38sxmza2SlfekmQrN8bSqiEIoLQ/K9vlAUiUvXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TewD76yi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TewD76yi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9D0CC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788996633;
	bh=eLmZ1Yh5NGZLEbVoMR0rtt3oZbMtnyxa07DJErLjdkw=;
	h=To:Subject:From:Date:From;
	b=TewD76yiV3DqvgCYRQYDYHW/VKzSL1e51cXcSN3dmxSKPJnAMgD0CTkg2IAMXW9f0
	 /H6c82U2OklgrRXm9YbHlwyNMkSR/tGx8yaFN+x2EM5N2eR/VZDEld8DVmh4nZDUEz
	 K6v+C4l5zp9dxDJ1/KgpKaz035C2ZM2NCVKRJNXl9p9tMlVaEKcH8TAqWHdbzb7Bgk
	 aZfbz63LOXZTKhi4CBmVV1FtPUwjCpu2ISj1bkm+vEyCAksoFwZdZcHedKs32FobtY
	 0qMTsEONA3KAN6qfF4rVBPt2a5AQ1U3r03WTEv8VHaEprUsdMMCDeHKBAHuQIG1H2v
	 AxGl9T8mLCcdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0328C79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178899663374.13012.3734507998181156857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0261c720786c142f86bf1ca6201008588d462458b01038757284410cb7104b97
Date: Wed, 09 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788996633
