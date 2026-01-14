Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7FFD2FFF8F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 18:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768415034; cv=none; b=OZBV7KR6iVv6kCtR6JldvEl6g2zhfxGA75nB6UgYH5niT/L3ccG+PcRJCFhuPBt0IUf1gbmaaPpGi7ohKH8oC3w/lnCguy0jF/MAC/zzQPc030u8J6+3lc5BGuZoCNA3kgQ3hXO4ydPRYCTWBXmhGiS8FuYTpdCq6iX7J54YClE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768415034; c=relaxed/simple;
	bh=4HNbVB9Jb1mzeXXQ4LrqkFOuDQ+cKQhdUeDDfy/h/2A=;
	h=To:Subject:From:Message-Id:Date; b=enSJ/DemSLopo9+9FE1sX8GE9U0zkj2e8hrcjQiHg3JMZzxMGNmDr1lnHyxNW7k7KZxPXV1ewLfoEToP9VIH7VQ4E5dkvl+3twidJjHslyIJiolRVXynNdl4H9vOHjLATMz5cukSyTHi34z7aHpx7teuODZQWnWSGxhCq5BdUlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1PCj4/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1PCj4/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3154C19421
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768415034;
	bh=4HNbVB9Jb1mzeXXQ4LrqkFOuDQ+cKQhdUeDDfy/h/2A=;
	h=To:Subject:From:Date:From;
	b=r1PCj4/bjUxGc6lmocus6GWX/RtnMOmQU3HfBqI/k/UEXjuozzOsRby45+zmOQ/ol
	 IRwT+3CexIH1up996DmiXxAvjgLSvKVhx0ztQYOFeg6kB4j9g9oegZJ8lKyZiO/nBx
	 uhMFQ4NvOGATuzg5tOlSj8NS1XR+yMATK4qsjpxY7S4Ac5q5FQEYGc1JR7SPzUi22C
	 MNz97jOHj9VfVr2+4/ZWsw/52Pwm1o8QMdPiS5kPvTKw8DPENT8Jt1CLP46h7tzw4k
	 SsajjR7QPa5+f7oKm9V8IfyCbqu6ZIV6ZMZ0QwyaNEfr7BolIhSCAQb0ZR+fi3KP4u
	 rf1Rax22071zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C99D39007
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176841503358.22163.4633790411014876245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f0eb59e41844ea2ffa31a2d62edba2222e7e44256b5141693696f28cc9de6bf
Date: Wed, 14 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768415033
