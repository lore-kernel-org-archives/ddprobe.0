Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD40F2E651
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705609696; cv=none; b=MBVG+NMSZCcyBQ7wCGMhfwXVh81RMspbwX9yEshMjPNkBSXOBL8IW8l9qI2PALRs3g1Gw6NfHJGx7+wS+aRTpFrBzrV1wRnoPfFSUKVvg6GTa57rUqsftV9g5vj53x12JapL/UtpdLzHef9YQ6YBlb0BTB/goIPPeFNnIEWIlyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705609696; c=relaxed/simple;
	bh=tFr9eZ6+f06I++x+d2Ptt68HaW1j4VQJiKGMcFnPdMI=;
	h=To:Subject:From:Message-Id:Date; b=tOdWhlAJh1rOCQKf4/ZzvRUSs/ga84oz4rVnRGKz+aReoYetgcijtve9fYnQ0tC2xKE0YftUjWP2z1p25tUKCoXjtfUeLFbmR4oyoymDFTbDs5qI0ybb3vkJv2b5SZ0Aoo4C7r66Wi7iKPI621w98j3d9kAn7i+VGFPXOqY6HIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cL5iN0h/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cL5iN0h/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79579C433C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705609696;
	bh=tFr9eZ6+f06I++x+d2Ptt68HaW1j4VQJiKGMcFnPdMI=;
	h=To:Subject:From:Date:From;
	b=cL5iN0h/JJjusR8MwG9goEYZj4lfkAEtF0KsHPqpPR5iyyh97+3uuPEUV0WiEWS+O
	 eGyNPtfmWqQxHPtu5HWbxpSZuqpinnACmctEonOLeVw51hvQFbCQQ35+szlqs4sRaH
	 YEq+I+siPo38ItV5DyVO5HNEt/stMiP5v0lfy/OEd8NZ9lWGWVPX8i2RWPE/IOg8WS
	 nvlMqJupwjw0xECGTtPM1TA7gH0I894fgb7QHxQWGYoF7MLLxlDKik42v4jNLVxsVD
	 8guHeDR2LWPOjkazwqUPiHwOUSOVZGSr4+ZmFScSQO/hfnjydUlsfysTdfSf7h/rnA
	 VKD62QDm/oCQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60DBFC47DB7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170560969638.2360.18223963209138850328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82f7aa660d6dbec0e74af50a87c53cb00949846b246f25015abbd81d9a107a1d
Date: Thu, 18 Jan 2024 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705609696
