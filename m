Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208D625F7B2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750289394; cv=none; b=bGWcJjIG92ljCf9NfyNZgWyamcVypbxYOg+qlSD3ukIgRTj8gClmUjEWydRTtISJzXTTcFEYuQnA1AjyWwyAvKWlTNWwMKrl+SfTuSCMAJW2RLcnTPXvIzUvHv84VrEsU4Gfz+38UZjsp5IlkOt0/kAQKe95JinO0QJRd4YMoJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750289394; c=relaxed/simple;
	bh=MAwO7Wnm4TIVYRb+cAhqlXez+Lj6oGmPTBzRI7YJ4Ws=;
	h=To:Subject:From:Message-Id:Date; b=g8aZ5XiNxo2jdlYmH7Ao1ThUuM8QpuX+7ERCXmzyQF+pdXDI2U/fy2ZDwnYG1yMoa5CI+8mBbkXezPhogJ4l0fEL8znrRYBIp+8bAcD3hSY9Mb2G4Td92wc2OLHWVpFWE3tCvLesZiijTs0LQb2gVkDR55JnCCgTL5gWtWxXO7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFSaP3f2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFSaP3f2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A821EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750289393;
	bh=MAwO7Wnm4TIVYRb+cAhqlXez+Lj6oGmPTBzRI7YJ4Ws=;
	h=To:Subject:From:Date:From;
	b=rFSaP3f2i8uyZiyO0yqgnA8uU6LV6QwMOsY9i8pMuumhS+iCqvR4mFx7S4KoXIMw5
	 y+OkxkkzL6UE4ZDXla00/v8HlUUep676hXDalIi2ACD/J9Ww9aLaNdwAFB8+hpVr7T
	 U0QDlLC7qQF6CNUc6oA404szny+Tt0LDSPMp/JHL9hcSogYl+Jrmlqoj3RHqRzyiNw
	 qiFUioV938bFL5hlvzKsmHLMKb9632+QZxfOnsT4v/vCWe7fEKF+hLH2hinFLSj3Mv
	 Xbexb2W59uYtSAZddZ1KU9a1XpyD8qWf5iDfs48aFzGCfJ8nMrxql/y7T0SW3hREoO
	 fIe38TRcUSOuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C7CC7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175028939357.24561.14329642293075292004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6db914bc12b27368fc82b33548cb1fd23cd4509a12882e72c1a35ae39be573dc
Date: Wed, 18 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750289393
