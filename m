Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED665339D
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 21:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719611063; cv=none; b=UR3OZhFmSZj+/+pFZdNpEF+g68Sci3b8GADmAf/cN4yNpYNQgUAxJbJOAXPMMomRkP/ygPD6JcFRxgsepayJkMPBfLH03C/ghcY1rvqVGVqUYqYoIwGwY5lDdzxiJFWViZ7xvFi8xJSVgWdU+IFk0W3JJ7cVAZBtCSHERHcvU1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719611063; c=relaxed/simple;
	bh=i5+40oqonO5ngkZInPYx+iIPQBzGi1tW9gr15p2N6zg=;
	h=To:Subject:From:Message-Id:Date; b=MYiMBxmVtePYEkUSZsTJDWJUG4EJgbDyr8OAMXyDGr5janGLmjuGCEAqaMmnaEc39llku/yQQa1zt4RolSNua/OCPbsnczFeG+9ghb0d9ntzx6XKozKGOAruSaTzfju2b8pG42vI2rbctPmiZ9Ta8VPNBxPrB3G3otClGMVo4rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yz9lAbwD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yz9lAbwD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF364C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 21:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719611062;
	bh=i5+40oqonO5ngkZInPYx+iIPQBzGi1tW9gr15p2N6zg=;
	h=To:Subject:From:Date:From;
	b=Yz9lAbwDVJ2n3tsRYTj/4WIsJADJTZI1rRbTyCvZywNShi8zxz5qom40X2bAhQTHj
	 CfPkdG+IBjyvweK9247ZS4OyF4nAUKIagUpbDZv0kZRWYX2QVuETglRfWZRDfYN/AA
	 pDi2qv4PS/9kWoPERiRfCKHtcmqIZX7REHdXRxvVrubfoXGrne2llUicumBdjQ/s5V
	 wWzbAO/q/QoPJ0x6KFRAtd9835fIo9NazWFbdIEDNc7ke4Hau6c8B+1Jdqc0pccnpQ
	 tg94gpPUNhZ4yIVE/QiuPXIrG7Kgg6ZfYrA/0IDtLfq2yHMOyA5hcAjmV6GOs6rwfy
	 wA2alqO/RnH0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC72DC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 21:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171961106279.11138.13412770771471113877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b1a80c2634f67c3e27797a0b02ef38dcfa2097730923d4a7545c923ad434093
Date: Fri, 28 Jun 2024 21:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719611062
