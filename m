Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E0130CD83
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 18:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765735374; cv=none; b=K/b4x1a+3zFxCR9BGAIdqPZdBmPps2rrpJV8VlLz+MYCa2Cbdj41C0pwfQuBMQw/Ai+4Z1+VgyaaHyWZ/Qw7siruxnBFvD3DCVvGV3fDtb87TZbzMJoUiQP3+Uyhxhve2OqcCx65hYlGbFoFXTNjUPQy+5R+c3eIcy8jYGXziaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765735374; c=relaxed/simple;
	bh=ewWrIwYeOrFjt0su73BV+342I/GMz6+1oO2+QuyPCL8=;
	h=To:Subject:From:Message-Id:Date; b=kgnApvUkZU42Cw292vH5KQbEsFKnIlHF5J0K1VUf+/NEGXpfKvnjG1jxFw259TZxb9qe6yjRBlB5WRsvFCmDkytym5l1qZ+UMXk9AUyYuu/kFxjg5P57JOgaX5D0+/C+9Pm0VuXakzGDy7JmT4mz2VS360xYTXX5Dljw1gTzQkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M476GwAp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M476GwAp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB60C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 18:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765735373;
	bh=ewWrIwYeOrFjt0su73BV+342I/GMz6+1oO2+QuyPCL8=;
	h=To:Subject:From:Date:From;
	b=M476GwApRS5xq6wVdLC/eylN89S1pBvYme+Ys69rsTv83P9Z5jS34S2cJrNEfA9CE
	 mQmKI9JgbFtT24EgJdn9aBqqA7bVrrUoJ5fmruziC4/hkNL5JgUQ8xxkwThm3x6wF/
	 Ih1RCJ4F8AlQdkwkNyIDH1CdodTDuCBWS8DXFDF1yb/kedGcswR3OV85m1a4atSLuD
	 GUDeW4nO3CoO6k/j0pxSbJ2ORiPzcrz+GOvpQGZf3rCuqPXb32fu0qbUzDvWTpWT1R
	 Ou7ePk47Z0TeWMk86GEDhLzRIbqiVRRPJruVig1+fFLSuNf6we+1nZFaBeEGblB/5Y
	 XurcpGPZ2hGWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98315D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 18:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176573537358.29330.5097451700965530538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b84686cdfae5b176824b3002c60b04cfea7169c68c49aec0d0114e55d05e77d3
Date: Sun, 14 Dec 2025 18:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765735373
