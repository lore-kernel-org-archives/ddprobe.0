Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A984B0489
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789500034; cv=none; b=h//w6GQYsJzBqTi9VOwAz4QnrARNgSH/4amCMt8zWrTEGNVV32OC/KQRhquS7r+eNzj4RQGf3KqhXMUIwjLlepqzlZc46NzYimyJl6NlHg1rRe8kPPR2tThq4+6Ztkx3wcdjKmGERugFmtj+1/IBeH8qp3bQJ3aEca6IlnAH6Mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789500034; c=relaxed/simple;
	bh=rEYdYJzCq2wAmhh5phClw734cHY2HtXgjauWmxG1nbk=;
	h=To:Subject:From:Message-Id:Date; b=uMs3EaVMgpWvuT00kKVlbv8fAE4uqepd7rFJ7N6xL5ZFALrlaPFeGX2FAA6Q1v1W34oICCrpJMa8xF2EdbH6r+9rAAc6HHNX0dxfeneb7fit+7sezpNrDu4OuVM3dt4EP8cReOsktJJvaXepjDhaQKv3+kBdqe7QpH2xOCc32h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNmZHPF3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNmZHPF3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9E9C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789500033;
	bh=rEYdYJzCq2wAmhh5phClw734cHY2HtXgjauWmxG1nbk=;
	h=To:Subject:From:Date:From;
	b=VNmZHPF3rSeq3PhnHy7ryU2qmje2TC35+wA5JvdSIqvU0fLmWcYypwrT1JRWh91pE
	 12Tq/SBExnR3IvlYk/Rtgdf4HBAFUpv4g9G7lq6b4iGhXZBDjZwTKzvqMKdrpBOPjT
	 CDfEi5e9X3vPtg56gi7jdvnAmogeIkEpbYV6ow7q6XMUK3zKM+c7ByDiD2cOTnKMR9
	 oCSVV/xCgfXz4xjprfWWqtERDWs9rDyUSsCa8Cgo00nJ55teMpTKXOdcXFkdXMN3Fs
	 wdiUiWgWwo/70s+jvkSQZk51bVhxTuROtVecRZ1JFQbx8EM+TkBDTNuxZKg7Gd0pjL
	 wzsx744+1n/dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA107C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178950003368.3062.10584796145813911963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 594e52aad859cd5188c18228ab18637595fcdd54ca4e5d0af0684d2bcc1b5755
Date: Tue, 15 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789500033
