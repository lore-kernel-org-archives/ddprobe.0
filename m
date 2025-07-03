Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8E323E226
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751560194; cv=none; b=QQs7iv5YTNRQlhXhCMLS+Tsh13R+eVXrHX5hp0heoslT3rMiXDqFYthYqpriGbrAJmvb/3FFmWcpf3ja4NL71BVx3oDamiLwlIixrN1/nuoYHEWZEYd8tboq93/5tch8scQwMWZvmT2g4yMfCGKOLrb9QaA/xhm6WYFaeF7fVYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751560194; c=relaxed/simple;
	bh=co1AsLJ+ZPTDP8/j9JVoW8Xbn5Nzp0sqaQDWe45qv0o=;
	h=To:Subject:From:Message-Id:Date; b=D6q9OqeqRzscXhKtti2Ip8jqBF1L4i4XXgq6Cqt3iKMryrjWT8nW1QdBCdRI9U5NSpdGMnesI/2E97s+4uk8h53g4jmv/9eSFHGZ1FqVj4bByOw1Z+CRyNu8YR0QUzut0KoCASqmMM6mz37FLtG0DEseR0QIBuk4jOyq9XCfQmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VIoT3imh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIoT3imh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1332C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751560193;
	bh=co1AsLJ+ZPTDP8/j9JVoW8Xbn5Nzp0sqaQDWe45qv0o=;
	h=To:Subject:From:Date:From;
	b=VIoT3imhlYHQvRO4BRsjRBXN3peHw3oR6WtieLqFwOZT9CgQC+ukSRbVAZqGrsE0M
	 CemjK08iJydful0xVXR6A9+2RvLNfNIsmpUsrf05Zn2VTddzwZP2E+eotCa4cH53Vf
	 X96uJNWQLmMtL+f6hpNzluW2iAqC6mnXAHKZJ8LVf+cAI3C7wcbRdOJmUIe4w5lxwI
	 BDmooKDPi/UIDhEiwb5Pc688/Jz3vVAhJuyG3SJUqjhOj+IVeNDnwqkx4nCDK7SpJ8
	 YwJdCSRAVl02DYzQPuBPwzLs+0k/WDSu54d46MhS/EfaHXnH2vO0rjC+R0tbiAX3OV
	 8UG5e4wQL6/Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901AEC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175156019358.21458.10173541464563419611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4c9ddb4ca23a9533fd31991aff5e5202ffba214279ed78b81987f18107ca2b0
Date: Thu, 03 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751560193
