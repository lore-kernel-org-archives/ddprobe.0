Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ABD933BBAF
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790206234; cv=none; b=MU97JygeAVeGzZManyt1D66jHO9XptBcehV5YL/qUa4hxV41Y9BCvWlxqPcXWlEZ0c5XZj8i7OQqJVNq0fOmcVBnzIGm+oxR4Vr1i5W2szumk1Ct2/6Y6VAsw2Vk89C9w6RzfeoS6+ghLPdTDioPRhQesxAnAvOMmNldBlOlMng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790206234; c=relaxed/simple;
	bh=w1JuR92CXY7tvN69LQ/JCN8bUPu03gMswO2UB9xrqR4=;
	h=To:Subject:From:Message-Id:Date; b=BhkW6jQUyQ838JqrN6NPc1bw8LysgZ66y635d8gG6IUxI3TGBqFKSKOVmKL286zKQFr7AEZ6S4OX5eHCHm4ayU3Vw7W36rwZ4ySESTaL2VdxfkeM9L6JXHk4gWiGv+04LdBNIX7VDWzjjspoOf0fT0MRcx59J/hbZkbNYnK8im0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3WT5XNN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3WT5XNN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F02CDC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790206234;
	bh=w1JuR92CXY7tvN69LQ/JCN8bUPu03gMswO2UB9xrqR4=;
	h=To:Subject:From:Date:From;
	b=p3WT5XNNeWH+wNS4Vm34VgIhhPUUJ+/9UiV2ORmEwHkMXtcDySJY0GN6+e0SvmGQx
	 s+DugUlbNa0hJPG3rrEzfK4nGJwYM/Q9fHSsoOLHfPcF+waPJuHB+OHKl8t/x/3QYF
	 1Tw2F+GqI2IbRbe48dhZ0w92+h1zvlUU7gqS164XI17pgy8ktohRDqwqocOjWL5qG6
	 AyeR2N5/OqUTa+sQu8t3a3Wthrq78z+rYpH1LUKJT0krzkchlWu5N4XquCz0KSyinx
	 CAYgSXITaMKdlVDep51BGEj/RRKYjDah3m5fdAY4KiKKcOd2PsAviYCZyXoA7V/dPj
	 ikpSJ19MoTydg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9337C9830D
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179020623378.6434.6676809127592454601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e37f41c0b437ac03c7caf7dbd29cfd191665d023d96fc205f19559ca18c995c6
Date: Wed, 23 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790206233
