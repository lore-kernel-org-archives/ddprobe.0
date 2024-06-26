Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FFEE143882
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 05:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719378803; cv=none; b=N16YCZcQO+RCCxRPzWbZXB+not+PT/Gfd+vVpSdox0e34MlIDaer/PrSTmM3CagA32INiye+cCR4olXwif1pX4X1+BxqXtwDiBp9nvmYdq/7meLG0QLsrIFzWh1OPVoyr/Ah8wenhVimiLmBnYr/KEh7tqrrNFqaD4j+aldd3OI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719378803; c=relaxed/simple;
	bh=ECw9Mz4ujNprwOKuQvwLmerfrr10eiXPPncXPZ/9X4c=;
	h=To:Subject:From:Message-Id:Date; b=WCu9O7L79RmD92Y4aqngiz6D7kCMJKJzfvydzQ7VpU0pkVfjwXuaBp42JLWF4rTe4LP+kL0lCg1KYINdbVnebr05C7Jv1/gnnJEvW+iPuYqLpWMIYor0tSes0OAokaKG5vZPJjsQFmkSmFgDaXQfLh2UhKpVYnEorydX+/4sqko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDcTg+2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDcTg+2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE36EC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 05:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719378802;
	bh=ECw9Mz4ujNprwOKuQvwLmerfrr10eiXPPncXPZ/9X4c=;
	h=To:Subject:From:Date:From;
	b=LDcTg+2BtLt02ruXtBuLo5bLJ8QVq2PjS2aZ2lHcJ8PoBOxPHpnoiad5iUMDdQ1mH
	 hfP6CVoNqIe5e0Kzlnx49Cg2AgU1SfGE/Q59+ppVp2dWqElR03NNn0ziGa6MTnaUJj
	 2CeqA2vq3hNk9InjpuPD463yDJkNpEPfbCAGNXKG5ximrq5q7002bQxfzJQAOQQzke
	 wvrGsS2muOKIbEFGJlpt1S/J8qas+WFXrhtPNeXnausDHv+SQfrPSBkKzGCPhsX+36
	 ZfPQwId5hrmtyvCmRRcIj/IDyEh6kIXsYwS3dRLhAhxttW0AE/KgVJ94MnWIaLXQg7
	 NF9HF/3YVnvLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F7AC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 05:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171937880280.24779.4551835589063010638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e78d8a1e508cde0a68d60a0e1ae69b0f070d8863ce5e95bd4130f3637ba52059
Date: Wed, 26 Jun 2024 05:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719378802
