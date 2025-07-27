Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2286919EED3
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753628394; cv=none; b=BTpOLD+99TAd6FGaXSrNJKhTMJOTrtBq5ml+2pEIqUwYxW0bVtEPTkxuf6cYQ4lARhlyjMO8uMa5c+XTNdbUAts4zUaq/Wz0Xgame7nC+FdTQeFnk4sOtDcQuMm8XB2fg8XM01u7S6NTy0yeSwI/NFkMQPikC9dcRnb+N2tkyZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753628394; c=relaxed/simple;
	bh=fwN36QgUndGDDI9GmlaHAboXgt8wedUoBZUoJ0/QgV0=;
	h=To:Subject:From:Message-Id:Date; b=CPVV5KtUbu+gCECXqTAtHWUr8B6WTJS4JFnzJIJwQZ/yYhvbb+K+jpZbFLrQIa6YLZhZgk46mltfgJ6r6FJ29d0ZVqsHsJU3EsD3io1E/b/l2e5U++YG6OaL0ckoKO9Bqr4dcPbmheu9Tuf2lDwHdMFR11bv2Bt4+PmDWFx2Rx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWlnGnph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWlnGnph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A208FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753628393;
	bh=fwN36QgUndGDDI9GmlaHAboXgt8wedUoBZUoJ0/QgV0=;
	h=To:Subject:From:Date:From;
	b=aWlnGnphKeSwdvq4SY6DIUwLgpdhEh+QAFs5sIOBtEIokHcwJMqk3L6nZstunelHL
	 2AgAvlqv1rpm1SKOZ/J3RXVVWAYC9MaSiGiE4nK2DN/zVStYS5o8fRMYVnqI6rJ1TD
	 eNy6ICjBh7rQSxHCTa2ypZt3Q2UwOdJVdoS9Sg2SMVxKnqT32C/7MSkcMhN2DtkD+T
	 BQsOB/sfAGO7M7QxxiU/yPtulEvbVYlBn942Rkwt30SOqQAMREDBU7lCfO8vxMuR3e
	 ELYSwDrmQci7rHIUaM7mXYVQP39RvzFjkVgds+tovbosM4MWk+gVRCBK02JjjaJUX6
	 gc/jTzV0uuaNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F56DC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175362839357.3460.16333704263165174566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 627e83009f6b5e6248e7c5a57849c555fc93d888df1ed50fbee6efe313074503
Date: Sun, 27 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753628393
