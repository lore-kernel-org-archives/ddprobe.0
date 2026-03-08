Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E16618DB37
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772934294; cv=none; b=KeJGXOu8VsaaFMIyc5bN+eFQx7dpcHnXHgoRS0adl8boc0lPS+0LIDmVsyVmOBt3mOpXKGsaVGfMjSCn6VNlWas7v9A1Pw94FRNsNKV8jGcwWtO2FN7mcbsKOZAuTnnxOJ++Hy/BnLRpdU2UiGXVOHIiLMO2vf+oMo0LjQwGQLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772934294; c=relaxed/simple;
	bh=nI/pj7pScyVYMvVMdZiHm4A7E5PbwDLUeewrOnRtt+s=;
	h=To:Subject:From:Message-Id:Date; b=d1vF83apTPxZhJNTJ3Qf/s0b9WUzt1uEDyMI0HCLTLYzmrJfb79u0x4MNhN+6LgEDZ8EmO24+WoyXIwFQ2jnU3Xpdz9KdTHbugKngVw+lL7XUFzAJzYOhUZIrme6noaviFasHZrsFYu/7VF5q323fzwzCE6B2i4aBUmcpKJ3egY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzdgDgsN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzdgDgsN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24C6C19422
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772934293;
	bh=nI/pj7pScyVYMvVMdZiHm4A7E5PbwDLUeewrOnRtt+s=;
	h=To:Subject:From:Date:From;
	b=bzdgDgsN3q6g7lWV9CmPFdiE+UxF7u9ikNxUJRAnc062lhJpYmhBZDUvz6I+mTygX
	 R3XGXzyAcAxD8H733TaNxQuc5R69WaJshSD7btc2ZL9lLTzhcj4ORX9WOkNAmFWld5
	 4Wd38pw3pYGg1Scb+vdUVt3PJtjNTCGe64UQnz/iVVSBik95qIGPBujJeg58nESV7G
	 R4YbqEcbflncn2usWHVT2uicFZHLygj5zjf3zKZBeLtIkpn3YNPerif2pWUu7sw7zw
	 C1SbIkgLFlPWMaI1GSHATs0a88ROlILocQR5MQAc5KckAxXaaxgRDX/bYyARd7o2KF
	 Ed3B23BGuXlvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C0CF55123
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177293429357.31652.12266540227673778377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc37c48fe6873b2115a344ee7064ba400f5ea92a185b8a2bfa03db50321ce423
Date: Sun, 08 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772934293
