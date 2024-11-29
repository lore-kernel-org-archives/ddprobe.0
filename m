Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F22157A72
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732913154; cv=none; b=F0/RD7+TDazRoU6wFCKMUufIUhuOob1G5ihL4fi8CqnmDjx6PmAhRHJ57cuHzYg+8hjqK6glFF1zXwYiECg+CAy6+iP1bbi9RqgUkkFnxuu8LBM02u+NFsl9q2+tYWMckVHcqaydoDuGTmT4cdpGA3G5HTq+913Ely5VKco8rWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732913154; c=relaxed/simple;
	bh=1EBWRYlqEWCGG9/Ksj+Bmaq5Ni3l7nOaX//D4TP85AY=;
	h=To:Subject:From:Message-Id:Date; b=DPNaRkAs+UPbgYAExy1TMJ3CG2sSAoD6l2CPBvUBCv2TFchhMYVyaM4wkhCc0AkHmx3NPOGy0sJ8v1h8FlTnoUaZtmawy5o2hYZYf0hGE1i2pOSqYDawbnSnf46tRu2O+qKZBf3C5wSc2MgRYYOnwyHb7wHxQCRiRywZyjczqFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7k1851E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7k1851E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2901C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732913153;
	bh=1EBWRYlqEWCGG9/Ksj+Bmaq5Ni3l7nOaX//D4TP85AY=;
	h=To:Subject:From:Date:From;
	b=U7k1851EEIWPa7ExmRc33uTbzusbdalusNGT0LKeH6fQ2Pm3WKEZ1b/BNa39RrJ3X
	 jAfTlPUsvW/GY0CucTqA5Kzlzr73hQAs+1umF8QGPRCDaAtli8YTFQvV33bknhahdO
	 78FnP3q4g6IIvK6+/VPfudPa6woP/rnHdx9Laogu3t+cqJ6UnFh4g5iTDr0++O4Rm8
	 nApVWeLRQ95mmqU0TNdKN6O/hDSj98/D3tYWtIs2J0OgQZfuVV1y7P85kl4PNNMqjr
	 97o2q8P11Tb2V0EMBj/y7mRax4eUEcJBafXq1WB+Y+7DsF0RobyQahJx8z7uAK8EMv
	 RZ8vMnRTwQFQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E87D729FD
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173291315358.29683.4370067532201531455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6095e314a496c6e4b12b8c6873e061ee6a14e98cd604900b93ea1002a486ab4c
Date: Fri, 29 Nov 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732913153
