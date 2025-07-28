Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F16262BE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753698594; cv=none; b=TZ24hitFU2l/D2BwSb2xbUUV9KdYhdnRhJbpMJosQhpu9D0IrR79f/Tohx+vyzddI5i6+/iwi86bDr0QaGCwjp7AB5UOMsJoW+jEjfNxzI+b2SitAUc6eibUHTd6CfFCFShhRIu3Yl0ERIUwxgWI7JtYKF+rn+CR2jW6K9mxyIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753698594; c=relaxed/simple;
	bh=zDe5vTRVUugwCdy0ca26U6qDNMCn96HNwKMiNV3UxSg=;
	h=To:Subject:From:Message-Id:Date; b=UBjgsPuRNbB9f+BIYwpmiJBMPfPIhk6DQquSASLMBYI9Cq5nqjZkpPnA6l+frNtT5JOLr3Q5b8jL4eDJ/THBdj1HgE+WYL0/rHehftb/b7wdrhighkBIyyUIp/i3scBcBu3SHxvHjnIaHd5QTmRnW9wDP1NNr6Qn4Fm699YA73I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hhjwf3dE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hhjwf3dE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FA3C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753698593;
	bh=zDe5vTRVUugwCdy0ca26U6qDNMCn96HNwKMiNV3UxSg=;
	h=To:Subject:From:Date:From;
	b=Hhjwf3dE6V6nHO2vZEEb/7ykaGeSvWjjspLqASirEOoXU9TzthB8SrtyiNEfIEGSC
	 K5IpJIYU0Evj7xqbgoYcImVHuft4nCgy1qsQjj32PdrYzo9eYYFC8cHNyKJ3acN8QX
	 /wW33mkOJaBotL1BylVKDcD1OBmqMh2E9z3poVceaiYBY3T2cW/OYhWffkgyavwE5O
	 0qddu8sd+P949xkZFFUKJETPr/x1yqSrCH1HKeW04xF+ynq0Erj02X+d0j8/zDM49S
	 nXZyqFn325pgYJsORzKBotL5TzZlTPzGJ5AHqGUQDKZtQudnskBxSrq0x7Tm0eyYwh
	 SM6Hq0kt+S2Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5FFC83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175369859357.6075.4345198328790765056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd9c2f0909fec301e190f90b529a7f2c51e09de8f4d673ba70ded4f58a11e7f2
Date: Mon, 28 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753698593
