Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8DA377ECC
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791927034; cv=none; b=M9B+lyQ+51cMHT380Y0sbnVpjYQ2s2E6u9vegLkivv2gIP7Qb1+qopxXpEuQD4x6ErvRb5oUT7nzujvH4OP2pVY7nbg9aVxX90RhDNF7B+CWC0eirkncvesv7WTXiCo/KNgSOFDQnjwXteAoAXGNES8TrGqMV/aUjpmDPkygKWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791927034; c=relaxed/simple;
	bh=lJ8dvwTKjaWWzJXIvm+3j8TUIbNDBjG2lNzFVPnR6OE=;
	h=To:Subject:From:Message-Id:Date; b=rbrPDFsrPkNd0JQ14AmLSJqR2QjFlLgzjXEq9WWCDBmlFJTEpITvl5q91mWjVX9G3kmkrjDxIfOxyYKyXsHPJVCWt0XZhxoz3P6W2PV2r+E+DRVbJ6AFEblPd1z4HxWsKIpNCGOjEI1STgK0GxJFvRMPMDfmlNpKea8USkoLIr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+8/o0yx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+8/o0yx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF865C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791927033;
	bh=lJ8dvwTKjaWWzJXIvm+3j8TUIbNDBjG2lNzFVPnR6OE=;
	h=To:Subject:From:Date:From;
	b=F+8/o0yxsV2jiTwmbZgWTp0CMnFLLFwNFddDDvlypP+XnLZGutam/6UyctBX3mNNJ
	 1LRcNyik/LUhZrS+Cxj2o4MEHsuGScMyYGLukDdYtk+CEDCkegi5wDRV4GeYmXOCYA
	 nLwHoladePFaBL5dwffe1G2YRjni0ufiXKKWkRqPQfeUvf/Fra1Oh5w0s7fGROqq1D
	 IVPNha/m9OEE9U1tQuE+7iBYm/0urSnDoSbUtWGtmh/XPZSiM4BvamD/LAo5sY/23o
	 GO/chumZK70DSxw999uxISDQuMniQjfE0kh8YAycoUOIkd1Uz8uorYhjuuabDP4GJ4
	 Ma7gv1NwDpeuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCFFCC6B0F
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179192703369.8037.12804768069765063612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c275b3857e2862d1c704d2a7e8826f2fda7e690c229e76f3ec7709ea9d7c0b2
Date: Tue, 13 Oct 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791927033
