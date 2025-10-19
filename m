Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0AA1898F8
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760905194; cv=none; b=gmwbNpOtSRVm4buu/EdmyuBwaRcqpoOdP/mu1jgwtyId72GJilRyU2hOJmhnG8r530u4aXph566izmlHpvFkZ1piHgGHU3kAIa+7GptH+U05oMcY+A0t4PTXPr0uP2uiK6ZZwdULgI2hEQhnhux0u2K5f3fd1QVUhMi4A9whyNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760905194; c=relaxed/simple;
	bh=kWUdT05p7VIVDDBknLhnM8xkyq2+7U1QhKmk8HB4zWo=;
	h=To:Subject:From:Message-Id:Date; b=Sot4esvHG7UCd/jtr1sNwH8MMJek8B8draPF9zeEHNIqWAT4NCMLSGtvqpRDbPk96a3lQiCXa/YFSbhPHDcvZKlnkbaT7/mH0FjHOZv3gRiMcu1UDP5BvossWqJu7wQ3b1wZxtXbJn+4LDpaDRxsppLkcAA+GfWF5u4ZWM1l0is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1N/SEpH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1N/SEpH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A806CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760905193;
	bh=kWUdT05p7VIVDDBknLhnM8xkyq2+7U1QhKmk8HB4zWo=;
	h=To:Subject:From:Date:From;
	b=Y1N/SEpHMeiuubOqfsW7VuZg7fXAAS87XGWSbXfVYWsHes0ve1uMe6L9W8xNIo9B7
	 7SWNcP8mxNXcApvBPGMHFPEOWEYPe3fPViig9vQQDEYqFoUJziENxLAI2IeIIvrd37
	 UxQwhbFgryonQyeYzHYX85wHPxECMMQxy106ZtlXJnV9fJG5hk5gHem+8YoDIHmdn3
	 uLBRCDMwDeSGP2g/AbMOODUl5gVMiQcWujuKflX1/6CcYlsJRWj1/kGzLhQXbFILcf
	 pv6PVL3UYWQiu9a70KcMRZPIxnykpmY7U75jbzi6/j2PWv5JJZOqTkThAOb2YN3L9a
	 lSAmBKRhrHgaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96075CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176090519358.5412.1427915370259240951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8536fa7565ec8431dd987e5b10dde14b04af208cafb0603f08379de4644b46f
Date: Sun, 19 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760905193
