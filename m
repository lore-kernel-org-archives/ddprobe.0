Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086973E123A
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773756294; cv=none; b=KCv1G8CsN5cjRyE4wDl1gR6KtU+41TMrpo4M7zDu5s5nEFvJu/L4ROinX3EqWrgcLrn4I+aA9s2rz4BvJjNreVF6CJJecJFAB6ib7MDLmOveYc0A29H1b+J73WkIGBafljy62MxR9Vx0lk0LtVoj4p5W0FEBo6RPwq8xeauE3BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773756294; c=relaxed/simple;
	bh=ZSGCLdCKpET8ZRFN6o2V0yh1VZH54Md3FXjtHqAoG04=;
	h=To:Subject:From:Message-Id:Date; b=sOcHX6GtfzEFLThZSzr8Hm6itNBf4lVxs3ol3KwaZoAZboBEpWN0u6tbl35G7H30v46NAAwiBEY/SXxTAvhpA+EMaY7gDofVX3rdV0H0IK+TEHTReHCm1GhAiUpNt1ZzozXB0Ex2xeqxHFWLlnL3odQTMEj4HHAP0dmMP0FsbeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMA16vAN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMA16vAN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E82AC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773756293;
	bh=ZSGCLdCKpET8ZRFN6o2V0yh1VZH54Md3FXjtHqAoG04=;
	h=To:Subject:From:Date:From;
	b=GMA16vANjztN9TdIfPcuSE+u/OQYdposbi1g2bNNMuEUXDpFwNHsCdfxZVHNozkS7
	 bLn9raglOLbyj2LgnvIUwtAAN7bVV3kXUUwwxydY4HSYwJ+okh81aCJEyjwNBW9azM
	 hpJKrQAm87rGIX7Exbq1BviFvZcoIhdpbrnrCdpK5aQekjch0flJ3if+wXhzglbxGs
	 JElDZioM+wwRFMcfx9vzzfS7+a5PYWJQGBuvcWFoMltNx189PzVpBqQBUkge4vRf6z
	 jDuVmLGfi3yYXQSO+fzipqbzJYtfxaIFo4HOGD/3admfeY15v9aO0LBDBADKeIio/Q
	 DXmFeJp4Bmm4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90565FD8770
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177375629358.23759.6505739483151287733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 335d246b636c69cdd230eeda953605283455352c85d61935338d6b70c1bacfbc
Date: Tue, 17 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773756293
