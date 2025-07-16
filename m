Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E303253359
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752680994; cv=none; b=sZ08ZZ2dvYaFFsnk0oZwh30WO7EOW+AQ0wqJ+1IuAG+2w9Vr/6Ic62Xk+mZdYk6ICKmmiAZH//4cZ5wy9RG05vVu5lXUgsnq/exwS6wyySJZgVV5k+UTamSlChHaPMdBaBKsSXxvI/xgMmyCxDIDWXTt8VCON1qbYODverKHOS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752680994; c=relaxed/simple;
	bh=HgXYu7zgDpbIiD5mdNWdn5VokCIPFiW6Z1TrdWR5IY4=;
	h=To:Subject:From:Message-Id:Date; b=k5WojzuJbxgIw70hipFZhN4gXq5tPMVcYOTWMGcmXH2DLYemIDIu5dJsYDPFViZ6npXLWDh9VQPMmb/2q+vYWURr4f/xglDrKI+j3NUa5CG7lp+rruhK69fVe+t2nePscc2lESQtKbyrsGFlvXkXRsuNTnon8tgnONDag6P/zPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lAepBa5K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lAepBa5K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F9CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752680993;
	bh=HgXYu7zgDpbIiD5mdNWdn5VokCIPFiW6Z1TrdWR5IY4=;
	h=To:Subject:From:Date:From;
	b=lAepBa5KOLozK38jb/mMCTliUQJVWaestllag32ewcuSiIHqTzB5D115KrT6RcMOx
	 ruekcqGKqMpCg3G5WCHRQAZR3uuDiZHkIO9zJ/V3M5LVt6A0kpjgqJwj1gS/PCjMcP
	 vRYVYXzgO7E6IOmatltr1VVBAfhHrlaC2166AhsIDIP3UM4adjvQmYgsarwmDe5n7u
	 MMs0rEmcjP3Zyq9DeJrKSwsCv/t7yv25cKzKmhydQxVtgIMHO0Yn2ZbIZ9Zwy9Bwks
	 c5Bp9r361FprqP+TLA0ON+SJs4OtUg1rdCqvzOnPiSjQmCuHPAxv97K0XWfRJIdxSx
	 GALqL/cQy3qbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91179C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175268099358.30949.8163089084860648631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adb9fbdb20b0de76952abd0b8118e8b11b0e49b02fe77e1ef8a18a5146f2d396
Date: Wed, 16 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752680993
