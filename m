Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27606225A36
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745488194; cv=none; b=a8CxOPO8GjG5uN5EYQmFzIUG5+ijKPqJc9CnCKG5L1IwRXufOK/9fj2eNeZy/WsgNCCYQMvICp8xG6xx1u3U1tyXLjU2kEwhRxAJpLCewqiOM+KLDb41JzTCEae5ldRul4Dn/66kKGBtSUo3jkqLfzx58/gfg4MdeLnRH8YykrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745488194; c=relaxed/simple;
	bh=xzzq1Fy4+zC6Nk+YuXesgjWH+gYrF9e1CJ4M9JU42hw=;
	h=To:Subject:From:Message-Id:Date; b=MU6Qo3Z3F3TpkAeWP7z5dFJeGOGNiGwhPx9eV74RB7C2J6QbrPi+gYn5rJDrHR9zw44YpFjcoW0pN1MyB/1j/w6YMJaGFYSfKpZy1beT0+FQhxPG+8gM99LRBA7aPGTfQmzzX28oPxMY5yeB+HydWeir84fu42K9fh9V+ULOYlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aN/qn8eA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aN/qn8eA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D426C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745488193;
	bh=xzzq1Fy4+zC6Nk+YuXesgjWH+gYrF9e1CJ4M9JU42hw=;
	h=To:Subject:From:Date:From;
	b=aN/qn8eAunSDTPiSXPh1386zwpkwlDVyxHraZikODim+ZwP2TDFYMSCSTE/FErH6n
	 91EzCA6t9Fl48281cKgQximXjcMLuC4puRg5Csobs5KH4JW+bH1NQXA8eBCLAY+IGQ
	 mcgDti2ZN41yYYlVpv0mCLaaXe9vxrUThnfxt0LJtWr+kBmZnjiRTZUSsDbfq2fC2v
	 mcwJA06b9y09g63j17mW24F2TleXPN4FnDdvqYKIA2JPvKarAH6SaZgAZ4SDHkvfAN
	 pidD78nUqEVDbOhjutjdpwgVHB2PIZ9yjEhWuP/wwbvVqsodm2tzO8ndsyCfFAgLP0
	 jngwz/eyvsmug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E530C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174548819357.26576.9489648155066643243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae7b06a506d6ffa41f7063192a6ac4caa73fed97c221c935148ca177ac62410e
Date: Thu, 24 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745488193
