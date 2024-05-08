Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591F23D3BB
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 07:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715154143; cv=none; b=tOt8qE4W0fC4VaYGiifc1h/Q5MYeq5UeMQTVXgvTIyNB59eB+qqO94+Qxfg38TApqqnACoT9mq/VF8JhlOFclOnDuPcwnssiDyrMAIRaeiAC4dxvQAEqcaZKFAGKNrvNZB1c3z/5K6wSmuim9uPpVVV2CnKYqeidQ8LpKAuB4BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715154143; c=relaxed/simple;
	bh=xuSTTIJAl8lJrita0eQdu3yD5VOBiDLJ9GzAiRrkdpo=;
	h=To:Subject:From:Message-Id:Date; b=hTnocqsnZSH4UsBtwJcKtsFmauSIudl9n/ianYOrDoFqk5Nbn5LrKYxbjPBXrVZKkxQ4AtzYlSmaFWPTiHHKIjRbVhjLWzBlmRCWBlcoBz0llV013UgYqznv1ZXtgUpAm/zpnQxPcIp3PkZrnEPi5SP3r8jVedcDDUvumexbsU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLeJp++j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLeJp++j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCCD6C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 07:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715154142;
	bh=xuSTTIJAl8lJrita0eQdu3yD5VOBiDLJ9GzAiRrkdpo=;
	h=To:Subject:From:Date:From;
	b=DLeJp++ju/DSaRp0HpwuTi7bP3oSYY6rl5tjYRs3itNf+Kzwf+G4XZhJZ4gG6Sqyq
	 2JWmYOVKRMIsJflGAVHUcZcYJISZDUE2mrbLVoUWDeu+slm9YjZagnccrtDE/YI/pv
	 rWO6hSVVGrGjpINRG8W9a4RQ8fT5V3lg7MWQrNwRJQt4XEvidei7idJwWrngqtBhNj
	 jo62RPstWA6ErBJtZRKAJP82uokgBBLf4pUT1FoOSWpQitF5Qa1kunmztxJS0X//6L
	 aXLMHTZTmca21aut7eOSnGEYi9bZBRYPfD89PayGidSvdiz1Lx+1OgDJlqRTw4TW88
	 3rt0Qd35Njf3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9B4BC04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 07:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171515414280.17137.3214214431268057853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9bc4958bf09824bda44b0af2c03b8916d38a3fa59d552c04c4e6f27b6bc8fda
Date: Wed, 08 May 2024 07:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715154142
