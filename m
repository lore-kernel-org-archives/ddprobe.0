Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BC71DFCB
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760406595; cv=none; b=htC2CzV2S8uhNlJogamzoHKj9eGN0bzAD4PGorAedMO+X6w0Umm5dt/qe68O9JLrpQ7vwlXnqm6uCw33ycLbug36Tx5I5iEKpr/JvxUBDPefcT/cN3xAHkB/UG94L/RToafs2N9cLmChEB9yrERSPucXMVFt336GzkYYZ6OqzCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760406595; c=relaxed/simple;
	bh=ZDPLCkxfn32CoPfy9eMKXvBz4elyCnWgcumj25sciJE=;
	h=To:Subject:From:Message-Id:Date; b=NHQVc+hVWhDEMG58tBojfWEhF2UBkkt8n8Hnnq6pPO6jgVPotpemWgeVMbhCyUHqXn2u/w18xK+F7KiBon0JlqS000R2B/7uNRL94yvK/qt4NX4LJBFe1hjMyWye1cAfO5+FWR0RCVrdW2GCLwD7mNqwYXlFHTQzMTyKuaDKIi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPhcvfd9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPhcvfd9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5CCC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760406593;
	bh=ZDPLCkxfn32CoPfy9eMKXvBz4elyCnWgcumj25sciJE=;
	h=To:Subject:From:Date:From;
	b=ZPhcvfd95QTgi6tGpKrU7GelrFmeA8Cevb7iYMJpOfUVn67Y0+CprrVDbFatX1kn5
	 U8Lh5XOCbCjYOAJNuLoJXkqNTZLCBivhFT3UN3FEDYolAUeUAlZaf0qJjzwLzMPfP2
	 WF6HM38qe3dLq1mbKs9uD94SoApmFFXtiVmtA3A4fFQwNTq9yzanJkJNjBFZj2hw7m
	 TXk+WqjuLk4YkK/wB/8PtAaZhXW9qw5nd/ZaplwPemG9w9Rdg3C8w5Qn0RIunP3ZE1
	 uwqe5yMNnCt2gWHBj49wL2YGJGoBCeAdadAuxRiaGLzpqyc2CK9wDcAuz1IAbncPOK
	 vvIYvz1z0Eqfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F348CCD183
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176040659357.20017.968741824140585958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 208732eafc5015d6d0f2f2b998dc00be85f1c3efa4c8a2095a10f8336b386500
Date: Tue, 14 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760406593
