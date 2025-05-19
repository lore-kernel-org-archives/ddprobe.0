Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304A01DE887
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747622994; cv=none; b=QcBR07jfSvB/bQhtcXWoE5IoTT/COG1MSmnRAdEo/PNb+yBpOH/FvZ6HJUDK19xXAUB10wyYxwIqZoy07fJYeAPYzZAL1WC9apPJE5+oBd8yeUkwrgH58BnNIDealdlUG6EIeeIV0MMwFa5Nm7ecAq2WVRIKZTw5stQChO1aIc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747622994; c=relaxed/simple;
	bh=dm7N24vPe5C74VXIQp032fuB7Fqo/RtKhTkuSJ4HveQ=;
	h=To:Subject:From:Message-Id:Date; b=rAZb/rd6MTsuzRmE8GCUGSWsWuZ+b42jeEEInz5ipmWDZ9dknFJowfZz4osQmrvil4xOO8wWR0cuZhih7TAkEVdBRAPv+BV2HlliQaOwvA1cgm629ZtG/YRL5yTZhjzg0aKDkr7VXP4PxYiRvEYJQktwDNSDW6j5N1JmPFYrAGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KixSHIe9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KixSHIe9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1378C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747622993;
	bh=dm7N24vPe5C74VXIQp032fuB7Fqo/RtKhTkuSJ4HveQ=;
	h=To:Subject:From:Date:From;
	b=KixSHIe9KfU9DUfi3jmVhfqcJs8PwDTGMD2mSiCpmY8cCpwQbdX14k/Op9zOUu75J
	 grVxTn17UkPwR5EUpNX9RL4N5/i05fL/l31P1XnPb+aDKAGGLRaZuUs/2ScmtDql8I
	 2QKKlVi7konDpJiP9LTIrq7HJwAbGxN/FyrKEzq49XJcsxGLUPNnybh+4k4vkv4PWj
	 JdDuu+ADvoq5mutCyfYCGVO76z+UoqSslGElqdX8CmpseRRw+dQ9Nd/0Fozw+T5jes
	 fHT5EfYSpRUuCc0MAkMV5QMfuQEM6A3/GTp97prWURpWJFY2InPnlIcw/xzq2uu4fN
	 fdTI2Jb8P1puA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBBFC3ABD8
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174762299357.6948.11056042350785000145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 645e9086a05f5e947ccfb787323f09e25bab193c4019351be9c5d3c6f397ea73
Date: Mon, 19 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747622993
