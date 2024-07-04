Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5323B144306
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 23:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720137323; cv=none; b=J6O6BT63BakaHNdj1hQ/4k6WlRHmNLNUtO9lK83u4ZtPe7gfKLwefVx2AuuC6HvtdOfz9iMb8dZ+hJNAl+W7x1kejzOs8JmIEnOmwRg/Bx2FeW+ml/BASQ27NL2uqS0J08RpvHDcO2RuS9DFb9DyHomvnE72+0cDhpKa8syv0hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720137323; c=relaxed/simple;
	bh=fGrmEVeFu1AXMMHVxBQYM5jYvIXB9XMnCQcV9bJBjY8=;
	h=To:Subject:From:Message-Id:Date; b=tdeoii4NAdzjDg4WRJ9al+zyQKF6dCsBurDCdKSu+9v68Dc3RX5H1xk43oWyYDlKw/theS7yYiNUYc3acPOT0xJZlIPeTjPliGKXPgB8bnbe0MpeY96U9bT+91fJ+cQjXByol3LPq48f/+BIIEoxhZbyLfYnhIXDE+1fhy3ezFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8R3KMRi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8R3KMRi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DE3C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 23:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720137322;
	bh=fGrmEVeFu1AXMMHVxBQYM5jYvIXB9XMnCQcV9bJBjY8=;
	h=To:Subject:From:Date:From;
	b=k8R3KMRiIkGkiyetKcJ77Kym+nBH0kT8/lQp04w/iUbk4c2RxNbyGME2psOy2mtUh
	 z4D9/h1SLxhqcpR6w1vBPFUNbnXcCy/aliSgPMl2bXLvOODJa2ABDa5CTmkzcbl4mo
	 Hc4bXAh0sCgKKbd9uu8lvRO1bBj8TSlENPYsVeJnHKSsvt+CyXb+Jh5SbvpMvsqt2M
	 NLDsNSkfGD43MmHH7KJLXnl+3+eEHb9wn1RvgI/l62msp89G2OT+WsiZGlNMWlvq3M
	 r08C6kcLHWhC8DBUeQtWM6wzVnO/kGLMToxdZdF0WVjDWU5t+bAboA+NoBEuznt0xk
	 GdMJiwY0fo6Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3AC5C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 23:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172013732277.20802.640486192319133027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7c834ccd3344d07d933309cb658564d0068a823e8cfa2b6c2b732b92be9e0a1
Date: Thu, 04 Jul 2024 23:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720137322
