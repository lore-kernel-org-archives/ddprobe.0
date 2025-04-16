Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3132309AA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744783794; cv=none; b=eW4lETSYkHAzVdxsuMPOxX/rXSzJsmSjgnGortac8oBveg20Q07Pyklw/eApKmKL0k4dm54vSQptV6wnkffFOqCx6lr1Ts/hPAg/srJSOjNgLhkMlFzWEQg+t3VXRFPA5/6VH0Mg2OZ+PcLMpXqA1IZ+Ms4DDERhCn9+bOeUW2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744783794; c=relaxed/simple;
	bh=V7TMFmQRzh81GtAQT3raELq6LP4QGaeGxXP7PtXtFZY=;
	h=To:Subject:From:Message-Id:Date; b=om990mniSbCyj+WjmT9D24RsWkZtt6X3lHNOgRbw9wb1/H54bJnuS9t9y3bDIiDPaBpa14okFbK4KrkoHS4gs/s2xwdrhjsmu+jDijF0+ZbKwzAiufbQoNaOf0eBqA4UCHAKj/yWs2JPKU42fbUnoTEMfCl+K8Evz0mzGW169T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3TNSZKB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3TNSZKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA352C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744783793;
	bh=V7TMFmQRzh81GtAQT3raELq6LP4QGaeGxXP7PtXtFZY=;
	h=To:Subject:From:Date:From;
	b=q3TNSZKB0E0pUm9i9UUz8xFm8DYZYwM0RXWnIoNg2aohz22E2/4xiyJv/lvwe/UN/
	 FAp5KKSKHNlX5j66Ei9rBixLdEWFcgdXw9KcnxI1etyR1+V4vy6GbdviPvVQJxCtCd
	 uxvxBASj7GSqNvoowNmbglnvhPAe6E/yzW50imstslH8VSMmWJE6dAFfTV8SXLknAC
	 SFVCxSPV0GloyubJvHwOfeKQcZQUKWc+RNca2LHlBOL8a3/JwyxK//h58hQ0XjNGkR
	 6Xb1CK11Zt89Ubp7XF+D4CGhbhCkrqr1Rw6NQmcy37bFTlpw/bTruNn4V8OI8cWy5F
	 1WJPwtUiZOHSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEC4C369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174478379362.7482.10149967075745487788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9c3b3c31f5d118d01a01fb6ec2b650360abd6b55fb2153b676761ae9be0cdec
Date: Wed, 16 Apr 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744783793
