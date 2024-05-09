Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D3A14AD36
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 10:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715248943; cv=none; b=klIfIQrSPSvBtL4cYCwkpCdcaomGIms83Qgd+7fNw5Vs3JacHOP5kzALPNEq2q4En1b1IlxbxuGCkct5DfSSMMSqHVBp3my+irljm7FO80wUvgtrIgVyjUhEZs0HuCbGBhpnMaXh2205tSpS7gyAnQ0KTjvHWBXrH4wcYwzTgEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715248943; c=relaxed/simple;
	bh=XGliopuc/RIbmk+YRcTtR2g13BXrnYtMTKFKh9zL9Y4=;
	h=To:Subject:From:Message-Id:Date; b=t4E//5WvpiUtoJFDeCpZi1ftIToS1c73+j1evTyz69BovCxTpAU2jUkIUGJClKuStBHNyN12gk55kQzc1VFMF9Z6gBDQdJHfhaG6nXr7IxRq5YUtIV5u1V2RSdDSkdv/q89VehlDuO5gM+qf2Iz78NSO71ihF5CBjAIgeyBRBqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MRtwkEyf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MRtwkEyf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9092C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 10:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715248942;
	bh=XGliopuc/RIbmk+YRcTtR2g13BXrnYtMTKFKh9zL9Y4=;
	h=To:Subject:From:Date:From;
	b=MRtwkEyf8uz3uqNLI4YPwhXwqvPntXiyzOUiPP1DtRxg1vbWCXd9/dVC8Y+YnMMtx
	 vjMTMYXitgBSQDtS9gsngDQChECCXA0b+kHKm5GpfON5SzSZ/uRcaxJesaCqBNUmS8
	 5BZ9oQtVCp1MAd6nhKJ23V86YSyyQfOPPYChKssQeQ3BX+IZt5BTTlUUU1tiFyGqvr
	 CRBhchcobniAEKDOShRipaqm1lg4sRe0VfLamm+gaqGOtYD49Brb3uC5otrm4jSBL+
	 EMXaDUtXivfka2ULbo/adRf1K9iqalt6yfH7T7jacrKGCiohZZj6632ctoLuqCLJBK
	 zfOaUMuFGXG9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8A89C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 10:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171524894281.1663.17181964637989038573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07e30e608117db144907146b55dd3d62439817608b246d30aacfa0317f6d0db
Date: Thu, 09 May 2024 10:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715248942
