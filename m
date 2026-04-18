Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE0D23E35F
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776548254; cv=none; b=f3LQ1OvYlliA2sXcly4NGV6Fcvctg26WEHy3MFe9dtw49dWi3ddmMTstg79st2Q/1ktX6r4JhOqof/2kVYHvBih3EL5tc+3UIAgLkixBgNA6Ta+rMTQDFG6NxPJJs5GkgBBzF53sbnKINEdH6LcI1DdsnpwG20FGKMMm6ixR0Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776548254; c=relaxed/simple;
	bh=UgwbW/nCmmyTWCPNY+3E4GOnRkSoJ9U2nKLiOqYuxZg=;
	h=To:Subject:From:Message-Id:Date; b=Q3tdlqWoRjY8UJ80+b/J4QH/QT/ISDONkImfc+bKi8rFJKDVpi1eYvkiXQKF4UUXhY+aLj/1GJ08Q6iErCEifBXkkM3WURIGIhHitFZZkJMjq6NBLL3LXrofjTV4KEltPuq+lyE4YQofI69Os+CJtrfqgdCAmQfNpfJ1ZcX5dOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tjJ4+NDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tjJ4+NDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC9DC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776548253;
	bh=UgwbW/nCmmyTWCPNY+3E4GOnRkSoJ9U2nKLiOqYuxZg=;
	h=To:Subject:From:Date:From;
	b=tjJ4+NDJH0Ilx2hrcYCxtBfjFsCHsc4KDaoT7zf8P38zU5TQ6XmfYILv81bsWCamw
	 5BJpOaSzQYZ/lexL9K5fXHUqmf/FKz/MevlT7wjOcNdOmOeYOf1hZY3eqzifc/DLHA
	 KtLWJUv+k7dioL6pxALQuWj6biYVTILiOyhUZVuwWkoVFARs+EqZCBed0q3nb3yrn1
	 qsfO5+Ryd6vgB6W80sYNaL+jMHyGzx8xG9SO/UMHzTIJlFxu4vX6qF2S3opST8OC/3
	 VHxXcvJcnxDjtmflmRt7F5yi1XTb6EUhzcII27qntPmtL/YuIALbP91zHbD33ptV/t
	 7JfSFE8fbSgMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9779F99C96
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177654825368.23198.5509290184573086914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcf27e9c0c978ef9aadc748f7ae8044c3827ced4aeaa93c0420148507a185d6f
Date: Sat, 18 Apr 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776548253
