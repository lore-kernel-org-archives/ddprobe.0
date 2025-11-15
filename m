Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558E122127B
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 16:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763223594; cv=none; b=r/CDD6Q0oF3bIfE6ly/QbieRlpdje6OpsYkcgPynBiqSqJbfngd64vpolVtzgdXirV/6CTzWQp3mVoVikEBHxRqVoVCAKZRfJMOcvLGPXCxdHoO/1RFQZOtwsdH0zhTXXQmfb/EBO4UdsGNBsJ0XsqXnvNs2InNUQdpD9wlmSeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763223594; c=relaxed/simple;
	bh=h2w1DDFGvBvkZ9xCUyU/8ZScn6eofqXzwMH5Sr4EsuE=;
	h=To:Subject:From:Message-Id:Date; b=WT1fZgflzcch4HW6Ye0k+OQQb2hhkIcRTdirVrlthiP2u1whaVbe1n8G8jwvkq5F0TfjhMc7v14B/MDWHpB7SuGjIM7kQsMK5JnWinncDLY0yfX3lmGQwHeZ5SxvVN7r8V+kQHxVDjvmfMsDtCZBi8aFpAD6NcO1Zq/MTaG465I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sF2yUqE2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sF2yUqE2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD84C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763223593;
	bh=h2w1DDFGvBvkZ9xCUyU/8ZScn6eofqXzwMH5Sr4EsuE=;
	h=To:Subject:From:Date:From;
	b=sF2yUqE2OUAuZpp7iOmxtAHicpG0AXM/zYY+t3LBxp/7xSXCy/n0TC1V79pT3yRHE
	 z6jrWs8dmWAAr5gSKifiIRWs/Wsc66PEGy+Hv2BqCux1LPz8P7P+ocXI12KRXWOoWk
	 KKE4leoMufGbKIy9qkuf2RXdBAAONIuQFZ+a6Q99Ok0WnQGdhIRgbuunRot94Q16cl
	 NFVYlc22iK6l9MhFcCW5/LTfVDYJoYbF6BGMDZsP7O56FYu05G3+7KrwqLZDCuMU6A
	 idYrN4CZdf+bvUNAtfNECQilNXMrr3o7gWB8sdcemMl49X2QvlIffin13NE65asnHY
	 Z4DbpIg26pdWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA71FCEB2DA
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176322359365.28664.8465943654748129928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6822d036641f6e8b84f691dac87ca55c4ff9259796017eb0e8dc2c10ed894b7
Date: Sat, 15 Nov 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763223593
