Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC45C34B19A
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769790233; cv=none; b=GPqrDMDAKr1uY7QuvKSiuI4uKb1FaN+QzSTZfWjYp3G6WBWqQ1SSKwV/4n0ApUU6Sn9MOvDtxjmX/PL5wPeTFx9lrhobSOAUlLlPqSWxmCnpVAXCFa9D7RSwWNaORmsuKkZXUzBBG6rB+3407t8m5MoCIeRMZmjp2SZ+po6lQv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769790233; c=relaxed/simple;
	bh=5A/UZL3MihIXMia+XAv9KonD6sUUyfnOVCrnU8V+Tlc=;
	h=To:Subject:From:Message-Id:Date; b=txiQpCDV5irfcQNxDyU+OMuU6TU9yfqF4jF6OecmuRrpMzV/I/s39MPyCdwrazclH+OLbV7aIveKc77Un8KF/Gcws5kIoAUSKIdY+B1s+jEoUXL3g+v1kQrIpvnnAW86sBSgNjU7KlKx+CXVXkhUKks1OHCyq4j49YJlxkdTSdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BArWFJbn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BArWFJbn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49ADC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769790233;
	bh=5A/UZL3MihIXMia+XAv9KonD6sUUyfnOVCrnU8V+Tlc=;
	h=To:Subject:From:Date:From;
	b=BArWFJbn4JfSllbdSM2mCheJvQt7PQH/aJtvO1++nu02+hJdV3U4JniEKTcVYdK9S
	 Z+a3D5l/6lGoSMqD9aXS3B17X11vvAJ1M7E5Mxga1diQ6XnK7ENFTlsenuDUR92qW4
	 e4KdGXsk5uIfvM1TmK8E/O3eakqdnLiIY0yFiuOUO0lX42fVS1PqIhkTG/PZ9nQg6Z
	 ajcTr+z1vJc6IwcNQlbs3A/OsGVbMHGAKfGU7g/+9vCyqW56Y2h/14/AilI9qp2Dj8
	 jIj6DM3zonpcJBN2HMKNopeRB0QFKBGlCz47Xi0SkH4vxDz3UHU4gP/khjqM6e7UTu
	 uThUuaVbQCp0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909A0E6BF27
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176979023358.12780.14948490244905157913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80ff3cfb095a134b88462b9e114679fcca07393443192d957a745e8fb4b8af05
Date: Fri, 30 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769790233
