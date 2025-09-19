Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BBD1FAC42
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758324595; cv=none; b=UqMzMRFRZSa03Y7RMzxuAiqHTb0AhH9Zsc9WQ2PjhnNPs7G7z39E2cSrZF9J0hxWMkHb7CFkfK61KAD1tIeo4erEW17PQC5whYTKhMNyC4uwsjlFLjm0UCdhfl1f2vWCBftAw8gvT+gg8jc2BION7GU1dy2bHsICRsMlr1b6qOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758324595; c=relaxed/simple;
	bh=W9GwiVLLQvfNnbn8Ox6N2WYCFsjvtx0/IxDkx4fvLrg=;
	h=To:Subject:From:Message-Id:Date; b=gQLfyv9ZfjBneAJEOBISJ5e/f5CGpz7SINhKNGNGYIx3m7WUyh/fs9ONy7PR2hq7sBM+VwngXy66uvLxVP0nZwWc9GTxt0YDCe89/aEcMvFL133Hm661zouvW0kS3Tx4LJ2A/Rwmcn35+5iSvd5BZBemalNud8Vga1SUzm1gnbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjK7rB53; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjK7rB53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5409C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758324593;
	bh=W9GwiVLLQvfNnbn8Ox6N2WYCFsjvtx0/IxDkx4fvLrg=;
	h=To:Subject:From:Date:From;
	b=PjK7rB53rFb+qXOpUDsotU6rerzAbDmzZTC7AgQy/psdHEZ9AS/rBJSf5IhpoLcEX
	 oYRAZSlx2iTDjsEiqc963vx90QYq16KXKvcqbX5sPGtBGGQQsNE5iPazKTGARodwGF
	 vlKWUVWPPBpYTWb1/ETtAG5k4IX97WMx5YxlfDPZnpoZxTd8BNgz/As2E8A6BnQ9Ib
	 oPFqachh9ErcK8NSOsbOps2h63IeTZtuIxPhfEue3CbsLL/PrFxXqZ/t9uomtI3W6B
	 zMx1qyfD0pLozvIegKjpZl+Iv8qmQSbOoX+Rqr+SpgBq3t28Vr1PgYdQz4lnblFglO
	 6JJCTD3l57hmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F68CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175832459357.16276.2262059301635900387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 648eb5e75093608e4c468765444ba8616f449b72a20b0a09c534f885b6c2c049
Date: Fri, 19 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758324593
