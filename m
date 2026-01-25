Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D318D3EBF20
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769303033; cv=none; b=PvZp0FJzp0x0l2dNAkKsZcDJoZVJ4Q+4wMrWhU82acqRSIVNdgqSjetknkaB5r3BB9tMZePwll2L8czshd0JLKAuMdYY/TYwhiNuZ0gWVemqho7kr5cdbNHw5wIq+5ZY4FQ5tS4GuHUKvF7jeCw9LJY4XVlw05wz1whFFfie2lQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769303033; c=relaxed/simple;
	bh=3urARifrirtZJQqCBH7Gd8Q/OizU5/hak00UCxed3+Q=;
	h=To:Subject:From:Message-Id:Date; b=P+sqsj586Hi7I+C2/8shhnCVsEh6i0Kus2xOM9kPBa7XcMDPeEo0CmSOzRqFMovad2qT2asdVzPu3w+9h39wlYYdNSS5us1JIG1/yq5PmsWFu3Q4aiKF14dmDf+wFdZztnX6352tFqiw3+Q2JbuFy+uV2fAIg9Jb0a66nJUS2Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8u5al8f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8u5al8f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADC2C116D0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769303033;
	bh=3urARifrirtZJQqCBH7Gd8Q/OizU5/hak00UCxed3+Q=;
	h=To:Subject:From:Date:From;
	b=J8u5al8fuqFAa09QW17QP8UCr6AWiSN+RT+aIWPXjapk4bAiMDQGnBnYmDnr2kdia
	 4kfGtGfz2dQAzKf4S0nfn0igzILp6HM9gKfyTcuRfZnqS5Hw+hb5IV4zEz+07Fp1at
	 wwrPtJSk0wuJxHr0XzSG2gryCGkV6T8J4ZxPqrlai2iEklRE3Uwn/8pVpTCD4fcP8Y
	 ZyMBxLyG+kwcg7T8TdMl3/ZQEnbURUoGYY52NTyCcTCvUWBD13hVa1YAbBBoGfbsC3
	 4HNbd0BB5R5U7l6DNLUHkFJnubmZUq4O9sSBebh9ZsjzWZXc+MnaelbkSF2LcnpP0W
	 0nV8bhxxWL7OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F1CD715F0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176930303357.13707.9120459944619623855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21a83bc92a85bb98b0f4049e8a6c0defc5681d74bf8f115b672fdcff7373fa5e
Date: Sun, 25 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769303033
