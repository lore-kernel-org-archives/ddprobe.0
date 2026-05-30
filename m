Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3222165EA
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 20:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780172674; cv=none; b=c0oS8uQ/Rx/EQH+rEisTeZHYY0OJwn0zXH8YIBoLXOKLFtwQM4j193yzhQRQjY8nzcMSFXOQlZj37BpSRMxJokhWTPusT3tLZkxfZu24g62Qy+XHQ10tUk+2Wk90C/Jw5FIQzagkSSCiGELu84ullBAs48YYMPCcbNRuyLKjnGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780172674; c=relaxed/simple;
	bh=u/U1GphMFr/0I4HCBcY/19+2P39DIaYrRtmDxLu0b4U=;
	h=To:Subject:From:Message-Id:Date; b=PxEtS/CLGnga2zpqR4qU6m142JFU6XmInlhMiItSQ0VG4sQvRj8MqEy5xCCLeZEKii2+FXzrMZz1979XyBp9pBjPT3gZYczqNl770O1wM8TRPlM+fk1taHC1hpq8PtzQeTshfWltPs7Z2q70UxRiyQw+J0SX+r5lyDzxfkmb9B4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmSET9g3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmSET9g3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7494C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 20:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780172673;
	bh=u/U1GphMFr/0I4HCBcY/19+2P39DIaYrRtmDxLu0b4U=;
	h=To:Subject:From:Date:From;
	b=jmSET9g3i0GGHUY00JoLp0xbLv6BONOHqmZFr/UJlSdojwV5zQwdqcBTlKU7t5zO8
	 w1CUJJZSNC22p85wYaJgzZbbTCtccYIUvWLfWlo1TCOwT0ysGLH+IdqIcN8imuQmcv
	 FqGo4A96KLzrHhEX3wdgA/QaEi7LknIhwFTJB4OEzhbn0hvacpDTG6yV5YZN30BQQr
	 s70sF9XGM47V/UiXmXIbx/q1V6+ZMt1YwehdgZWQQPK/0dhyZaSDMNPFqeVz4Zx/Lo
	 XKW07sIpsr5UdYR21+kD3cFSNrShfL5fxFahJa/9Pr3JCF6LXj3mVB37opR9JS4Mln
	 ia0VNuQ+2OJ/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD850CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 20:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178017267369.8151.14862570193859048428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40aa013c442a3cbf0a1bbe322f904c04c1f4e04ec8eb81959146ee79de303761
Date: Sat, 30 May 2026 20:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780172673
