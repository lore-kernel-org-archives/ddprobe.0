Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C0E19CD1B
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 22:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779403954; cv=none; b=Q8LC9f+Xmg3Gdq67ndpULoSOkp8+Dwq4QKDMSh0KT6nlaDw6bbM8+Yr0PdzM6H/GQ8vMS8ILKaz6GhUWvdpQAh8SCogzLFFJmdL679ALwqjrfRnP0x4OkmppdU0DpSS7XzOVnsabEj1qKJ/ip6JijFOAiVdfOfP0PWdcZx8nQzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779403954; c=relaxed/simple;
	bh=MhTIM59NVomzyfu2QOtjt10OR3QegcyiYga4ZLbQrr0=;
	h=To:Subject:From:Message-Id:Date; b=QvBrCKXrquGK/cScnSCEU8q0+7zMN7M2J2hlLHaJByPYiakeSnfz/xExLWWEt/ExWwSAjRORtw5fGmkI2iLzq+XgIkijrrHzgQ0c1Hqms4gNcAf/JIXU5R8tGam8o2rGPx77r7ILdb1jOQ6I5kje4BHjjsCBTNZKXah45LmY9Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZOe7wxVW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZOe7wxVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C714EC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 22:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779403953;
	bh=MhTIM59NVomzyfu2QOtjt10OR3QegcyiYga4ZLbQrr0=;
	h=To:Subject:From:Date:From;
	b=ZOe7wxVWzdjAAZAkD941BXu4oLNoOMJeFDdN0+Ahj5OXIUf7bzxVRceVBF3N0nbZ0
	 FtcUM3D29sePqjk7wy7bI4qwDbTaEaon/Q57RgL4Bp2FrlrrtPj7ULCdWQ+wxgBCL1
	 0mmyyZX/mVkLSsonr3VrGAZR0b+htKtsDZhwy6YWv408JqHx544tB3rPFQTLG6vgYz
	 xPNUKnp+Q46gpnKDdbsGJq5wjSx5YXcFlgifhpXeoyDgwR32iNOfPChcAUNnBlP7v4
	 2uSTgWaZIl1+exSx4JfdQ2zF8IpxCI63Bnkpa8TlFo9ctncUVcF3npDQH3YKtcxf6i
	 rB327IwrKlnIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1F5CD5BAB
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 22:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177940395368.31447.401842482607693061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52aa06a63f0f03d2fe54cf45efbe6016414b2e073adde1113b8974aae6bf7f41
Date: Thu, 21 May 2026 22:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779403953
