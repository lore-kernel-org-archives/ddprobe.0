Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3C2154C17
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723134954; cv=none; b=dm6CuYoKi5UG2/56KJuz/9/rByfo508nWYuyVL26/BRtTlXspM6dnYalSwws73UmSU8Lm5+vdR/8Zwh/AXlf/xKhsXmxgGFban9CixQ8CpQ6Q9+DJrwGx9Uo/qCVhXmodAMbxS+CSh4iAdXP+OLjapZTL9hSefjBO1xVpAqanlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723134954; c=relaxed/simple;
	bh=QH0lYJWminVZZdR9tmS87faNuMi9hZAYsVss0T+6rMk=;
	h=To:Subject:From:Message-Id:Date; b=Uprm05CEpYFgHgAyuUf9Oaq+KS9kTUnrwGt0xm9uEuW3KeagiR7g8g7RvcaUzsVr7tBpFqZfKP+gL+hQDFgIyK0M80jYoVq9peECfP6KXua4lPcaySD/KxcIMkoA0ymzexMgiD+V914JEuXTuH2uF3G9Qs68MaOhke5PI2I/Ww4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f75W+bdy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f75W+bdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDC7C32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723134953;
	bh=QH0lYJWminVZZdR9tmS87faNuMi9hZAYsVss0T+6rMk=;
	h=To:Subject:From:Date:From;
	b=f75W+bdySnLLyMtlKptw/PRn3lM0bY4Awj3K5fYN2GdZGYj87wVJrGAMm803MJeQC
	 ZtobYovvfM4u9QXj5K+8LNa4n2a4ZYeZTkemkkDJAAGn8szehde8UbnK8zmW27N8U6
	 6X1NzO+TEhX/xcHAqLR3+cdJFnuuiCbwtol8SVDzqG6FRo7Pgsae8EiyaLPK/XsVkg
	 PPV9LAMk/RrwY18Fqwq/3HXeqUtH0xa74nPMfagRk0CjugofI8F5/pyTOQhuaATpM7
	 GtvYte7vsI4yOYnIwFDeatB9Ou/mdnsA5SZvJ1x6zKadUAYWUSpA+3exsLrvoiTlfK
	 K4yznZzPF4Mtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964C2C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172313495360.12890.11493037523391447317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5fe69ee53ea4ebc37e5683c530f165e9db5ce7bb1b188c939835d3ab3c62ef4
Date: Thu, 08 Aug 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723134953
