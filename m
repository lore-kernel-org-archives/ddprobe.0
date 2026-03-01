Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D182EAD1C
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772328894; cv=none; b=joYMTPmMX4RJoUlZ1HCk6QVQNoClzcBKBEBMZPPNJpdL59Bt0zh755T5lWFNKS5okbJj4pAWT2tuhsxCJqC0hhi/DCxPaY0m49MQEMFupA1TikaK2u3WtD4AdevKvuMzg/GW5jTgWwJlZH+h6/RqmUwx5D6kpU+W0fRsyf7uNJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772328894; c=relaxed/simple;
	bh=YEdYjm0xRfQif3E/cLH4ef62LNZqNvEroP81pXb7d6g=;
	h=To:Subject:From:Message-Id:Date; b=W2jFi+dKg8rMN7f2LzG6MbsYVTE5BGUoGjfHG6y+viqFcb8vCMlnRxvJ5oPbv/fgm2dRXqrf56vWkVMJcxIy6Cosc0BKBUXxSjR2oHSqN9AAiIJrCcccrdkBlfOmqFJ03vtDqY8yDM2O6v2oFmypwfpnNc9CvRHnhwXX8GA+adA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PecGNbyY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PecGNbyY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA74C19425
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772328893;
	bh=YEdYjm0xRfQif3E/cLH4ef62LNZqNvEroP81pXb7d6g=;
	h=To:Subject:From:Date:From;
	b=PecGNbyYKFLAFsqR7U6z83mUBMpmVLe8i3y4uwfRDmufa9Q4PpJOaZPUNZKpcawoR
	 Ev7uo7LzL5jZeMmchJF2DHG4M0KLhaWHfMyBE1RRXxm5dbo51CU/LS+rMcNOrEouD9
	 suGvz6vzJdiacd4GMPehfFFDeMcE0P2We20JcRlcggAdk/YsWJQM40s6ODG969Nytb
	 tA4zj5CUcADCQgythzkTm4tsyH6PUAnNSnasYN++PWe7Y9dFsjtTelK/cEnm7pcc1y
	 rG52YMuxQMfE4rqUnQ2fRqrOGK9Dc4PqbacecypNdTcZ2/PSzF9Ls3XIJTV5iq0cy0
	 7dr+CIVIj+cEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3BDEFD0049
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177232889365.3104.2256680365100683192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaabaff3aa8801613c43db073c976f35c5655d17590c8f08fe8535aafc584d89
Date: Sun, 01 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772328893
