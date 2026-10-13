Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABDC3D2FEC
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791889834; cv=none; b=kZS9tu7ANpRsnGjZzLNK7+z9yHLxGNoBf/YJCaBfNpmrMpA3TFh+06jAnwCoxkPhSNPczQ2kFdXS8IJBKQNVXHwhbCQC2KgTa3Qx6EEagp7M6qz9niDMqGgna1HXJuS8tVvKJ1cYN1QWZX/q0wFSZLgVqv1x39ou3Rh5XkPPBnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791889834; c=relaxed/simple;
	bh=LcXTjto5jtltqw2whK/JR0VPu8KchFji93AGQAdAZH0=;
	h=To:Subject:From:Message-Id:Date; b=IuTN/pTYKk6BAUt+SxT2aBkNK/cVH5O17uYlCcGCcCMLKvfR5+kvI2gtjUt8Na+cXJvTxYRliDfObJuRQ8XeAp4EO8NtoXhaXVLdS2+AIsX+1n6OeyoMfigCc8OQu9qHHyl+5kQL/KaDXNKDSGu8z6c9JezpPuZF41slNFh61bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvNmzA8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvNmzA8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F26C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791889833;
	bh=LcXTjto5jtltqw2whK/JR0VPu8KchFji93AGQAdAZH0=;
	h=To:Subject:From:Date:From;
	b=mvNmzA8Ggwg4TM3Hbghgzu4KmkEhV8/bE5RbK6ofP9sG+dhRdQz78q8khW0QNJuLL
	 FZ5VnfMHx7oIYOgrF12/QnlUvheXYZZymiqk6zsZrgmRjthuYhE8hWbC1am3AVN9n7
	 bERdFV1ZxAgsVHwWeY8/r8tnRYkFmDjxFOx7aotUmHKRssQkUd+RFoS58GSMmFT74v
	 kvhg12S/vs0+tPLMN+MrGPHesvLAhaOyusoULTuIiVBQTWqjYhU8tNiWWXk+KZiCJh
	 Eok7WvHftknC72/bsV2MlPsbp0B8Ul42NYpwx/jKAevot4SHgV3T/CwL+FdZRe7we9
	 17Yuom89FPs9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B40D1CC6B03
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179188983370.7465.4458015115129655279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ab4368133be988dc68dec6ede46bb5e5ed66f5a30a87e411768f29b0366011e
Date: Tue, 13 Oct 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791889833
