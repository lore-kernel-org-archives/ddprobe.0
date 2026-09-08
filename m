Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA3C3090CD
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788830435; cv=none; b=skCCIy/wvLq+FrTZtijBc2P5Sn9Cwem26WlprF8YZVDM8djwdwhPV5hHEuW3Hv92AEEaynRGy4NY/9k0y8uNHXUhOHgUPi80zVSK/4ZBEqUFp/1LJFBan5hyrG2nVyMOkgDVmZXrUC99C4BPNSXaMffUnfDqmNG9JOlVtB82tus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788830435; c=relaxed/simple;
	bh=YJCixyk5Fxiop3iwZek6MoHHchP7B14AOhwdrlSW1uw=;
	h=To:Subject:From:Message-Id:Date; b=LFv2SBIiGgrT85Czbv4XFJv/9yjIkdIt7V4YFYM1nALfhtzGMLnAiEZ+YlEgVPgQV96gtgErepXDBHuKIgVEBtLMIw2RK83p0L7V+DLMrQKsh1nVAU8a99PHAxxjIauJIJ6ecQzouy8jEY4S1dVe3sggqYnlm16zLtOk3viau2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnkbyAsH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnkbyAsH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D523FC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788830433;
	bh=YJCixyk5Fxiop3iwZek6MoHHchP7B14AOhwdrlSW1uw=;
	h=To:Subject:From:Date:From;
	b=OnkbyAsHWZjGaEf2bhV0/uj47cHkoiQP86Mclj+01sOb4tNc/HL0p3ieZIlCKthVc
	 /aut/O7/+R/+l8KK/Xn9UkXibvlQMhuCGxaPY/y47vR/dESWOuee6akbQb8GfBQUKy
	 wU5xrUwM0g+RZW6fjMhZAzRTxdmiNI+/mYonWm5aSxP8xuboEZ/XzQQaeeN8KQnQxk
	 OgKvHdAZk+E+PMBMU22Cy9OMK30UPk7AZISGTcC2R3zWdpe9nrnUKxsYh3YsNPK4sq
	 PJfXmB7VLiq5KrZk3g1QLTaN/VLRPm4bffvS9rUUDW5NSwbwo6MM4ID/yCX3gZAbKE
	 tHpuMuZCAItOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B49E9C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178883043370.20383.3651398835302925649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c1ae4184814ae33cd8a2f099d88b6cc10a525d566b66072350e59c3d087d730
Date: Tue, 08 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788830433
