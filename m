Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0673E1CE5
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777910254; cv=none; b=XrgV2Fj8x9DHnHF1Rs+3PRiBYaO/lTJZkmPKry7PwYa1GiReBPfu/QFvCyDbfxSgS2bbLyPg2zFHTlVjzrsmJ0vWMXcOyzutA/Z+bia+M4PLSJt2T0diES6+cNfbPkZPqYRSVqlV17aMUT2V8poJTQdHiKBQ24IKkzpDPCxkpBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777910254; c=relaxed/simple;
	bh=FyCb9qMv1a+XbpznklemJlpPw4DOvESItdFJJCmpJuE=;
	h=To:Subject:From:Message-Id:Date; b=AFRVMAH3loCN852+CXBV4TITUwr5m8Y1f2msUoxgP2k6q4IpZoC1jOKXSsE3KGxUcYrbpxcxnN0y/DuYADXCtYHkEF3uMMVmoQSRofkpo8X25lFNZA5M/F9YPvjJ+hvhKdC2aBVHlFgos5ICN6KMCJODbaE9rJ/3lMIr8N0SBQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1CfZvmw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1CfZvmw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB32BC2BCF5
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777910253;
	bh=FyCb9qMv1a+XbpznklemJlpPw4DOvESItdFJJCmpJuE=;
	h=To:Subject:From:Date:From;
	b=q1CfZvmwP6B54bxyEFFe/ROB5LCRxJTbE2ZxaF6skTme5UnEMsh8nH7AUp6IgKJej
	 2B1ZUC/Twoau5qjEWqys48mUDCmTfMnhE7JGw77DSQE9oFed7wsUCqgPYHnECK6o0B
	 uieU/62/l/maU+9tQjbxFqEMS9qv7FncGbuL9RWRg/7Zbshl+TcDQAB45fiQZOqaLf
	 ARtTT+OjmSsjq9Y0DY+Q1LCFKw4FtjD94+qqcuEyN6BW2yqsLUezmjxOBFhIROKn5T
	 PWobnYKRD4F7Q9S7oPS1niDvXgO+rUlvioCo+tWcRW+TTVB6Ug0JQdBHKxH2gPLEx5
	 kexSbTmu4hsAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD35AFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177791025368.21902.18114570300285193277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693e784cd6949a71bc34efffb594b47a69c65790d9a87ee8c76c94149b8bd23f
Date: Mon, 04 May 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777910253
