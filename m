Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2434618DB35
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750167594; cv=none; b=OCBRE1REroJZ1UKcxwLyZH/kI0kcfyTZfgkJ8qQUBFySNWSEjhksGXQbemSQZRZwtjeuZ4FKNqlXu8ULotwzM/aO/sxDddmpNrgqT3RUukSMnknWkbD7jJwi0j+6JUUkFoj3UiWK+npqlWhrrW1zXP8ZQoLwTFZhpXMUbTQ6NVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750167594; c=relaxed/simple;
	bh=9ubGOqSnUrtmAsntwdcwB1gztyN0rebVH3Iu0+QQ+W8=;
	h=To:Subject:From:Message-Id:Date; b=JqCX7G6PyQ9SjsxvNm+UqnYymtp+7VV1ddsXIeDz/1Ul2cRj/mYCqIA9VTNikVIOHEUs2kzkEnuYxNjP0pJL44S2qtqUC9CN1ZeW6hi2HjwFF9rzr+cVa/gfnN276XB+HfCaiwtcFJ7mIBbLNDohbpvTQAywx5tTCaqhNhctSVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckc2RfcV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckc2RfcV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68C0C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750167593;
	bh=9ubGOqSnUrtmAsntwdcwB1gztyN0rebVH3Iu0+QQ+W8=;
	h=To:Subject:From:Date:From;
	b=ckc2RfcVpbwA+2vSF25tHGTeRWq2nURKqC8gR0xsBmYG12wloLOMRcfxht8iOxy9V
	 uzJul+1Lv9Py7+KE3MxmXgO9BoCfMJpgEVmZBoYrKLwRlPaQVgJ944CsBxfiFHZkMM
	 PF1DdEpXDs5+XO09uRMvZbHLMiQvVhsps5Cgm5aM/tmWhuAeg8CIjYc9ebOZaEd0eT
	 zJgx+F8Z7ROTnVKL2YyyLVoAnFGNE0FYZPJn53OWCoQvkL+vBfb4Xb66hZjEJfChi3
	 RfcD6tWkKGLAXiSZfmswtQzkpnkTlDoHZ7Aq8PFirO9HV2RwfET4zxDWr2ENNH9QQs
	 l63lADPmgiIBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB9FC71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175016759358.8860.1726275931854655126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 492a1c3a33717fad9c9fe35ad6b2883ad63a61daf9857502f3d38f5a5f0cd098
Date: Tue, 17 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750167593
