Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4582F187346
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 12:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779540754; cv=none; b=D7eHQqpUqr4LitIVbB1W7DCvqwHop2wdLAfEbUG4Kr1FQyUCfTXjM/WZvaX/AnYFeoyMw0Rmt09RJbK4oBWBpbe684QnGWerZ429X5qYVzH6QaMdpPayUCCov31E0VTrpZAhvb72Z37S0tMHmdRBVXz1IujU1QJEhHnVibC0PgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779540754; c=relaxed/simple;
	bh=9AGE4sU8Xsrbk4Is6htWYaWihrwPKpDrHgiPSHT8SCs=;
	h=To:Subject:From:Message-Id:Date; b=ePvaXhnpGDkfhkuu4mPGF2AVZfC9v83cOHP53v1ZWnWBpVI3Y4/rFCic8RtA6ye0pKtY4tJdhhW9v1UxPhrvBSZZ1nfepCKn5dJGOddYy+d1h3RZ2xbTPaERrGtY5aWx7ilm0uDWSa5576eK7edKB6ZruAV/zYrjfkBJZBi62yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G6pranPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G6pranPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C80D6C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 12:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779540753;
	bh=9AGE4sU8Xsrbk4Is6htWYaWihrwPKpDrHgiPSHT8SCs=;
	h=To:Subject:From:Date:From;
	b=G6pranPcsO6AfibPpivUaPKB+kxookwwxW+UfcDM/H58V6Ds+rEz+4KhVSLA+FJKY
	 TB4ACDcRa6vHfybTqGvm6o81JsW1DMAyuc1uHCeWduHgc/3N9dRyvCD2/rapt/fN4a
	 Lsi7HxCsdPD2razKlBvbGWVp04olvvvQt52xvCDxv6udlGuGBWk2wEN1ZYJ6zOz8+6
	 TWJZlJ+ruySOaqkY7utTJnuK6eMSsfyvnA0fUK9QVLbZPMfCHHL/jD+tvWywv/bWrc
	 XW6YEfcKoE0HNGKGV+KQoPRWGrBGpENO1hZ/kOBOKeImBrGtkpnjQ45UMCCitnnH9R
	 2PNKWIJl7P5gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE83CD5BAC
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 12:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177954075368.9548.6695992216501190531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16949b74eba1d3c51655d3542c59b4fb6ce4a773cc44f170825126608e7ed538
Date: Sat, 23 May 2026 12:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779540753
