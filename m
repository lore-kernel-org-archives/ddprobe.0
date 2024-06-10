Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9B7181
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 00:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717978043; cv=none; b=JQni2A1T16epmMnK/S0yKvN7z1A0rB9Us1Ai45DiDA1B+Vxv79DB5uYeaW4TP1/CWIZndbs21eQz0Bat1bFMASooFbOvmJYkVtvtm+/iRUpiA428K5vU2qSTrhT19lnid7NAiJm70Mjced0aVqv8XSIEo2EnmDpdg0NJCmtN6LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717978043; c=relaxed/simple;
	bh=txAgt7jpkV+puLgtnNTUxC8ZNcmvvXrKyHSbhgo/PoY=;
	h=To:Subject:From:Message-Id:Date; b=kQtoN/uZUPIocMx5H1MtFvJW3JXatZe6aSMMQXoj7C1g3/gTujaCKpezBeyu5JrZUdfqzVWycFK22lwbMgcKRvHb9tyoyvhLH8/34uZ/xpiRgrpVG1LqGDSAeplWfw+w1GMKezYdwIETBpJC+kFG6DYJduoWxJtKUAFGN7BFMNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+1YeIRT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+1YeIRT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E65CFC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 00:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717978042;
	bh=txAgt7jpkV+puLgtnNTUxC8ZNcmvvXrKyHSbhgo/PoY=;
	h=To:Subject:From:Date:From;
	b=l+1YeIRTQQPNEq6o1er0YnJkEmIsoF7sWAlp7QD76l5nxHNX8io2lk8/raGC/X3Yh
	 b7pizuyCURl3yU94Vl/Fxq1en+Hzuqn3Ju1XtdmptqWhQsRg1R9Hbbwihm6Nl25k1g
	 Au412DiKFV8SJI4C5qP8dcvYDJHwHOLRrPS3984LIkkpHj3E9SjQSFGDzpXupOo/+u
	 q+AfuxObfSvUB4YBUQrqnJxRKRnaDW+lY7jDwNboVySSNDYmtvIchL5DJeCu6cMCqE
	 wQSOv9g3RNnLJbwDsUspt4OPIpHnQaWDWRIm56szLkyV3BLRJzgDQ3Nz9ZbpnQunNC
	 OqwEq7g38FhtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE3E8C27C53
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 00:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171797804282.10932.10847731475126948456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5e9284f37c11a99dac1a7e644606c499ba531d0bff99967b86f8564592833c2
Date: Mon, 10 Jun 2024 00:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717978042
