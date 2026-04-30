Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200CA13A3ED
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777519054; cv=none; b=eacaDfSogGtIsGl/cVelA4AiCW2k6vHLlXQW+0cI5LW3Ml+xP5HrxHmwR204jTm30cSCY4wQntjndFq/B8Uu6YICA1QfFcExJeyflvcj5hAzN7+bRLMNTcj6QWaVrUJG/2bhvFwQ8FUc0aCmGv4t7SPBFSXJcmZnORpRd4Kv+S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777519054; c=relaxed/simple;
	bh=EcYtuxnubKST39ao2Aw1K3Xp5gLmK13/2e5nTBgV/hU=;
	h=To:Subject:From:Message-Id:Date; b=Xzv24otLrhiAe4Uez+H3yIElulNemNw9WP6YmK7+7lAXL+3RLA0cr/LVNZMFO2UMHhKMdZAnZcroJF+NuGJ526B8ScTPkWCFo5hrmb1GuaJ30XfecSI7NMXS3beFvbiLkOzImc1ZtMk2FxRRW2PR0fP5vsSB877EKbwm0avfp1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILlI7itJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILlI7itJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2258C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777519053;
	bh=EcYtuxnubKST39ao2Aw1K3Xp5gLmK13/2e5nTBgV/hU=;
	h=To:Subject:From:Date:From;
	b=ILlI7itJLo+g1Dey7QTaOv5mfplsVeCjwnWeQ43XxVWhcEaJZb3Qx+yEVh6m7cyxo
	 C711EvV9iXa1Po2KMJzE8kr8paYUFUAM5yXFL4YJfzngCCEDuJ8TYIM1OOEpmpMc9Z
	 mYohz21Ide3zG9zqZGAqTt1xw9+hoX5mFQhIbLbW8zFZ8dtSD/chRsEr89xaW9Gxsh
	 rzvecFr+VaGpyQzQerZbM8SoSCw9XvtatV0iH5muNwp6tckzXMkDA/9P7pbvi/Rj1b
	 QkAikpF+en8QK6/heRZVruNarR2cui7O4/rm/NlBXPclASS4oAnq/cTHc9/63bKHqC
	 eXFe1NUnmN8gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE3EFF8864
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177751905368.18013.4109549369384326574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fec10e664ed4be894782b333e8fc9449ec2fcba3f574ab7c7f6d23f63e2e005
Date: Thu, 30 Apr 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777519053
