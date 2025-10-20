Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF4BC21ABD7
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760990393; cv=none; b=BwO4G6YkNEuw4L+D4KKKOLstSipmCLjHwqgf+pGulqQWJ6Lb/a2nNOCJwm+KXkGADbxMquBdZj0SCinezQJeSBCwSUTwpRFxU/x9kG8efamw66/Xcpli7SUee38DJMPwdED4/AGVArqkYSL+DvjBPPg+6QXqUhyJnNNsgip5M9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760990393; c=relaxed/simple;
	bh=kP18ximFEJe176mz6Ijy9B2XezyN5OBHuineDz+4QnY=;
	h=To:Subject:From:Message-Id:Date; b=amrTauNAeQ0YCiiWrGosCzorww1C5XT3cw/4BEFCbG0W7GsGObU9E6WWytWlZeDxEKJB9bb0EcspU3rCCwiL3ZRMuNl+Ca5ByRPmBV9SacBXb9hlmYPPFj9Fxa9thU7udDXfwMSCjS2LHAOyV7avBXKZ4g7k+ESXJWzQvAqnygw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1rMYmkN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1rMYmkN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF2CC116D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760990393;
	bh=kP18ximFEJe176mz6Ijy9B2XezyN5OBHuineDz+4QnY=;
	h=To:Subject:From:Date:From;
	b=N1rMYmkNmcFTZQq9//E0zX1pkHS7a5m2GL4IJth9AAhppfFUDuwlb4YLpTMCMWa3x
	 e6qjGCQO5pPR+IQR0n4ELaUKVGUJmB7eJNx4qyHRA4ijI/t+NQHZGtbSs1rMjGsxq8
	 LR54oNvtjoovxZR98Co2hNZ+QDukFrV8CppOlO68UrBgeQaUco5435bgOSALywHvQu
	 oA1VyfjX+qBelzCmcxIsmJRa9W80mTW/jHRrdgfR03HxRaQpKsHhp9cQ3vAn1/848b
	 jJiiksojNkZAy1jVU++RltiE12JXkW4VRjVHSTeH4fyHJoPXyLYydM1vxlPrdxEOiw
	 bOwIOPBPiKfwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F81FCCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176099039358.11812.8697092551601078961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0a22d5ab795848810e164684dd4b09f1c31eee1d2ad5f207df9ded77da38407
Date: Mon, 20 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760990393
