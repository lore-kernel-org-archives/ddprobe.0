Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 841F5371D07
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 06:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783664914; cv=none; b=PCWMSRoStF7ZjrxjZlLl2m5unhuKK3rhV+4ckbWnZ1rwgohyQohm3eo0zqaBaORncWmzPngysG2TIvJYgW/dqsaAJAcyf/mpIMzjbTGGxfoKAWavKIl1luMIdFdkPdn2dgvammqL29g1cSMqQ8KKyBgvJUEdCQsg3xdtzdvbAwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783664914; c=relaxed/simple;
	bh=AET6pD3bj0OuZJ6nDit8MFYBcKNuFJg6/g77U9CXelg=;
	h=To:Subject:From:Message-Id:Date; b=XFkhGm0xhs/85P6O20FXs5O+jn+UsP1x3zHkeqrBJGDO+Rh0mXrMPCY3/s1OWSujkAjugKJjspHPBjuIImWmAlnJbK8mDiWS2omp53YFBZUbl6mHjxfIh4hJd8TIUAPwklA9B583aNG/AVAwaAVU07LK39CTx6JXq/5rAIkAEP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucL/HvHQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucL/HvHQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB9A7C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783664913;
	bh=AET6pD3bj0OuZJ6nDit8MFYBcKNuFJg6/g77U9CXelg=;
	h=To:Subject:From:Date:From;
	b=ucL/HvHQXSYb2Oh3UyPfY8ggDbzRoZdOkZVmHLdxCj1PH/AKSTvbisBU1kW19USH1
	 MacTfEbjlZIr2TVmmU70+PasVHBvvF8ecQRNOEXQdkIC5X8BLyZhgwShmTDeP5Umc6
	 Gsbo1x28gI7erpd3F4Shhk4685xWIVCHa5I8drN27uHo3r0+WbSZIOQehXOD2hDM4Y
	 LxxhJsC7tmljO639l7F8EebU8sTjWM8Ii7XRF1OXuLl+dSTSgREDF1uOxnk1qNu0gt
	 VUkwgjDRteSK0kaMXADL+z+uWr4RX9J0Caf7kmpX5W8R9JHoO18S7/wfuxnln0Tr0g
	 SNXSXiXyA2qAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9858C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178366491368.4660.17333986770599018813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0a398c466d7d7e6518a4245221bf69dad0489e4a933f1d061333528c8f748af
Date: Fri, 10 Jul 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783664913
