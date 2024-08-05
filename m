Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B0315C12C
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722871554; cv=none; b=iPo2vr9Te2kVbYjGhvYM8a8HLur5dhP6GshAIEpTD+LTn1ZgUUkQv8uz3izfWTD2VtmHOa2RuZWMDSKMmIG4eCvO8HNJTjyOQLLj6fuuBQt0BSv9hnJgThgdMRn7lkEkYQsAyt4vsCrdh+gxiloWAPrL1aDprMr87fZE05egfDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722871554; c=relaxed/simple;
	bh=nf2LOym31Zj59aul78ETh5XeWHracZm3m4zndKaEq0M=;
	h=To:Subject:From:Message-Id:Date; b=kSgDbM+GzxFpog4MVXf3zjDeaOVxyCcZAqJhHVZBI9w/soq1n2ALP0uRxavOZi3RMWTgeFnrd1y6sTGQjG4iATz8PTeP/JDC5wovpFq/oIO4msDCxd1XwJS/fCRkk3ECLRDzFhXuTDtPxrxberhqbo3cEUijHdGno5DsOzMDEe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GR6l4Veu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GR6l4Veu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6604C32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722871553;
	bh=nf2LOym31Zj59aul78ETh5XeWHracZm3m4zndKaEq0M=;
	h=To:Subject:From:Date:From;
	b=GR6l4VeuhMjEa6vZRoIQDE0foMEj9vKY/Q2hgr0D4bqJHpcSD/Pgj8dQdKQmhMEqf
	 xf1NEIJHjceCTTUmQ/DBQz2YcuyW3OLP8h4OuLzsGvGuKntKMsOKzXCqPSuMRAENDL
	 V1KJPFQ/Qexcamis9osmC2pJ17T7MzZCQmmKklcD//GSsuxTv/xqK6ClGC9gvFxnsk
	 Y2gFqAquFoIGIkUTq3vCBHeoLubur1TqEO6xuGfDragsfH5pkEYqQ6afbtU5SZ7LJW
	 PDS7JyPADsig12DdbCZ72XUb85vchOB3l8cCWHmih+aASCETFXx+/E6KQSdKNKiF36
	 43ZpA0/05eQQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEC5C3DA4A
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172287155362.10363.14728040636006377051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3cc412fbbbb34cce839b2e1c53a172acd43c4a02c4e5c006c95c445ab272369
Date: Mon, 05 Aug 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722871553
