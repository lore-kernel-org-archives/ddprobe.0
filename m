Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3770A19066B
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755230994; cv=none; b=jKZ4W7zlc2CK3KAwHoa1dR2+OObE/n6SJ3/FrzDQZw8rja8on8ceUroWmNq+WWAA6s0b+9bRPqd+JL89I6garsHGhFJAnC97mL2Y32QR64DOEvwPH0OVEvMCfO4Hw5b3+cNIRr+300rlie1PxHBOpHViuyNXZkORJhMT4dvqaWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755230994; c=relaxed/simple;
	bh=Mut4joidEusoyt4WW/vL4BHd7pr5md8z28hCLM8b9Is=;
	h=To:Subject:From:Message-Id:Date; b=hBenHt+qAyz+XzSosEu2pCSDm7HFbNXWlHFVPtY4kJDw4QgvBg3hAcrLlb6llBFXtL09hSPMu45saaDgLlk2Lpw5SY14ZmeMG6h3+NyPNqTfrDH8Q+YVvY+EBBXbjZcanG3Znyf+c5X1l7dkcMO1i4vdqgDvlu9zNBo6q7Grr/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQRNOVt1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQRNOVt1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A009FC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755230993;
	bh=Mut4joidEusoyt4WW/vL4BHd7pr5md8z28hCLM8b9Is=;
	h=To:Subject:From:Date:From;
	b=SQRNOVt12zmzqiuxePZ2NYLjNl0od10YqPnwJb8ut9eFMzR5aCB0MqUmnGqByIAa5
	 OB/5aUU499Sieo7dSOXXaNv5JbgaYe38Wka/2Zfal+13w4Mr1nU2KJw2fFS7mSxTPs
	 L59jp0DApedIGkM7XhPdNS+Htnw9bVy11DtdH4sK4EvrwejcP080JTjjJS22e84MbJ
	 9w+VF1uF5lAtRiqbot0xvDUSD1AgMNo9F16c9FfcayzLPEt/roLevLMvZnar5NCm1e
	 9OwqHi+RdNtnIwtfAP8gQtOYPdMvQjmsh/rYJyjFP9JIVUb6BDvjNQI77WeZLEWx0A
	 OM5loUO4U5GyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDD9CA0EE0
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175523099357.18618.2844023349004240283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77943bbd5def906ee96bddfba45e0e5010867f6ca069482f44f676b0537822ab
Date: Fri, 15 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755230993
