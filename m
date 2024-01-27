Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB0D225629
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706367497; cv=none; b=HKWmGUxPxP964nkMI5USSeAZ935odNxJ4GiSLF5GVSQ4CvLhFrVnFbc/oHUjrC8tXh96ZmqDjdxYuhJYf5Dq0JEDhwOr23LNeSsJAGYd/oD2YD27xpVpQufe4eU0BJmqjCX3KrB7vjEeBPCM8WxMKtgxih7jNSFDBt4/+SczSPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706367497; c=relaxed/simple;
	bh=pfOyoU9XxNx1WVrLCYgPTEIVrJR2RhGguL5xICbUYew=;
	h=To:Subject:From:Message-Id:Date; b=SOQg06UlbnkuKW3dREvrpr/daQswpQG2KxSY+t3g1yJV85sXs7c7521Up2hKuWNDIJmdMJIII4wg+EMfdgN8tFQIJkd3cpkTVjAlSaqgvteMV0qd6sSiK8TIuUk7zlQ6pP72hGZDVQZfgxRo8jdXuW++LSSgl8vGLK+syWs5tYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChfSMj6p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChfSMj6p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79D26C433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706367496;
	bh=pfOyoU9XxNx1WVrLCYgPTEIVrJR2RhGguL5xICbUYew=;
	h=To:Subject:From:Date:From;
	b=ChfSMj6pwYW08wR8gMtxjbWasAezQ54a2iVHL3KYM5mWBmbGGh6aI5mZz5CkhRv4S
	 xRz6XqHayCHyw4aoodSDqAys1JtQXRM3SlZptonVRa23MV32m6/lDQRLU3O/oBnTmW
	 YhkGM2fxM74e476C5Tv427PUlPLPSF2FItLSMzRhDPUaWE+GnDRPThAYv1GBfTq4JX
	 FPaI+XIL0rbcENwEmOXWYK7qaoOp2fTUgIrSZHrAfNvFiECK3eKnOV8vyQOrf/hsGj
	 pWSjSGHpsL/Kl6ohIlccWhl5U2vojOSr4wumFclAwaHuzJ81y6gXo/l4GLELoFqGhA
	 agIUSjvD2Q7oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6174BC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170636749636.1098.1276783691088589186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05b82580d7563118075f814ea39487bd5a8c17e1e78c8575a9b7d77f28682500
Date: Sat, 27 Jan 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706367496
