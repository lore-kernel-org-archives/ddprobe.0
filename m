Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300D12F7EFE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 07:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779865954; cv=none; b=REpyA22Lea9UqzGZQVR8UQIUD7qU2rE7o5M1vJw0j/yTrCpzb/hfaJ9yua6UYM/bVap57/lxcpZtSeeyStrDH1JOu6rxONf6v7beFA89dh6P7N+N2wD9VhOI/hzZcFJcGeo3rcf4jJX93po+54M2D0PNYm86CY5Ui66s+hMM4qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779865954; c=relaxed/simple;
	bh=p8ftLFZfB6MR5wQI00Q26bx7nMt7YhmJuIqMy/7T5Ak=;
	h=To:Subject:From:Message-Id:Date; b=jM+NxjhFuEqRpRu312FIaJ0e4UmcN+vj+CumOaFAqcDKZBz+Sijf/S8bSZEI0xnTTNcTuPc92o6rbKr4dP7ln6XFGxULG3F0N9n4RMf3Ae8C+bDvCs3b0gkleq8bFjMgtZBGT5iYKh0gvbrouYdABPVe4quyfZXwCEwWYmUyMlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdT3LMeP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdT3LMeP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C12DBC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 07:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779865953;
	bh=p8ftLFZfB6MR5wQI00Q26bx7nMt7YhmJuIqMy/7T5Ak=;
	h=To:Subject:From:Date:From;
	b=kdT3LMePqKlmbu2usnBWBcVKIkxpDGAIqL9uKOrksVoaJU9okKFk0rMcgANN5QreY
	 TZdGcaZxlKf5AmsMM+HHM0kP9zcL2dFDVveyErBd1PAmDXrSIH5vyj5U8YFvGKpwg1
	 ejvCGLQbxLHGjIvTFj0zYXjJogKnmrl/ArTtFR4qLZtli2XJAtza/bzOcNfOtCKcm2
	 qvVE4wL2z9mHyPTLyvpRfcAOBP/Uz4HWjEQTjIZ4eLKv1i7zD7AxMt1TUyhw1l0ZbG
	 n33HAb/e9/WSCIPsg71XP6IslNW2Ke/busCrlCP6vFwkjBl++GE2vKjjUhWkiFaMe4
	 ZXeuXQh3BzpHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8904CD6E41
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 07:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177986595368.29062.4848026818481385033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c0bf6d9949df23f041bf6dc671e2d95aac86d8209d74ff6ab44827103b4d3cb
Date: Wed, 27 May 2026 07:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779865953
