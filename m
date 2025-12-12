Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347B31531F9
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 15:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765551774; cv=none; b=tStvQuDDz6nXMlC8Mx2Uuip/bgco7+yLoyVYCaI2HLZ+PbH+MDPYyuMIZIWnVYXk0lMLGrykcj8R4fTw3ZkUkWP7mvhUMhb/dndyoOQNiNNxLpMPGLtso9og4C+vAhPrLIUr+nY+WezuGRXEi9cYR2kHw+dQLdNnpPXCCgon68g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765551774; c=relaxed/simple;
	bh=BXYW25U5Blz9g4PUn7gB7gFVMcSk9gTV418LwFgEoWM=;
	h=To:Subject:From:Message-Id:Date; b=nm0+XpV+CzP4zJH3k8EqiquwoZ8CzPrmePHDg/VuyY0YF3BqYT4tJ2OSI7BgUzOkRKxAJFQUXrIYX5Gd1OZW7Dbgyj0bSPNfuxWVbYIiu8In4YfBO+CybuZVciMf5moI3vXRZ66n1WrSE5NdoNbWH0yrckyFbhPRZW3a1vUizZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gF4TuL1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gF4TuL1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1753C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 15:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765551773;
	bh=BXYW25U5Blz9g4PUn7gB7gFVMcSk9gTV418LwFgEoWM=;
	h=To:Subject:From:Date:From;
	b=gF4TuL1TbP1ngycvfMav9wF3I/H1MZwDI29LvQs0//5XQlHSbDOIoEHhBRMyWsJLD
	 DcIKf8RHOh4tbzLjG+Trn6BRkcr4c1uKHuF+8PqROzfVid9Xm4/dWqv9YoLnDHYMWm
	 28RA/pC168OlX3nrq4UBAT7cdrpquxPeeNgHQHpLe9s1Nn+Akzo6wqL/vZw6H+pcu/
	 D4hL8Tm+UMP0x1mYZN8pgcdgco3273LfjHYmiuTJvnwcDgv2wfZKUC1uiuSoFXRGiU
	 S3Y33//85aMfHsu8dnftBHKee5JVjNQYsO3IVgTinhMe0dCC9g6mLEeKZeuJC+5cto
	 in1r2pWk3UQrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E255D4922D
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 15:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176555177360.32669.13505683722615266146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a1d369174ee52dd0001caa1101652be54db8abbeea58214d0c3073812abe6f
Date: Fri, 12 Dec 2025 15:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765551773
