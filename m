Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6017533F589
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789793434; cv=none; b=KC3zX4q0h9l904bkOfuYMDZVDgPGO8QdxIjrWXkJPFzvAIjGYERIVfjuBI4jEPtJmYW96VCJHHpupff5Ip43zpJbUzUgekm+9eQcEOk15zSFrdxRGfJwkwpP3rjdhZItFinWWUg4Yk0qTGsj6+iYS1rkLnbGdpenQ8s2WnKbvOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789793434; c=relaxed/simple;
	bh=GbYZ4gTPo6h0/pG9HPexuWd8eE5KseYfgJIFAx8zGZQ=;
	h=To:Subject:From:Message-Id:Date; b=aTqbxEF4deO91m9KY/7jt/C/3rxxBOfrS5Deq//tPzlbWYUtvIGiXFy+iqj3JnbuX34i8qORZNYWvRdmJ7B9ncra1Xae2aQuBvJrsd/lTA47TU2Lg59spzsVhRorGBW1NiaGB0q6ax1PdMGPO/PLoSv+8LfMZ/FQsTNcJn5b0pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3NkHICZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3NkHICZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36F9C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789793433;
	bh=GbYZ4gTPo6h0/pG9HPexuWd8eE5KseYfgJIFAx8zGZQ=;
	h=To:Subject:From:Date:From;
	b=e3NkHICZ1y2mpbm+I6mifyrkuBu1nBRzOGl73oqI1ondNWQHPNoGt9YTmhTGoW9BX
	 0QAFs7wXMKqQyvWmlIzLjRy0WjsfI6AuR/4gf4e3PvbGL1r3mlhB7pCt9r4raR2NxA
	 UyqZwhx4fy+RWA1WvPwlYOWaPMvWMHV7cM0RzVKGnhcxmN/MoDH8mWpv2vyYESONM2
	 VQ6tPyhxN9XpYfpSBZA99FOOJbPcfcJGLxYHGVOqY5NLSp85YZJC//VuybNdsFxKmX
	 sjYbNAsu6r+rHA9lLS/X3HSrlIgRt7ovE9pBK2iq6u19VTBdVcQlpYfBVSDU5dtdht
	 ruzs/Uk+XpXjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD0EC982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178979343368.2908.9874067343472020316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9118df4d54b514dcb9e148e333af065625495f13744962d7fcb6b33bb88a4eb
Date: Sat, 19 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789793433
