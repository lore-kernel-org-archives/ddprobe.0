Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B80313958B
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 20:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713298163; cv=none; b=FuTm3sf4zRh1dJHAKM0NMoHtEK7TymDB9pELAksVoQ4GrndJi3/bM8EeGLYCuYSCZ3x6BNRhkRAIolWZGEUpJ809IgPuqWiAA7iaYteL5zuaMmDONVpNQAOG/98Hw581CmxP6sGLuKB4r605xd+PS0/SfSWLAPAZPRyAhmt+sNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713298163; c=relaxed/simple;
	bh=c5CqbkPUUz1+/DY4jnEDrvDUc2WX+UoprRtNipxPokg=;
	h=To:Subject:From:Message-Id:Date; b=uHkQG5FxS6goNeFvL7QUzaXEiGHkMVgrq7nIW8a2uWPpg3shSfYN24d9JbkhcSfWd9vO3zbOlar8zOT7e3cRHsJCb5he4QUt+w1/Q3Ylp79xN7EoW1YpQ0LP4CesWrAxwsZmsTE106NrZCGicuo9uHHpW3KpOQM1FkzV6no8uTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jg0gV8Ms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jg0gV8Ms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6534C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 20:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713298162;
	bh=c5CqbkPUUz1+/DY4jnEDrvDUc2WX+UoprRtNipxPokg=;
	h=To:Subject:From:Date:From;
	b=Jg0gV8MsGoMADehp+vcpsH4fHfQv+6uv0eiZbX2QBpiPJzDD6Epc+9A7VflXwFSwE
	 zbuT2OoC1HlvrlPxgQpm94eaFjXqwYNZB0Xpr1GKX5CcLHsgibR1txxvqDQD5dQRyd
	 N8tCEPZKz3n/kwDfnvRxHhchy8JVFhv9tirqO8jooKgX4Qbto116H4A+aPENiHr1Sd
	 F+0Gnkii/XuaNjWmXxb7B7Xvjns4sJCnLAA9961wIVe9azXi+fDE4zibbaPRUMM3F4
	 I9Yc8DBGObtfbTLAHLbeK6kWM4wPGvr4MUCoPizlscNTf5U6Ci6EO0BVipYwweRp3r
	 Xbqh5IxojmTNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2DC8C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 20:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171329816278.24252.8796532582693256101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4af746f6b802d4382cbb36f97b4ceca3879102f2c2c7356964ebae566e01ab04
Date: Tue, 16 Apr 2024 20:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713298162
