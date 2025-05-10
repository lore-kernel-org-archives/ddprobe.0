Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F77920FA9C
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746901794; cv=none; b=GND/kamLmM51YbRYKdplyShnF1codMl96AGruvW2Y7+CnftfcsTlvTF0M/7wnRvyH4jc14Y+KJRsJ1Dx7KSpv285SJ/+TbnUMrDSo/1OQtN7bQyumpaEu5fOhrFmXxCIL+CfWSsX4msm+t7XUJUvkxQEaLYMD/IS/+rkeiQVrRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746901794; c=relaxed/simple;
	bh=O6tTsDnvB3c8VRWhMUIhNPiUm33+dO/22Xm2VRGFilE=;
	h=To:Subject:From:Message-Id:Date; b=gkuEVie0aqi+WIXWqv+p5bKCeobcmt9fYtwB0NL0bvKF286Tmg+omNAvUKATC2LEPN6ZG50YCipFIEv38w2zElBCVaWQZK6RFo8OVbFwUvoXFa+MRyR/HBnxnd/oISTzmM59tFS+JLDEGIsI2+ELE8F9ROye2GucoosSpH9wMCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtclDG4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtclDG4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2640C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746901793;
	bh=O6tTsDnvB3c8VRWhMUIhNPiUm33+dO/22Xm2VRGFilE=;
	h=To:Subject:From:Date:From;
	b=AtclDG4C1p53xHSsuVeLELvJPduckEFRgKP16Y9+27TeptFFuL3sGugKDjDbGwUcu
	 TTwpa0XvRQ0KLQqWNR18mF4lZ58NlaxyIcVj87HI1DTf0SWl6O7UuiG04fsuflgeDc
	 KSKyYrevjT+dB+JGx8yRZtOprqp6CkyAYqFfnsHidasWdjHb4cs5dVj7Wb/GbnAh5F
	 5PUjzBImJMrGYMz/6vt5fc3kd6qPn7u1tVnZKnxfxt2ZXQ/hyzUM7eN4Z1RZUYkUgL
	 JKGPrgLsQD363d5W4THE37JUSngC9dE4GJHWEWImd2paYmHPVLUkvdUdLciYpNoelt
	 pR6S/SKxVYDXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEC1C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174690179357.16569.9275720700330610521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e3ba56f8c560129576df5dcfe984bb1f9036586d0d2bac484ed70825d7ce663
Date: Sat, 10 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746901793
