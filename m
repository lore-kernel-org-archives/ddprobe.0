Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1095325BEF1
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754573394; cv=none; b=VV2xGS/hofaTdW97smxLcaVi4pbBYXX9esdXeuiHnbUZ2sklW5jCsF7kTxj2oe+0eChv/XvbzGu6YkjElQXt6eRCed3C9ppIDHMUwNZPfiYsnYSYI//sgNmCR0C1JMjoU0sQXa1nM99hLN+zChHEcIXyqcxiIYABbV0lmd6Rqhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754573394; c=relaxed/simple;
	bh=L+JzILJ6ClGqlkX/+hJNAiyusfJdd48ufWLwdubbIvs=;
	h=To:Subject:From:Message-Id:Date; b=uzfyTC13jpfzyIL3RUTB6ItZtbeWOPhbd/2PLYUGpsIQUJLgH0xLRQ9oTtvSwd88ed+IBR3qCjQcOHejMRTC/Izj2P1k4W0rh0r8mEFqPwUWvoiTptDmnN4wPCuHm/jJXxhf8hMiwPw9SnzQ+Mx4HoAt9F37e4pJCq+p+56W0U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aO/IOJkl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aO/IOJkl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16D4C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754573393;
	bh=L+JzILJ6ClGqlkX/+hJNAiyusfJdd48ufWLwdubbIvs=;
	h=To:Subject:From:Date:From;
	b=aO/IOJkl09moF3COifByUAvIFpAqHUYfA0n84NJxD2uhJn5IyVPORe7ayjMRZGlUF
	 t+AEU0uYDbLGF/E92p15tMtfyDPNMbKBSlc1S/3GQ5E+x9IGC5kh4grOQbWaYBdUow
	 aRLgDibQZVQgjx+hdRLM+TnFqM5VW75Op70m9NkVNtPnm+U6dEesenuoSLG1zpcTeA
	 1Xzqbk4iNJRI9NaSYCJlF8cf0WDadm4cQlLtivmG96uL0a8/mP3nf2JrchYiu5gaJu
	 /xgkpFc/KtoQbKrB/eEovtbHOQCRqoKl9NqK2JlOOKPfmyNsONIRI5lWREBW9W4m9r
	 S8JJ9w+RK832A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CC2C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175457339358.29979.7583483438346791784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa7cbdff8a056880ef84b82a93c8893132ad6af1c9b3498246877b9f1c9c7ebf
Date: Thu, 07 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754573393
