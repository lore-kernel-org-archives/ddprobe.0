Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96DE51428F1
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709239096; cv=none; b=VIDVemldX7fPugdIAo9B4JNuSdQCGA/D1pxf9CSVr/tNoFwfSUS+LArLWUEUf9T2+pS8AbRwfyY64MWThVwn5AoSDcoE5f3qPFX7quISYzPdehIlrQD57enbhnBMoqC8wNL2BpdqBqOkO+gEgYwAohd5nsvgR84+7tu+hjBX04A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709239096; c=relaxed/simple;
	bh=Uw/tZCQ1SY4n/L/8zeQYMSJ/pTVYdFA7OsV1Gd44ooI=;
	h=To:Subject:From:Message-Id:Date; b=irgYqcbkkeK5sjeaQ8BjpB7e2Av0hX+vi60rTZQ5tRjAskNCHfL8Y055E9p9agoWb3ffsraRl6ovm1dKH/y/riT1qgwewf4LmEdXigwItrOsTFCkGC0w5lk/CdIJudyrME5c1CTX0EMeukPG4SuX4ALiKbEa/iNzP0cMk5EzxWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6rHSyx2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6rHSyx2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78506C433F1
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709239096;
	bh=Uw/tZCQ1SY4n/L/8zeQYMSJ/pTVYdFA7OsV1Gd44ooI=;
	h=To:Subject:From:Date:From;
	b=R6rHSyx2WtnnO6WbAiti5tputBEIuvNYlcuLFX6ujJ8WS1iOJf5jOv6X80ClGMvcl
	 vl8deNL3wDLanTAtjESh70Jm1w7HVjfvL2Q634aJjgTPdxIjXXdF27Y88RQRglcun8
	 h9ZH+dcgkcfvxXKXNb/n/tN9XMnP8w5V2WTCukyO9DZI/srsyLmwEKBfQ2knfpXiXz
	 Dat4Xn9PS+lfiVEAQwUF60eUAwVIcO/4cvJBAfkDp4svW+c3yjQYGmHBsfY+OloQJO
	 sCrymoZ7Yv1v03SAtc1nFnSXbDK5/+rWuKm6IiF/G0/kd8d3LhrKTE71ruRl565UmF
	 G7CD0qx6nbu8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C20EC48BF6
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170923909637.11112.13357708061749205361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fcc725699f7fa52782973d81c223496c8713ef2c04e17b9acccd22c4c8f6372
Date: Thu, 29 Feb 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709239096
