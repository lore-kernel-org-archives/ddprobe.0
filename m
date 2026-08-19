Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F20B3491C9
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787178634; cv=none; b=LdWrebIP/tBZIQD8E6IoRnlrz3iOIGVryZqSG3jh3nsyFEkiCCVsR69+JXkk2yHIyGMfO6RKddoXnd70ERwgMvvzj/hRN5lCbpaghKqoinVYrxCaaMBxuSHUXud1Us6PPtPD8NoJCzxQY+ieU/quMt1wb4lInKojERgrfQtFjkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787178634; c=relaxed/simple;
	bh=+SDd3hFDw774f1BD1ce0S54y+JWYozeS8DF5s6NJwgE=;
	h=To:Subject:From:Message-Id:Date; b=Yps5B9AOzsxtRn6gMxp4/YdNx6YcXGbVxy2K0jA9x7QJbZxDjvsco/jhS7L2QNPFDKS5v+U9oDlRmimJLL+4hGaU9CY5XBth6j7ovge0pXAjqH2XbAMijefb52WzWRT3w5p/oReXzeyuxZ15iWTqtWN+Bg+lW/32jZPmk98TdtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J71OCcOH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J71OCcOH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE0FC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787178633;
	bh=+SDd3hFDw774f1BD1ce0S54y+JWYozeS8DF5s6NJwgE=;
	h=To:Subject:From:Date:From;
	b=J71OCcOHAQQx50rb3FN5PQw+E3pxbiT+wT6X4HOnxua6YK/WOYr4uEtzjqm6KvzST
	 C2K7ivPooRY6pKITOM63FzjvpqRfePnUOLBCtHZoDevxkNHULzY69F4DRYAUs9/T/o
	 SkQP43jKI5qBi9e2FaBhk5KB6G6wt2WglBcrk+3CoyMnSBeBdIZM5/M6fDwTpRlQ1o
	 Cf6LuQa5jesCGsDosjG2QJmnyqBbF+m7LcegUmY1QHPqrvO63e6wjN1D57WuCTYUqR
	 nMFGlXQz6JFMAHqGhjT6hO0fRs+AvZ1UZrLJQFGI0m33SOpiLr4akyqK4FM0QcDPO4
	 bfSe5Sf26kj6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA319C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178717863368.6278.15504897115680246375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4079ef5d264839960d3a206d837138354710e9240312530a5ec9a5b9bc6383d9
Date: Wed, 19 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787178633
