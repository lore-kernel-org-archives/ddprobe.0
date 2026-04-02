Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2EAE36DA0D
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 07:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775116534; cv=none; b=Qh9aasnbisgVMHCuaiL3LhVetNJEI5h7G77XrQ5SCV16EjSe4P0D6+COftZFZnoOuDVLSRHOLEaFxJcMChE9erm6/z9lCvH5BYlZr2e6G8d3diT3WUvs6KiTSxJs+1L7aVp4upm8rfu/UsK5lDOTfNTyD1Etgnwr8AoGUkbrnmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775116534; c=relaxed/simple;
	bh=jT6aXgWnf/BYPJaHtBzPlFzMg5/X+Bz6iVz/mTY92e0=;
	h=To:Subject:From:Message-Id:Date; b=ogC4wE9W52NSM/MzQ557aoR8NtZf7EZrSvImQfl+a87UwqcdnQfEn4JrrDsqenIMDhY5J1HkwavLO0IzS9GV01HLBHSKkiyqwMHWDOG1u39y4SfHTi/CVwUacT6H9chVk2QJjcNcmGvgcy2XxItx5XMQKe/3GcZUAe4g6ymfvkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WsGilMeO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WsGilMeO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE1E6C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 07:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775116533;
	bh=jT6aXgWnf/BYPJaHtBzPlFzMg5/X+Bz6iVz/mTY92e0=;
	h=To:Subject:From:Date:From;
	b=WsGilMeOiVfw1ifMfXVuSDLEIHbUh53pSMKFKmNxRvYQ3fvYV1Umb2pH2G+UXF6iY
	 Ai5iCZ4DcnbFQTmgp/H4al2TJFO/kebz7st2ljrQ/umOELM66/Yo1A/iLL06Zlf8Qg
	 p5RF9RafiiMQn2BbblLVu/3mIRcsygvpBBM8azvolLIiXX9K/a5Yf5Dh9s3GrxC7xx
	 uvO+nJcI/RorfvaUT6KyeZ3dqdCXPAxt+icm4qM4zQXS/B4cIqGAzLooN++NOA8FTH
	 HVDOmgnserCO2VaYsovOrxnp2I/VSk//NtZ5ymBg1yDC4stJhAP4TZ4WNy82Zna35b
	 66aZe35wsn0Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE78CCC6B1D
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 07:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177511653370.10337.11891930165792029190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3acab2e236d51c4d333f3cda0542224e25487c7ee50023bccffa3637f9a1e6f9
Date: Thu, 02 Apr 2026 07:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775116533
