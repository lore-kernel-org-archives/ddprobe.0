Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630804AEF0
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 21:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717191263; cv=none; b=maaVDkQ4e1Anyl/dS9XbPX1Q8Lkh6dEpHUViQMCDre8Pk/k8f0b4l5ObKnCjbtMlGz/bCOm2r5kaEkiz2asbv1MyuPE0JZPVNGEL1N6syl+F5Uz6US5kO+ReLpMiN1qSmXJTOXowKWt/aCV3dybDTDjKBMfAwidP9JSLOPBhObw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717191263; c=relaxed/simple;
	bh=E7kiw1P+JuvDOWrXfp579Te28tnWm/ePHljCClEf9gM=;
	h=To:Subject:From:Message-Id:Date; b=eh80l6yIFO2+OK6/WcSfSz0YXt1YlRjJYIAbN1xX5tyho1N1F/bxxPKRp4ViVxIplE+nn671cC2lp5/PNpk3PXwYQ8wwo3U1D7CyrNknJwps87sLpTRuhLLe4v9FNnjf/3RTo2tkVG7e0QdQiSWpDx2o8/QhFp4l0YiwnJn58IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmferSEy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmferSEy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB823C32786
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 21:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717191263;
	bh=E7kiw1P+JuvDOWrXfp579Te28tnWm/ePHljCClEf9gM=;
	h=To:Subject:From:Date:From;
	b=rmferSEySFfA/zu3CDgUE4f0/IqZGDRsbV3DpX3Lrr4kAm59DOsb1Pn4KicGHIH5W
	 RgW+UoqV5lvVqNsYsYQ9910F2al2vsgNGAfqtpnxRwbTQTssetpZJj4FKKBxHRu1dX
	 RXoXV90DjV0DM+s1RGTtPEAwrx9h4xmw5LP80Elw9A7lu8JUHKc/aLs1t3Hnb83C0p
	 kBFiwsw8eesBRZRsHNrS3C+0MixTYNbR6fQIJQ1B8aaASuuM7drzQ3IrwgY47/J0cu
	 Qj/zhXXL2NUEdQtXVLyxhw8YhpMOFLPT7lG8JI2PAjXu71gFXxQv7F9QmieFRDUnMH
	 jdmdUV8h6nX7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA804C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 21:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171719126282.22317.12161368299128304670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ebc8d6d7f8a8e31e78320f17afd64005d6a72102a7d8dc785420adeaf37d7f
Date: Fri, 31 May 2024 21:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717191262
