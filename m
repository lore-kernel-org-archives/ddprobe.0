Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD3232F770
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785358834; cv=none; b=Z+ExwV+lzoxFhNsqv0OczK8QuxCUMeBrH9XFr3R9cXEFm6INi1EwxIkeYOpxL/g7MYSqDN/8kbhrLMqe666XqNf1jH3x9g811HruqxmkAjgh+O/324YpNlKBLEYOuCbyhOAMZMrP+IOSPxFV5X7En/ambrRRXJXvUqQnb6kwV70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785358834; c=relaxed/simple;
	bh=TF6nnjpo1s51k9gpLwrQA3MYP46zmHjqyO8EEvz9Iqc=;
	h=To:Subject:From:Message-Id:Date; b=jtrBwFXU8lHAmss544KtFSHWtKUoMOMlJyAl+7NSSHzIJhegVO2uWH/6/xoEus/PNewAOto4cKb8zL6oYbajvbLQaqfJpL0XGie2Fq4gSiego0Y7H1lMFDa0KWVv0JciA3KZC63KvVsbYklg4LH9MYukunZr0glMaGmVCUcWO2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFhZ88U6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFhZ88U6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F22D7C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785358834;
	bh=TF6nnjpo1s51k9gpLwrQA3MYP46zmHjqyO8EEvz9Iqc=;
	h=To:Subject:From:Date:From;
	b=NFhZ88U6qBmZo/6aAgvdD9aUP5Q/5aQU4ER0OIsCcBhkQLN84T9ZkWFCze9apGVpI
	 oRlYpK0621qrdgxN4x5PCKvBwIAB2PJrp81drEJWRwMReahTUbiP7e51ItaoS4R6Zq
	 u27R1w6dRjiRiqsebtNwjh+twUadLndJ0lfwk4baZv1jNB2Xox3nI26YejQgps6Yog
	 jO9X5OsS0bdc1PsZD0xiY/GDFzC7AJM4LgxQptsInAUf4eObLveaMSKkheNcfLVWaT
	 8cgyQ2jqtj8N9712ueBLWiJljRgED9KoJaT9Z7CB9DPAs0VGXARqAswnHi/SayjQRx
	 w2ObwdmzWtf3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5A1C54FD4
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178535883376.21425.7169340388137436853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6c7a7e500801b0c9e62faf604fd1c8c24da14f0b862339d2b1419b445a45b46
Date: Wed, 29 Jul 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785358833
