Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C75F221FA0
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762313994; cv=none; b=uxRC29bReZHh0syme8iwcn0ixfd2aRyAXafCxZyZAtahEV8hgnpGHGUvrrQqFENqk8GYunPe0RBhmt5DGvuML7vjLSV8fI6mtcgE88BwwLC1EyRZ/iq/IWrNzHJH/a/Odom9px7s1wPPm1PiHN6Hw/mAEfZFtOA5HymElIHAJms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762313994; c=relaxed/simple;
	bh=h/pUIyc3nselmDujxRxXRPb9eJJ/SAJZVl5Ee/bewKQ=;
	h=To:Subject:From:Message-Id:Date; b=PlHl+znUWlGCkSapvqHQr3WRURVUaKuj452xuhs9qXkf0/v+iTLzdyGDiCJYEaJ05ZUdtSEyoTOEVZLSgD6Q9DakqW+DA5xY2N3icWrgVnV3Fcs95MgqmNjkH4XiEpk5cHFpNaoAVmfqXRFutNUoayO9cxCjJe7fMkiu3de4OlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+LuuCLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+LuuCLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9D9C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762313993;
	bh=h/pUIyc3nselmDujxRxXRPb9eJJ/SAJZVl5Ee/bewKQ=;
	h=To:Subject:From:Date:From;
	b=N+LuuCLGLPEdImEP2mPZl5ftEGcV2B1cAJUfgERbCaHlQFcfgMtZGlvZwMFZPJjWU
	 XpwM1yR3eblQ6QK63m7P+fYAREid7BF6z46S8NwPOSfh3f7E2hKXFwqORCVh7l0Uad
	 n3xiMNsBGPzLP7Wdis+RrDcoC2Xjaobz9gUdQ70q5NIodP+CjBDET9C/EBg8eAqsv3
	 quM0FfYf/qZBnqVEZJjOWJi4C2L9xfdFskcIcP+D8ovZOxV9eVk7k5fXVft1QCjyS1
	 4jCk7sAQpvqB+5hjfnrIuaBkogm2C9rkqwCdv1y0T/1e+dZoZSSGCl4NralFeG/K2g
	 ldGDEbPAcnZqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91579CCFA04
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176231399358.27789.4567435265302469169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f85a1afafc31536f9fdbe0d74afc0445108b41ec1a82e9a63566b68f8e06451
Date: Wed, 05 Nov 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762313993
