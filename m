Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DE616A395
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785967834; cv=none; b=J08KsE9DpmwETFRMz7GHQXx4mTBle22Az6tpoGfyftYwIPfV/8htWli6IE+/PDREudtB1UrWH4+FgEVVeMSF7J5hySFk8zJZn3H6/6TCs4g7FazyTf5PMVQHnt2uf53TPYRrn+kttgwka8PRkFrjSB9mJY9rC1qpyFe0eP46Aws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785967834; c=relaxed/simple;
	bh=qKM3ofLCGiBmQ5XohUCRjOkAGpwTte4sFMfvbDL2spE=;
	h=To:Subject:From:Message-Id:Date; b=c6lu/ODlP6JH+n4Nkp6DlPD7HlHfhFvsYhpYTM+ZlduTNv66L49SHfr+PKdjLmMjV41kQ2jsgkMqrdtUeyP5LxZ4CYLgh+b3+br1X/o6K6TYXm7NQQ6jojWH/cGcQEqhwiW4C+iUuM1O3K5EaMLwwvILElYEZO2kwjWUzrSTnL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5iie6Qa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5iie6Qa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1913C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785967833;
	bh=qKM3ofLCGiBmQ5XohUCRjOkAGpwTte4sFMfvbDL2spE=;
	h=To:Subject:From:Date:From;
	b=U5iie6QawXH/D1rgerArodAFuN6cOh/v+SyaqjDun5UGn5M+gkAta1Vl0pHeFwL3X
	 PTSNZ+i1rGCgpAftUehgWZg/sPPPxk+Lf4Qm/Im3dhL94M11JEnHl3UBBz0/fNwxHt
	 q/S5CyveAwp3+Ogimcb6U14awAslYSdk6RJUVa0slsP1K64T9dhoH4XsTmDo7AdIDg
	 C2le0JbFxwXmDx4uYHrSGOztBpoirGW3wV6b61yXiX9MHvFa/ZuOKsE5FFvPz4xRyy
	 o2blLSjsRJdz91/dhPOIh2+4yyYY0aYy/NR8i2lRzXOJRXcvJfNGEfzcpIX7rLXMbv
	 ut0V9w9hNNinw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA0FC55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178596783368.23460.14884464649306667609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7fc991f0531632f6fec73bcf165bdb11f38c2a067a10ca14844c8e0ad352bd4
Date: Wed, 05 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785967833
