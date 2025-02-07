Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511FB186287
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738898754; cv=none; b=N19A5xUiR0BA6o4hnS992kV/nyLE9/bfAWyM0rIMA1M1Gd2HewkON2X3bRvHpazJgyuvaqYpr+fnPA8bcQdbWQYfP4v/zOCq1AQVPe/c7qKp86ysB2WlPHGOPeFnpNLKSeFDeMcAyC5CcMnehuY2W7bGhXlFl5srM9YF3cGrIWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738898754; c=relaxed/simple;
	bh=wH3THuqm1HLoRVACQuYCjROFjaONTgPvj4dQlMDjfb8=;
	h=To:Subject:From:Message-Id:Date; b=i/s8rh2G51X6y+zXSb3whIZFFsJptiEllhd5Gtpy1UxAP/1NM4Nuo5k1ZLY1GB+2GsFkblehVfPtx+Ic5KW+hbb8A1fzUg08f2WGt7tNrvkXHjMEQd+CqdBx4RRgO7IxuFRQ9ptjfj2vgKeFY/QgDxff5n5pg54ng0fgSpkJk6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/jNWdy1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/jNWdy1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED4FC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738898753;
	bh=wH3THuqm1HLoRVACQuYCjROFjaONTgPvj4dQlMDjfb8=;
	h=To:Subject:From:Date:From;
	b=I/jNWdy1vhPxMRdITDpj+0/TnbS/VS6FyEQdGxs0CNcacczuqEQkSnMja6Oq2GKae
	 LMYOkWgL4svfT4JTLwLnCkjuFXUVJd8zM9/myn4s6EhQniyU3bDO9buI6CKpqSCFTz
	 00213E7IdFhx1d5FlnP2tu2Jg2Lcj4GbTONLo7MShpwcx626hY7mbMdTASKxzFn/c2
	 OzxtxDdOcbo8Ygw2RsuSj8QllWY6FwkZdWUVM72uPQbXGehZ3ukR+n5iUnBgdWEJ7Y
	 NciicujDJzo5ZrkH4cQAuJFOPnLr213/04VM5pUpxK/8DvvLd4BoFzOfyDDBbnJ5GN
	 P+N0ADewVxUpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967B1C02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173889875360.18470.13711271032374936062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4d3a53a8dee326de0c90c388352a60ee5682fa467c088c773e43fa79be26cea
Date: Fri, 07 Feb 2025 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738898753
