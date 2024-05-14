Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465EF17EBBD
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 19:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715714543; cv=none; b=tWFycRrV1zKvsDpHYVWJUvi7y5K8/8D6gATA+CGEHjy+VYtfRMtOQYDiHZnW8O8Eg/ozSQObMVOlVAbaKG9pY16PyZmLli0Jp/SjfUAjkEopDBYZ6TJnjlK1cykuXG6yMI7zSKp/HF9ErzCBsx/xSaRTzwjEIysF4QyK7SnNTy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715714543; c=relaxed/simple;
	bh=13pdDZUMNr1wW8a1LCvOmGmOu6kugpTgy87LeXtsAUU=;
	h=To:Subject:From:Message-Id:Date; b=LRROCJerP0iABfWuJMIXN0JbcJSuHO+bWwS4opQI30UC7Unv0l8PXvf2whSrGtbqIjPlx4jg799CqOW9JkI4lbM75DCYknjtOvRFIJymhqBp3zTtB7NenV0Qd5GvOzJo93mxrHNOtSbu7udWKRNA+Pf2vpsw8U7RCkvVMupGA/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4+YOvjP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4+YOvjP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE533C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 19:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715714542;
	bh=13pdDZUMNr1wW8a1LCvOmGmOu6kugpTgy87LeXtsAUU=;
	h=To:Subject:From:Date:From;
	b=O4+YOvjPCKKboeAMZM2s/Ct7Cvut4rFp1FX58FH/52dwWddSjMQJaBm1rNZtcrVC7
	 JT1oQ22qLxEna+9DP1HmWQnLWkkt5MBOyVXsJX6X+KvEL0GKBOPci38/+LzOuVRDxb
	 I0K5U3c/1InNaVVqirSpNy3kI06BebjbZ+Amb5/1oKGSCp4kqf9wek0d1hIjb0CTX9
	 M4+PwOW2V24LrqaUWhmBqlXR6DY3DnYnWJid0wZWqHBtQFjWwHtXfaXgl652WmOnPn
	 PuIsuT6x0r5ahStysdvRV94QG/hUfA1EYIEP/Gx1JxziJgYTThS+4jhljtQ7xaCbc1
	 mIfwuWVHs99Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB343C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 19:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171571454275.21306.18247543123853005099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d774357b316e9730adf6f91f6d9f61fab746b250db173e5cd284006f436f2b7f
Date: Tue, 14 May 2024 19:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715714542
