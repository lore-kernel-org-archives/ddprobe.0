Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F1E847127E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791531034; cv=none; b=QwBqor2RxsOojtIJ5eIow/uvkbDD1QF4EMcAlJjsvoMKYWbFitnEHNPb2giYIjPjqVZXw+8JtubdGcc6UbO6aYVSm1nS3ZKSKsdQJELGKSB6eJaGyTLRnjcTsCH4jT3LiKyveJMAh/vSf4PaX2RUOafL21wOk7nfmhe2OVVcGak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791531034; c=relaxed/simple;
	bh=gsGuL6U1NVa5htaHYxP58M1lEVPeTWDg7h6YcuhmbzU=;
	h=To:Subject:From:Message-Id:Date; b=T2j0ujbbWUHldSR3lWCK4ScIHd1/Jma5nwp/hNSD/JJtrTEYkph6ZlmkDnMgerYeI24Du/xFi6SwDf6ZEhmBX0/4U/drgypCByVx7MD0XK/jpreEvAShwqsNKbGqhG2hrR56yYREi2jMbMoAIdQqGLiXpRHhDzs+bmWlZGgDSFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9ZPfU2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9ZPfU2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E80BEC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791531033;
	bh=gsGuL6U1NVa5htaHYxP58M1lEVPeTWDg7h6YcuhmbzU=;
	h=To:Subject:From:Date:From;
	b=u9ZPfU2LzPc6CEUfePvglafTG1E6CATc7nLOp18lFuC7nQM/E9U6G56F480xC4OVO
	 WQTfuMWv47Xjvoh3sSM1DmaCx2DC7UKuNCb6AeiQkh389MDSggb7YmiaSF1QN/flQg
	 FEsDsNbFrdCFr5NxuSH33CrIx+95JkmoFUjI6tQGL0zWVrEPTwmkdilLaDIPkQAxTw
	 cFw3hqd4bypH12wRC7L4tdVSy+l+pPa41AttGUn9Qf+wWd/fvn+4piPyGndAk0u8QV
	 0U107DaFZepTwAOQw7j3Tzh1JCN2/LcUKM0raX6zZLXdB/U78dJhp0nAlYJY6yWn4l
	 zc7bbK1omWoyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6AFCCA6019
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179153103369.26955.13379233202276066864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f38210155f57bae897217988ec0e7f117c3af716974923bc106f509715e3d17a
Date: Fri, 09 Oct 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791531033
