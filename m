Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E552D781E
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758098394; cv=none; b=GOQtb4WlL+mTuVZAFsJ54VbDOvlKOmpO9oUoi1fYaJS0THbpBav5DZr3MqRLfy1cq1bqoYRUK0EvQZ/JYecn+jDMgPsHpzWuSFqcvMKCdNWx5XbkpHOaqMgAFrccdrFv3SSO9oLp/sb/gL/URChNEJNLSy2al4MNoIhptcQKezg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758098394; c=relaxed/simple;
	bh=ont/3pJvqm4r+QaD7eaSGnjPl56bwGJ53b+D/KXitmw=;
	h=To:Subject:From:Message-Id:Date; b=WYMKhqAGO615gNXeluidpOOaFTAL0h2Z8JF2HRG6yfose5zGaU2GJPQ9poaX6kq4Z5UgITQqSs7T52DNY1emJ37s7Xbpm7OSr+Hj7eT9wZQb2PfHBRWQn4819BHwBoeFg5/5tzq/J8n2vT/B/tKY0vshwENu7L1O9uZvGbjmLoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R30iKrAl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R30iKrAl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A10C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758098393;
	bh=ont/3pJvqm4r+QaD7eaSGnjPl56bwGJ53b+D/KXitmw=;
	h=To:Subject:From:Date:From;
	b=R30iKrAl3qLfyPHnUERVhM0pAXHLcnzkWlOVNpsvCRJhz79LuBTcsIxERcZxqAVtw
	 1o0ECZfCtCP2LuQxwEDMNh5tBc+aepcneWhRs24z0WvQa1fsYTf+3hYxEkXFSR+St/
	 YuYazRC+ES92Z9HCabhbsVmPnwC3pgyUsUUNPY89DntJUcQNlltlCNe9jPHeGkWOnt
	 bV0ZhHJozXczl/EyQouj06bpA+7zhpwO+czwUq7n8ur9vMlcWckTxoVuLm6agq5t2H
	 orLhN5QGRHpuHISGZAoJdsIrIgmeojyozNLVlDKk8HH/KXkSGG3TNRhENj8/rIt/0P
	 kVJaZoZ5wxGYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF66CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175809839357.17186.6087902795887587495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d17fc791c3c227f8e0a1ebf56897756cd0aae7e6fcea556b09a2e7b26dae541
Date: Wed, 17 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758098393
