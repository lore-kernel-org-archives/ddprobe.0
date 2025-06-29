Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D34128F3
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751180394; cv=none; b=ZisCsaEUatfWM7WEJLSadkeWd3PH24eAfKWVzc5XgZwnhuN39DEAVxXy2vkhqNuH7HtBNFXLAWADCHFIKFN1zUgSj5jqXmg8k0iGr5EnBgsCKQGBFQA2vGU69xFw3c4qcj1SkdTdWHUllL0Te199onkz+QBmAAfOZMx6da/KBYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751180394; c=relaxed/simple;
	bh=mBfuEC6KastlsgldfTQL2BldXU/w/BrZcf/i3u0/0rg=;
	h=To:Subject:From:Message-Id:Date; b=joPkl95GPaBdQDtco2CV8CxzIRg6MSVtt2VKOY9Sm8RepVg+bWmjkJIFuz8G+Pm5uZL1g6l/YwcX4D6Oem1/ATh4K+KMWBEN541vQl3IP/WXk5F6gyvxrIdO8BwXEyV/INr+WXN1H2i1uF9xchPasrk1JTBUrKt39TjbVzfd/YQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1rHoXkq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1rHoXkq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B894C4CEEE
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751180393;
	bh=mBfuEC6KastlsgldfTQL2BldXU/w/BrZcf/i3u0/0rg=;
	h=To:Subject:From:Date:From;
	b=K1rHoXkq6IQg7A0x38FBRgjTwwr49XYF3cLOrp4WH2Ecg3OD1yRO8kRt5bIhNdXDb
	 lOMNqN5FQFbJWkR/ZwGtwUyg2zdpkDVe5okFDyBIGa7Js1jntv02S6f4BGfNZZI+Gt
	 pkglXu1yTTE7v11SrC2qCp01zxcH8urm4Y6/zypN0E5qsUpa2uz09iTozas5Kmhom7
	 nWwGkNiKdH7MjiRTmavbvcwsHvT1Kh2xGzwMFLug5lqRpv/txDiVtaI18hFJNSeID8
	 jQ+hg4xx5UsNtcYf2GZ6Yj88lNeOiNOhSqYZx/r2VkzErIrmsfwHlT5tIynebQDOsu
	 FKfS0uRgrrYdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0E5C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175118039357.27892.18246486618101818725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e29c893a6e34761f971df483cf3c923a36430cc5d1bb467989ccab84d2d8739
Date: Sun, 29 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751180393
