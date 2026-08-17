Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F88B431A37
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786972834; cv=none; b=eOuC9vFY7cfi6LPxPOFntkcfVH0OqgdGMxR6F/zfr8TJcggktiRH+drhbQcRVRT+CPmLDjszDuRUedI11yDyJtePRcO+zdaSbqzf6s3OfGqnWoaAItT1EPLSJ28Cf3CkUBi7KGlxA//csBAlC/pYG38IRCQMX3XPvckwmYzva04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786972834; c=relaxed/simple;
	bh=mC2P33xUF1M/8095xUs/uqMltBnP0+Sdfx0KexwRWQU=;
	h=To:Subject:From:Message-Id:Date; b=ua3tZd9dc+eze9FWB6WBSxpGAexc7qYXCCluWuGVkBkMv8gFrpF9bdvwL4TgtEMJNCJj2BbA/J97ygWm33G7y2OdUNrC9fVx1BgxvpiEmHpvYYuWIA7uRrOcYnUnwffylcjST5jzlM2ythhgVjZswj8FHnBtGU89QT6Ov4HwVxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQCcPelU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQCcPelU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7C4C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786972833;
	bh=mC2P33xUF1M/8095xUs/uqMltBnP0+Sdfx0KexwRWQU=;
	h=To:Subject:From:Date:From;
	b=TQCcPelUzATmMfjS2n/HNHhrBrzIiv19ZCuoGCqLbndJ3w9oy11U3pgdmKlCF8leo
	 kBPglrPVUhmUjBeysrQzn+haGcIU6xGVgA5kKPf20cyjEUH1Elo489jrOYFzAhca1f
	 1+eXD4dQE3adPCky6KoQmdQnoltnKHKO28xrqaeQyEs/kKxlr6y76dwr9LHGCTSy+m
	 MmXXyzCYhk0LQTQlagPPXpaF0jswTZs2sp5vDH+dlmO5b/sawVSf/0v+1EcUHmlliw
	 q45Kqn87PPeL2BuAA38OiMNJ/UfehQ34k/CBogKN3dvRbYQC9Pu0Z2mm5H2R1NoniK
	 7NMIBTPsQHOGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9D5C5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178697283368.4501.7983188087407139364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f903b3d0b02e506cef5bb7313fa73f9b416623022bddefe140e19fc4dc0922c
Date: Mon, 17 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786972833
