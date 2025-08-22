Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF7E262FC1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755832194; cv=none; b=WKWN2zS7aSTdxGGjjRjhrivVFyTfhtc6ckqjgmz2MDzgjPWXo2tpRF7/3Lu0DgDjiRWOG16+IMUHNpDmXcYVFnSKK7QXBSypBcWIeEPfkDH0MbOM6HGBn+VeaSQm4zsfxH6plO4eB95FsjCJHcrlaN4wJoVqVvLyCJwxHGDCgec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755832194; c=relaxed/simple;
	bh=Lr3KOSOqCFq0CJeXObghlF+rkDkV0pLHhsrXbJb+hy0=;
	h=To:Subject:From:Message-Id:Date; b=rWUvP/bHwFuFLmMOkDA1yntZeMjHoxLQdbdfGqnQ6YOwvMtc0ypJwCdBml4uhE2CXv37v0sKOFSL2GDAzJLoXGMB02SOSX3GbWqXISzclviJ/syy4t0GvX934DqdvEEzCGKJc8UKD1TAkCIMsUFi/TUMS6K+Xge7wPTzfNJFtWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CAB20En7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CAB20En7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2387C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755832193;
	bh=Lr3KOSOqCFq0CJeXObghlF+rkDkV0pLHhsrXbJb+hy0=;
	h=To:Subject:From:Date:From;
	b=CAB20En7f8m8fCbhCuFGNrP+CNqXueva5erp55Ed3SZ1IDn0kkYjSyFtBwgGabRM+
	 +AAnOUOhhfULh7P+23cazlQJqLTtiMATlLmbz/Z3F5JJHNzb1drunmzaeN7StVym+R
	 N6JwSuC72QmaF5/APZ418qDGtAGGnjS+o453ytBOycAglnv3h906TWSGwnaDFLBYmp
	 GYOIV4mqPP5FWdJbVVka/UAgeKghkcQI3kTr4zD8YkiaqiY7e60CcF72ev+KNT04bS
	 DuBqB0RVO8CqVo7jhq1FyYD/aMJJTt6O+/l2SZlI23+Up1Jlci1ya/TDSZptaCsRnk
	 Bv81uhPp9PAxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9126ACA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175583219357.22532.10927393035171131277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 115b6d370f97ec808b0c3356a3cfad177e15927bc11587be8d075cd9948ecb51
Date: Fri, 22 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755832193
