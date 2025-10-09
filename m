Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245FC2B9B7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760033994; cv=none; b=AaXj/lWybHznVaKcuAZO2qYva4YVDBjVpE6fT+rMmJiCusZpq2w5gA2Nxa/0O1PAgksoXb+PcceLUk0ai1mGBrhCqZ5xBBDPBMGG8fQ0CqHOpQGLlhu1dH5UGmvVOCdCDzeenWFKbfQg2XCOnGjcjerBPRyOcYFVJQly+qCLwdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760033994; c=relaxed/simple;
	bh=SGfhqKybkVE8VDMU2PCHRtBRQBdmSKR9q8YnnrfDXn0=;
	h=To:Subject:From:Message-Id:Date; b=tUn9sTWLfLn/B0lqDKooQunMQkJOTPZtgRZBs6/lo6tJjOEVRCKCsOoeKgFIhVe5lawXkkvThBFZ/HT5MvAtPgOdZ4dbQnNraVtxZif5wxpVxSO99j126Ed3XRwA3LR+4igj2SCJVHxh2BE6YGxk1vp0kC+uuQF9B1khfIovknE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sak12j+N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sak12j+N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E73C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760033993;
	bh=SGfhqKybkVE8VDMU2PCHRtBRQBdmSKR9q8YnnrfDXn0=;
	h=To:Subject:From:Date:From;
	b=Sak12j+NA9Pop0M7/bknAwK1aonyZkBX09OavzwJKT2AmPV5pg9Zxh+r/NqYeju40
	 WUwMcw2fKo9MNhHPtGCglYeqyX9G68NsIYW2D2TkxcvgVVQmAs9JT+QTkqUiGRMKe7
	 Op3WCRszfyUS/XKP0Iqen/fdtG9MFfHvTqa6WSG7jwEcZ5qDKyNdt4Pg69vIceQYIO
	 A4aFfkssRSz3WSxAlwxP2eS+yMp1Mhmf8rUGqrvuo9AovUf+Fj/MbCNmsA5DoPX9ek
	 9BbVrLQ5O7+ieMfYTr6geZyLXgPSRzFgFxGNZe6YcGx7v+vSneUDiyXQBcrEJM0WYf
	 HdexGbsxXOviQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9344ACCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176003399359.5286.13375740499538469764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85758d77f97975980186b0029cba028a105395d1a1cc9579ab4be55aeab32fcc
Date: Thu, 09 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760033993
