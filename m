Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235B7D517
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752868194; cv=none; b=e4NTtceUzS980sPighibo1aIrV/K/DzveeBBVHopBSzd2k4egy/DsOE6P9Id2pantRASy7ZRrvevCn2jrwEOf+L5v6ZUzwyGZy9RZ+rHMIkTnj8S5JKyKdE+BFMuDtSiBqhKF6TNXISYeIcMJIxdGheKrP/5Ek4T0UfDbpAzuwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752868194; c=relaxed/simple;
	bh=NnyQ+UQgPsMB1Xkno8L7EojwdxP5ANaUY6GIIv2zUa0=;
	h=To:Subject:From:Message-Id:Date; b=F8MHHOCHrLQGfAIJsVEMEh6CSx10t2LMMux1fXJmtzMOdaYAFJ5u8LAt8bLkeEN0k+BwpkIEfup5g4/F55tXpjjhHiDcUS0RG51VK8gyknEimGdppJiscQK9Su7h8cSlmg7QNh7RTlQFyShucouAneO5xLoMIaFZMEB2bdkgYCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwc+15UO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwc+15UO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA339C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752868193;
	bh=NnyQ+UQgPsMB1Xkno8L7EojwdxP5ANaUY6GIIv2zUa0=;
	h=To:Subject:From:Date:From;
	b=dwc+15UOYDnV6LbvypLipW91i7RrMS/ziwjpOws1dpmH8mBK+i9ONroEgFXrXpMwq
	 fq1O55PrmEjXQ2AXmrqeyZeJ5h6e8HW68ncp5ZdHpKZEA3aqFl7Lnx+BusK+7wmBri
	 vlLBD0kJ+NY4S4A4KSnaZjlTOv3Th9XMpVcecnEZZ7Lc6C6UvKg1iNZivp8QG9M5n5
	 QRby/LbZL41T/a6OYsdxivD5AT85PiQ/7lwaYGN2lG0vRNabaiLr4g98RMhCcFK+4b
	 Y4QxwQ4Tc0VYCeryS11FTuG6ZKCfZGjQbLx/TuKWRRaIRQo7gXkI2NesHcOdgBBo5Z
	 WWDB3LFw5oYVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96530C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175286819358.7468.10095278022072098092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 525d22f5427be4a0f3086ffd0aaa768e0da57b0cfedb39741f5d249dd63d7ab6
Date: Fri, 18 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752868193
