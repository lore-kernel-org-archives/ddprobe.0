Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3BE18FDBA
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736609754; cv=none; b=GJznhhMqEAzAtoj2qyuRstrfel7DbrnJxAJPzi/trtD9W6te6m46/xPUWgzBK0Tkkz0r+Vqdj/ypemsQnAaH4sUkHR1S96+wENm9hRP4rEdJNLWNMiHywn4Pc1MJmiX600NnmuNVdR8ixijovdhpoGGEAE+66PDeCLSMSd9WzIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736609754; c=relaxed/simple;
	bh=T7Z9V47TbUDGgwu3nMBIXt5AILTC3JR/8p6FMjGzgi8=;
	h=To:Subject:From:Message-Id:Date; b=gVCMPZ1kHB2J03fr+TFBzSDUjQm5caW/5mplIvXQRhdYpF1gafIB84VEJqcz435usoKry9cvnC+FWNYt910/Rya9lMEEn4TnPy6TgOb1XdmPhg4GEbg1YejDIoduDWDGwVqU9RaP18mFOF2VQeEla4aM9JeJ2YtcMOWB7fAjyHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kuq9bmS8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kuq9bmS8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF515C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736609753;
	bh=T7Z9V47TbUDGgwu3nMBIXt5AILTC3JR/8p6FMjGzgi8=;
	h=To:Subject:From:Date:From;
	b=kuq9bmS8fbjXGzwEclux0fUnHC5ke/9eLsyBVl0/rqbd/4ArYkzMxtejsCm9ubo3C
	 7ArcC444SY3Z1BsbTnQoHJaZTwZbKtApfYWJB+UYoYRZ84mQezTI77iNuk6LTjJu+2
	 vZtFcNVLVVsuWNaVlKm+7C1AGpnFtvkf+TRSw1OhLCumJKwLhjimlb5vhpQFYWrpJT
	 8LR0Ot/TJ7mF0VDlR9FO7OsECCnXYqfWL8iTHhwc7vxWt4raRhMiGnTS9wGhEjdngd
	 O7dmGo8hliDuvqY4EBdfg/yPeoE2CXv4QfGp3ZqSwJli+XiIktknvWRTLkUOZORH30
	 4C26ixV+IBnlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E775E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173660975363.5143.16259930482232504254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4320ba65812051ef5c0ce63719066edb2b6947136e657c21aece00123726088e
Date: Sat, 11 Jan 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736609753
