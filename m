Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3707027603A
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 21:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783287514; cv=none; b=LakcuDERtJcar/fV+JODMaic6ptHh1Nnt3IeeLPasptiidiTvMqibvohTWzX/HMC56udgTbJ218Wocg12gY3cyU20xM6d4EKPTNXhp3DITPb4apaXARo+UBmRMmPfjyUaWc/DSDtGuTiNyFcPg5QLhl0iW2PsTPV2sZXXj8Hb/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783287514; c=relaxed/simple;
	bh=mnQ4KfypX69JQdR8f3EO8s1VjnTvm2oYNExUo3VR/V8=;
	h=To:Subject:From:Message-Id:Date; b=EiJGR+xBQCDmlq2hXhyVz1wV6n29/uCFRMpRZ8zx6r0ZWcbLy2+PtqU6yWPAG0vkZnm11jk1Ut7pSbSQDY+LR8GcwV8ekwHvGHp0bUpRj1dKvfIqPr7eAGmAwxO8iciaXGKfdXG5ZEpLEuryuTV8sNqLUclj3XAWq/XzkS6uRGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BX8TSJn8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BX8TSJn8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC972C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783287513;
	bh=mnQ4KfypX69JQdR8f3EO8s1VjnTvm2oYNExUo3VR/V8=;
	h=To:Subject:From:Date:From;
	b=BX8TSJn8g4PBox+G7WrH9uCGcLpbFYMfn3jeNspihVnuvx7AzgU0U0+GYYsgg5wqC
	 NNEjQ2pcv6L5UYtUhOG2plkNfxmDBDEul7isJgh01s8RFKJROxhhx9rxoTea8XaQKd
	 QPHS8aQmrx+XI/k8J8vgCFJWiyblyydMo8614R+5ozZ1Qjw6c/Iwy3Mj04ihNoOddF
	 YodrNaLXq/rGBNjOlXq0N9By3y/JlS4mlrA/tUAN45wj5dzxRCrII/RSgpfDixpsfb
	 jfIUSxXmxpXKjWb4MDdIQ9IeJmza2ZbalWRWbD6doeuEuPwiKrmk0udC+9b2PE+reg
	 h5MS4JxwE1f1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA190C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178328751368.7092.15562686801129887543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 627297dd31225c9cd68ec5ce360b21ca61bc55cc27c79a8746d04108e002ca13
Date: Sun, 05 Jul 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783287513
