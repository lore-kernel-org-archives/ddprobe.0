Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC01824A3
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 12:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763727714; cv=none; b=r4kviUc6zGFtCtxLmPOFbNtCJPwedk6Gn4Jw/IoWU2KzTjtqV8PrymeoyTHAn4tF62b7rnTFQLUpQvP/3QS2c0Z3PuMIn+fZroxSMa3pBIi4gUS1i+zftpC5C3lLBNpgwrbV1P2w4ubw22y/iI+d0uq42AzASAEz1Ae0bst5tYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763727714; c=relaxed/simple;
	bh=uU2Mfv0NitDOeOrolKkkoYq+OGgZoNwQZ4M6notC6eE=;
	h=To:Subject:From:Message-Id:Date; b=jiLJkBcPxPgcAXnbQdfo4Q7c9aFMTFD0QcTwneg+RCa5CtWMIOXSfi12xFARaEXwwUIpgSRKEMh0/R49hhgORlNBTLrs6FxNV/cVSnb82zmWYzgsObsSfaPTe865cRbtnUBrCypxIoSR5BNbDb/CnDTLByg6/kvsPhBfzQg6Rq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cpsn3CN4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cpsn3CN4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB125C116C6
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 12:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763727713;
	bh=uU2Mfv0NitDOeOrolKkkoYq+OGgZoNwQZ4M6notC6eE=;
	h=To:Subject:From:Date:From;
	b=Cpsn3CN4HXiKLWGGmyzILGpyoFg3a1ogUrAZPx1aCIUHh6+n+fnD1QONRSDHAvsUW
	 HqqWSI7qmOo11PdbpuAg3srk6yQETsch6WjzOC/3oivL7NYMBxZbcgywBXoCHPCdqw
	 yCBHG1tCGQttVujckNrFhjb8dyhIaeD5J+WkeFForGrbbbM51iRCIps+MPTq/Aqqh6
	 wG8cqtYIET0oUeHw9oJ0WzgYr/Ms2hmh++7VuiU6T9a9g6+mO7kjAB3Qbbp/yTVECw
	 P49JdiSREkuvyuurZ9edqwfUxFsHRDlJK3+mC8TMyYN2JUuSMgGrR+4jiSk1UrQrCx
	 Lco2wKpxswoZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982B6CFC267
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 12:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176372771358.18878.8578485656398024652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f133d9479fa26bd047d34d637bec44edc67651a56ac43d49b24452182905cadc
Date: Fri, 21 Nov 2025 12:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763727713
