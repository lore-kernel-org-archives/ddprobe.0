Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A134170
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705709897; cv=none; b=hSXTOcZwZ7y2dJarofZ/hAI6AS2sKvKY0sTUr40I5fhC7fcDJaX5Do2IgrW3yRQvCna+CeyKSLuognxnnBKIB4IyB7bZrRTM66++KA/2ZGm6QwTiQimiRMSM8VqSMvRoP2urg6c5EVgzyjViU2Dg7bVVQBJmTwXJe7vujjINFKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705709897; c=relaxed/simple;
	bh=/DqLv60FGCd5D60tPIIZipYoN0geTVelOQUwZFp+31c=;
	h=To:Subject:From:Message-Id:Date; b=L/eJoMmyvFXmFgwfrnmHrqoljvFM1qKI9lj9CNCe+L/33Goj36Ny049a+LTbTii27LUd5DhPytphrpDqhXUNnz6GY7F2/RCH5bd+3EM55pXEeiwAEK98WCno8zB3OBHL2MUHnu4nMTHgswbciX2E8hsFqJIgxEt1fuFfndGwJkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvPNiNHO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvPNiNHO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F8DAC433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705709896;
	bh=/DqLv60FGCd5D60tPIIZipYoN0geTVelOQUwZFp+31c=;
	h=To:Subject:From:Date:From;
	b=MvPNiNHOsW/FI1/tBWRnbhtqaGc8v4i4RTEtVdI9QPzOq4a3F/9V3ui1N+faIfOOR
	 DHr8cUoKhA60i9iAcMDbmi4JH5WSfKGxAGFSa1gsQ9PCDBZo7EZdf79HMCU4tcM2jJ
	 n3iJv9WNnJ4nUCIU6p9jltKhzuQJXMWE3McBUrpo3+qVvSKcMUuRL1XGZEIvzOB19W
	 T1V4KAsEiBQlYS0cL/5eMUUZdNafL8cetG4t5T/FgC4aLiKFydC1PIz8bB2OK7MeVc
	 gKvOJnOjLWl1ZR+gzarvuVjea0WydYR49M5jXT5K+QRrf2x/OlR2QSv52N296JaRLg
	 xrUwOcvwLNi3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A45C4725D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170570989638.5201.13467017411670128188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfe486379061d63542f1cbce602eac05fd1007d5cee91b75635356b4e98f673d
Date: Sat, 20 Jan 2024 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705709896
