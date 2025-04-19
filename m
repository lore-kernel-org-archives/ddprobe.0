Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7153FDDBC
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745038194; cv=none; b=RK7ipmaOVB3lGqbXzEU7pVfK/tX+gtVlOrTf54znlvwlN1T53jn/EtCnqUFIaS/ZTBeOIduY18vcbD5j7j6jkpFiuC7QBHlCmN4TTQ+7fZeKogokhYB1vC/up4P1d1ZNg4mFKOhprtFssFhldYNxIO77Li0h6Jw3uYidjk5uCQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745038194; c=relaxed/simple;
	bh=o5RHejLPDw/wqdv/wWLaPb2609QF2A3zns/e7jRfJIw=;
	h=To:Subject:From:Message-Id:Date; b=CaDS1nNXu3oePoSJVY8gGS++0uZA7Rc9wMYTNtm+QB/MOdva0igaabwRob+5e7bcBeqsuHHTmT5875qvr09RZYGNPglkfVKoRV3aXwN5w6ro3VqcKg5Tc0isrYGMJPZI1FuDuYX9tVydoz15mi4V8Ct9iRdmrhClULsFi9uzeLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XruPfE9z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XruPfE9z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED40C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745038193;
	bh=o5RHejLPDw/wqdv/wWLaPb2609QF2A3zns/e7jRfJIw=;
	h=To:Subject:From:Date:From;
	b=XruPfE9zpxQMsrRUevx0iK+Vio535tLXpiEvjf8+dBBpS6sqlvDzjGIYPuPF6tqFe
	 Z90kwJweDzg8t313969JmpbAI6+gtOdnIas4JXOuwJP2N+planZc8BeL9h8v9GbLKf
	 dCwzOCi1KVyjDnPdp9BY8j6XBa0emZfZUvsaNv68mAQl7td2sCLP1tBIfppfTa2oup
	 X/w9tu+tD86S+p2kiTSDpTU1J5RhcQETl/07LOiSEtI0ZjiG+i59H9eV+KA025QkmI
	 aI2jpv4npC5nyxBF4eYgg/r3IrPImOVjhVHC0Ec6fvWZ7/qawPyrfMCgpZzwJe+OZg
	 03Vjgj+1ROLHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DFFC369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174503819362.15121.6978000874415347548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fc780012b24ec896427e1d300adf023e6d9bfbdd846e2aba33865cc9273d376
Date: Sat, 19 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745038193
