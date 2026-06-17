Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361993D4116
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 21:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781730394; cv=none; b=ABu5ft2eGX8WgCMl8z5+NgSScRUpjbTsWwEPVSJHHIVBg6I2Eszif3C9aVfNR8YpVQ30AEFB3Z7s8xerXO9hHCAYi0l2FEquc86U0wzTUzxRypj6KmiIToz61+LZn5en0EOyyPXb/a3pEPNfEhN6hUIoLdXyn9TyBu95hkD3N58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781730394; c=relaxed/simple;
	bh=fH+4TZoQfEioESsULFG/6qF85fj/vaYRa7CiIX0MFo0=;
	h=To:Subject:From:Message-Id:Date; b=OBza34yYJufbD7RuV0tUa8aSHjPnLKr85P7BbX5aqsq3OSE/Lb53spiS0HtLfjcv5LEvLMnE6ApMB5Ar/MQmF4/vUPjoWjznu5/wUC/4SR1sR0G1rX63ICX0Sld/krEdk1IEW1O/60c/FADbdGlPKM+l3Anv463K4m3ZrTQscxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mANdXuBY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mANdXuBY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E49B1C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 21:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781730393;
	bh=fH+4TZoQfEioESsULFG/6qF85fj/vaYRa7CiIX0MFo0=;
	h=To:Subject:From:Date:From;
	b=mANdXuBYuJNskqV/ogjKFgPWi1mPuCwsDbSpHTbMWBjtchEPsckVOi/38+8hlFSA+
	 j7oj/tHhgCtxWzV4O7uNZfe2ztxUAdPpklJ392s20DnHHyGA8QPK3wPDQsrqU81mTG
	 i/6gRzRadKvnqRIkX/8vB1x/2YRxSSJlk9KxO2+/pzRosi8xZJ2jDbDMUSSKcX4ouG
	 Pi7D9+gbcNnAjqZ8NvHehoM4uC2UJ+BbAYEvV5BVmo1jfz22vYsRqWTEtouGLB/ReS
	 uW0KIcobgMCx1klupglKRyVxP7Q3R8NiX//oZO4HZQe3pZDMVb3OVo7XbMpjjmHUmt
	 h+sO6LeXs+g8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C57DBCD98ED
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 21:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178173039375.28861.14060223339470958897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5015f2b541dd7815165f32f784dd76999cee89c73b16901844502dff1d885475
Date: Wed, 17 Jun 2026 21:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781730393
