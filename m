Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D4E1D8E01
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772157294; cv=none; b=H/yyDaU/WSCxk2lAIMdfg6N8+M1ivzcA8UI7o8hDHxOU19R8LdFknAg2pmHhxeHMroU/dIHFCR34c4Kto2HNFnSbSbve0sWcUYZF8xuv38dfpfStN4TMNqFPBfC2SW0DeOQDtn3slzIQQt2csQEIa7xkVFVA4tsWmMJR9/5xvGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772157294; c=relaxed/simple;
	bh=dyXXghsUxgD50lyGcwfocwF0Q45+vsizNEP5liEAuIk=;
	h=To:Subject:From:Message-Id:Date; b=WENKVqHN9DEVeqW6tvOErL0MLKz86LSN0oqBSsWyjbpt1UFVuT5PcunSyffZuDSCBCP//Dp4e8t0hgiIcJJpjJl+Dhu8vSn6KrDa7GOVz3L8Rasx0GcWSEe5eoSHaU7xS3b49qDZ+VaiGs9Mmqqc2y0VwOnfcWrSgOaiZe+SAmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLJ2SIdI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLJ2SIdI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EA2C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772157293;
	bh=dyXXghsUxgD50lyGcwfocwF0Q45+vsizNEP5liEAuIk=;
	h=To:Subject:From:Date:From;
	b=YLJ2SIdIMFKZCMGP+kVyr0u3pSdGRNdh3uF9Rxud0Tnw7dtxPYcGVXjyCt71ePp3e
	 K/JhMVDiteychdveN6OOmVd0ukg49iHZjnYz14vou6Vc9b/CuLsUp+JPAkv+9rjsr3
	 INjjeEGbZEiOinWvK6S/py/7/vNLFmbKNrPeyrm+XVPg+653YnM1Bw5nowsXQVLFlJ
	 bc8D77CkebWWXvL3jaTKWZ17hiFs2kqtQdn0MEBdx/wgetZX40EpmqYcUf7vqHa5nc
	 JrELfGJjb+i+pfFDAx0N7uIAyvq5w4vccBnE5f9nWLZh+XRLKYgYUx/b8j/XK+Avzd
	 8dElzu6+sUeFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90185FD9E29
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177215729358.16418.17557946118484109766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2828f3b93cb3a970309f9ed0762917aa14e5aaa191374a2b0e10b2c945a2766
Date: Fri, 27 Feb 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772157293
