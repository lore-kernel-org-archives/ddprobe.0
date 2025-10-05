Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4637350276
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759628394; cv=none; b=PzF/C2SBS9lzhS2TsXIe+PIXGnKWxeu78lpr5iaTiC1VL5fnR34R1wukJuTGwekyoiVxq+3W41KFx+xIwjxy6YckxFxVPJXX5Hly/GWxSczjdzUO7SwJQWGprxdyEalCZtoO0KvsVRl35DdTgpn9+F+tRAxbMNi+WQ/7SpPfYFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759628394; c=relaxed/simple;
	bh=DplAyhONx7+7CC89Ut/HF0esXb8maM9KIrsYaZnNYSs=;
	h=To:Subject:From:Message-Id:Date; b=otQaevr+Yr6/md0usimFBYpRpLmQTWzo5YgMtvZlfKL0hrN9rnBPcV/+ivhOtGn6coMV2BU3rzZUnM8FX5ks55vJeJB6ZT1gp+3AMsBio4qdRHMtQuCUnGpWrOde8J6RDK4yeuOl/gR3BlCCXJm9jB5xxPNB2CKJSuK9pr+62FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nomMYXCM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nomMYXCM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8449C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759628393;
	bh=DplAyhONx7+7CC89Ut/HF0esXb8maM9KIrsYaZnNYSs=;
	h=To:Subject:From:Date:From;
	b=nomMYXCMK2jBIsT8IyPJtpHSt4MoR3mdMGhrSuu7LkkSyk1ykUoNyHQAJv+I8Ic4y
	 q+ajVvN0tXLBTEmuRYcXbdNxpXkq4/mh8BkYGCLfowZvNoG6TDNuLQ0t8SdmF4WC0R
	 /WzNNwWZ5Tr4I2deC9PPqLUK67/LImV4nZVTSPnebo1yWOiA2yr4oGSfvoLH2PL8yt
	 +PelqELZthOoauaOaq7XEqc3ykkYjwKejtAxu+/s8H5dPaDfjxjPq6z2VQpKgrZ50K
	 yY1qCfzpEqnEpyJEcJT0o4WgdDcfF867ahuAsEtUyzvpyLDR2/JbWVd6ypcV6uyqqK
	 V8V7hwcqft9WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A53C4CAC5B0
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175962839358.19347.327331495843863543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce62dfcbd5bd60bd71f747e475e26c44f5d7f0ef5102693544ca4945c637115
Date: Sun, 05 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759628393
