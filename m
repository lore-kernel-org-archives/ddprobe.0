Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3507A81720
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727898954; cv=none; b=HDi/WECVI1xfk7V3IWBlCtwhkAaCEYviZXZj7tUqBxJXy6wPUGCUv2KxAAm8SA1Ci2laLtuEjtMr0a7v7WQt90O584AA5z5grYUhfyq8KA+SVXw6DX4jg4G2XtqicvjGisiU6swcIy/3QZ5cfOMGmuUiMtm5tqCeRYz7HDG9Gf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727898954; c=relaxed/simple;
	bh=G0u/058/oRrGz6jKRSCogdEyPG5w57LHpKWxS6CKpVg=;
	h=To:Subject:From:Message-Id:Date; b=gFen7VH4EcOFxqhnX4MtAUE8Xz+/tV4UFt8X2t+4Jh8gR+GcxWZyeoXF/JV95cwMrwOcO9M4J8MAwXIAqde8MZ4/AikrEUY0L+QjX+UycN+mVn/Q661yjIL2FxNwSnlePyrSmh8eNlxRuVoIkP6/EIQTeLG6CaaRZrAu0tsGpbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXoZvOHh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXoZvOHh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC49DC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727898953;
	bh=G0u/058/oRrGz6jKRSCogdEyPG5w57LHpKWxS6CKpVg=;
	h=To:Subject:From:Date:From;
	b=mXoZvOHh4QPQmAVoDkAbFBmKgZw4LC3TdE59mAwlJeRpbkH1+Pms5RdBO4fVk2d8l
	 H2M6gKPp11/6QjqBjfnsLauyrBM06+/NALNn3b/MfAEd6Ps5Ie72LleGoLjRER9uZ/
	 MGOLPG/RT5iEuWjMlzwlwXZH+UHC9vvz7/2wS2L1c0tlnPC//Ztxm3ilrtcu03hp9D
	 KowmSFRFAzhQyLGaUSKSloXakzHkyEYhkHpqW5SODRJU3SX5WnbtzZWj6qen4wBmhw
	 fREBNflEBLT1cdY0WnLLZEJZAmHr1Wf57C4v9ZDC1XkjcAmcFlS+nx82pJXD4KW3ZM
	 mQunv/kVooWIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC55CF31B9
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172789895362.22268.7523396858386506120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6322bf491d01e35ff33a2f3ebc015539c1a0823eccde0a1223a3b68603530011
Date: Wed, 02 Oct 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727898953
