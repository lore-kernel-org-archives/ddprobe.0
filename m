Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B4738CFF2
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773656094; cv=none; b=E2j4dpAEgVH8cr4eGMU6MrBQUKrsdUQaQ6fgp4CVq0OHNZHzJREPyHuBSNNBNFqAydSC3do83/CHx/468Tfh+6IWW6Yt9YcgFY4JMvHhV5adN/k/JCYeQkop5kWhLqyyUstDA1Sliy39THwgSakRxs3fjI4A12MeNT6wmPQ5MyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773656094; c=relaxed/simple;
	bh=X0xU4do8TUADiVSJ+YIJCRdJY0185vmx1av7ltmAtRM=;
	h=To:Subject:From:Message-Id:Date; b=pn0Bqxfh2m9RjEFS1xQCswdPLgRBDdkjcy/ETOp+KnfXAkwmprqVgDiMo2j+4gR8WhHf59C8AkZAHueZom+ZwHaP0b8d2K4hPs4ilmPOUiX8tLfZ6qsR1p6c0Kc1wcQ957D7JHl9KUCtootQBz2pgjr24o6vT5nQioe0GxJebTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qd8+7GFd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qd8+7GFd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2B6C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773656093;
	bh=X0xU4do8TUADiVSJ+YIJCRdJY0185vmx1av7ltmAtRM=;
	h=To:Subject:From:Date:From;
	b=Qd8+7GFdfxhZlX3oQEYkuipzR3JgIrvyHYPtLA6fYpmcknrjKbCOSE7oySCvORBAn
	 PEZeU1BKnc0uoJhik8PI7kgIPdtrGSN5jgYy6l295as1rl0hUcYu+B7HbpmhwzTopx
	 AGDCTeOEgE/dmR9iwSnuI0FpQMTx6aAQ5To3lmPphIMwyPFh3Lsz0EHKOyJcMCpLvz
	 tcxG3MjT3YLf4APUnxd0fceLc2XIPTfa0SypTbp39AzQJnYKbe5t/KNgsjV1ws8dv9
	 mDygTNq0axUYiuvNG+wxnPs+fUSuSH8VVfelpuGexqnBg9YLn/H4F+XypMAPlpzU39
	 hHkcFTc/80/Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5E5F46446
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177365609357.10923.12800413502874806155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2922fae52ebf63e3e639f73256fc24a9fc06f9565a8d9e70863030917c70dd23
Date: Mon, 16 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773656093
