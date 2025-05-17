Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4405A145355
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747513194; cv=none; b=g1webuTmWBTWgErQxbBO1LKBtiLz3USUOcm+mAN78fDFNh+ksGESzszOMhe/43G4GGSfA32hzST5c4/H3Jvt5ycZ99sRUWfhXw+xyvcteOY1i/c4TC0z0xOx1w7Fk4zwOGzWytBuTLf5EkTj1Pf++Tni8g59dRIdzNB/bdpz+qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747513194; c=relaxed/simple;
	bh=pltILhyYzDuNJRDF8sSxPPGTr/xxtaz5Sv3V0Z+viMA=;
	h=To:Subject:From:Message-Id:Date; b=J64sNE8UWkvGly31LNZ1RSkdgHim1oe2E8J9CeuQXfDKVm/pRgp4HhqUju9MJF0BOeIj49JO3VvJM6uFaHL5CVBaWgmT5BZkLA6qLZ2qpNu2IvXlUyiOwoPwNxh+ygipAhrvmEBcZP5TS87DEGwgWqQy6GAOu93TwfZBgRMTmRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thmbNF90; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thmbNF90"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8279C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747513193;
	bh=pltILhyYzDuNJRDF8sSxPPGTr/xxtaz5Sv3V0Z+viMA=;
	h=To:Subject:From:Date:From;
	b=thmbNF90r/Q4jfpWSI2UvnX2VmKDq/Ruwtt5WdltmYHQ3JPfL4iETZm3br89B1jYE
	 qLfE20vF25OPDn4Wto4vBGcqw+PMKA/IgqMNcfglsGT/Ofx0XGE1/ATCCubfxU+iMf
	 Hrd/mVZsMmsj5kWt+cO31bQ4qo9S1TwD1oCNExXmgQAtGliqCUS5T1fmPqVtVLdjxx
	 uAmBdTQY751Gy2r0xO1Ft9hkf3ycwC3WNnPUx9qqUvAvFsQJfoL56FFSeqyG06jJSv
	 2G7/FbEhx8GRkt6K6yyTNAcrglooBwh7WZ0ojbWqfZM3yq6EUIb+DFylX77506+7CO
	 qDTRSlvrO/kRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95693C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174751319358.5782.1760816127839842114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14e65e098c3869ba5fe9bf412422f71ce789b21b7e665afcf3adae4f6103dc6a
Date: Sat, 17 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747513193
