Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354757262E
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778027854; cv=none; b=bPqvEmOAM+YJqaDh1eYYp/jOGimvfLJbKUpwBV8fI7WxYD0w/B9H+GyDUJqaHCiWV+balPfFkKKQXcyBVxvkGNT9HAYVoGG5311o5SXgq/2zpPt/RUsIB8I8waZyVT1tmtN+cbG9e5cma8o9FmDb5siTq68kJNMOJX/TL+fe1d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778027854; c=relaxed/simple;
	bh=opF6ZPnXyJhV8L3gDLU3AsBFF22E1G2d1p5igY4Adcc=;
	h=To:Subject:From:Message-Id:Date; b=mVbMqbaaxwKGH+/O0wI2FatZpzBKY11JufNYZwro5VwanTQvIp9RWHq2b1wKu/0mdKw++hn8lnk19lnWc/qO/KQb+c2PuidK5e6ugw69TP8+k8OwiFdDOo/R+z1J5SOnWMuYBFhYHnUV+wKBrerk26NkLXeThrUkX/KIgzNWy/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVDyMyVa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVDyMyVa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBEF8C2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778027853;
	bh=opF6ZPnXyJhV8L3gDLU3AsBFF22E1G2d1p5igY4Adcc=;
	h=To:Subject:From:Date:From;
	b=QVDyMyVa3Nyod00vx+Hy9hc6TO+KaFiK8kN6CjFAlBkFdTA3gylvco89jlF5CPssh
	 30iBAGeIxR8z+skOT8M1HSlYEXHqaic1j8VTkULqKUgsy0t5LdSalaChKDUdDpY5Xv
	 v10exRjdpeENjFqimY0imNLVkRGW32hi0x7tz7MBRdQ5L6tWcsRFtLzrXjlC2fQwT7
	 7FDhMHbnpSLRdeGMLhNaAZE+K41DPQUX2Mm3kpBf7EyJ01X4HqpS3EXhginWTKn2Mp
	 fvsht8WWppVMz9mC9uClNIaybs1+p5Xhb37E1UFmta/ePr6/naUvTu3ftb4zi/ZMCR
	 QSeUyXLeW1Xvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D63FF8855
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177802785368.8103.4570776938122209509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb2f5e9c486862aa294b1d860abc185218c682b9c1bdc9b7b0f2aa3effed7c3
Date: Wed, 06 May 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778027853
