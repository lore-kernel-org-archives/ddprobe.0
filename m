Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEE7370ACD
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 10:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783852714; cv=none; b=UCqNrm23D6P0GprRl7WYoTFPrLvpKIDmPfTD0NJiFC0kvDvgjJQSw1UBynD3xgZSpS2zxp7P9qaFBmLMZtd9cpisYpcpYYvejE52KagviEK//H5t+jZsrxSErITjU48P186ykrMWOn9Cf4kpIqzcKsJCINEwvOgzElG2sPidb6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783852714; c=relaxed/simple;
	bh=ebGTmDgeTqDIX5CH0NvRFTjRfz35SOYALpEyuPAoN1A=;
	h=To:Subject:From:Message-Id:Date; b=dg0EFUb1Hnuk0ZiBxH/RJchxhjbr5FjskutWYLXZKfUw5qiJKww7/mHGzfZt2iL6SJo5yst27fTPvKrGVth/0smguXSUKs9zI4lKtAeo+PoSWqt/J46/9p/bmy7S49c3PDbdxC2AmviFQOMt5Ly/9NSr5oy2Q4nXJnarwTurbI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsoUfVtw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsoUfVtw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F89C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783852713;
	bh=ebGTmDgeTqDIX5CH0NvRFTjRfz35SOYALpEyuPAoN1A=;
	h=To:Subject:From:Date:From;
	b=JsoUfVtwOxqddoovYo0+VxR4xUSV+2amyFGzej40EsAs+9+n4y5q3h32mgW2Tf2r6
	 ZJiAGsdL8TCs0xiXNA4FjX22tLY+wMAT/FETOOWgYB+xFmiL2MhcVWlkMMeXx++B3y
	 VPl9IQwu/uS3JoLh0gpG9trRGjFKfPY3osLaVBSfrCkQVQjOuEfHhUfSFsRJguv/II
	 yrOv9SunDtPxM9G7b7gA7CjwFl9htYrl3DMAyitBfizGX0cV5fF1wNXl6CvFrU4Sab
	 /0OvKPOOb7hgjTgyj6DNq3p6bZkf4/hxfWnkNTQ/3dxDcB97cxbkDDUueZQXLQ9LgI
	 KRQjLc8MlhKSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE28BC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178385271368.24204.1176631510925406482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d183d1139d5f75c3f7cfd44a51aa8bfaec2add37ffa2f815570cedea38c861c0
Date: Sun, 12 Jul 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783852713
