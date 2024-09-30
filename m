Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123CC13DB92
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727686554; cv=none; b=bK4nfhC5Ot64j0Bpl6kof3hLNpQGapEg4ZyH9t3M17zctRadLemYeCee0gBjUGLGTJWcG6B+wFiYcoCzouyiuwN6s0myHYeE0SCdg0tbLIvljXC+wTRORpy0N0EkZZZ1PFNfuEGdiIUJDqoD4sS99BUKjryb4bI6JCmDXBJf97c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727686554; c=relaxed/simple;
	bh=99XeTNcJgbJmxLRgSq9mV39FNOjQfuS44HdUEx4dN4Q=;
	h=To:Subject:From:Message-Id:Date; b=nLBqivuiPtqC1MvxSY+wYJFl0EQHqLeq3zzjeR+yJghulMPt11fD+/bv6LIed3Gn5lqxY5gP/DKOVdjBwRtL2iqyxiEesf3Nwv9a+XEZHj/R3vOKyJ0Q+JlTdPr0ke7yc+pIlKINuCK8F8ZfYMoJn8/36S4aMGVOittpzF7oUmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1paakqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1paakqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52A2C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727686553;
	bh=99XeTNcJgbJmxLRgSq9mV39FNOjQfuS44HdUEx4dN4Q=;
	h=To:Subject:From:Date:From;
	b=f1paakqNJaYXFtQPBZ5VAhEaPt30CXbamKasSL2DkWAd+JShZlB58T189oyiwObfx
	 2o2UBHULYkBgAv0fOUnh6xhAWafL/roqqCt4J2z2kim4wXDGfVPENtHe5G8FcXm9Zs
	 aapR5jfj53FN4TLV9p4WVhm5vtBSomppIcwVbUrSW1sQq5ZRcL/Dp9Ja2eW9+gw98Z
	 xw6CHeKZmuzAsaKRHdoDJtGaZuoArJe9Y/bn170SLwZK8S/eroDcnfC8Xz1jcntz6m
	 IimyixdyTTgWJA9XA9Wz5IzdCdepc8FcqVXoTdWqdWmv0PHs0mZc75hfWT1JSfExXQ
	 cDYntKjUeZQSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978AECF6497
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172768655361.24496.10450776602257173074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e25b207df498727c0ea44f1e445bd484d761c5f4f898dbecfafc5a135b09a6d
Date: Mon, 30 Sep 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727686553
