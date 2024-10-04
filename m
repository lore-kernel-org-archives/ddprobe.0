Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8D91DD899
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728068754; cv=none; b=lOLooY5TB5ytTvxoYkAdNakLmZ/Mq40+EqLm/pFLhDPI5c2Nm0jp01MB5FXQBI1jMXy0B+fJwgZI4rLsnqLqjM94+H8Umt5HJRPUcfv/RYp/MVLVJ1ZZNiFDaA/R8/+pY2zR9btmbUMhBwR5GrchNjyPNkf4ViGjQWitjlMINag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728068754; c=relaxed/simple;
	bh=yzDE0xElFqIEMwpnflXBK8d61H3kaDqFztKJf2m4SLE=;
	h=To:Subject:From:Message-Id:Date; b=U/JP9oa9TzssA03jjODrDTWC3k+6yvR1b5oakLj+oER+t1lpgPG9XPndf+JXk9U3xT7sgvjEDzYnkb/JtYJ37Eo3FL9MUs0NifYiywJ+4foA7sNV5oAZbLThzAC22/MSAtPJHJvnkjNcl/mR5Dq7NLXStpYy3mAMx/zHs/u9eqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbzDkR1i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbzDkR1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E27C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728068753;
	bh=yzDE0xElFqIEMwpnflXBK8d61H3kaDqFztKJf2m4SLE=;
	h=To:Subject:From:Date:From;
	b=kbzDkR1inrw1Lx33hwYAzCDDauaYC73xQgSNyslBwZ9zQFjYMYyIfT89FFXx3JWrk
	 2tnwC8QBBiAYhbrjv9OY3i7qKiuxllQ+sEfd1Ys2XcTWr/QlhtEkmaTTJuOXqKfUVJ
	 gVkujg4FGdiqGIhyJ1/bbkH1z7JsZyifas1GWy2m97qp8Aj6VinCovF8bB6JkMEpFP
	 9wYcRE/8TVmVBKsmyZAMBTHPPfXYtLri209CLG25XcDSEZ19GcM8Wqf/kVcEVXU/GN
	 cQk4a+05qc9XJjua0zqz/JyOaV5QVXJVsMdM775AOaFfRRjAaYHNk+NDI8RZ7XCVnL
	 KCZKIOGAFok8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC56CF8855
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172806875361.3754.8422190114986224443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eafe6331a4370484924e9112c04260b5523517a3b135c7c678d88396aae5470
Date: Fri, 04 Oct 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728068753
