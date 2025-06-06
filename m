Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C1935947
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749170394; cv=none; b=Y4qWShnvy/elZKmTUwt6UFzdSGw/NeX4mFsQpJmSzlPqruXlfmBVIvX1HY3p7t94hPLIMZfB54/XVX9jiPBgZ4RVxxZk3fR8Cu50J6Bg6Ke+5d5w2aiYsIDDcTtg3XML+HMN7afhxSyYtc6246Gzz0ADtgMuC0l+jAvI43nw60I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749170394; c=relaxed/simple;
	bh=WTB4FDxjXOjqkMDxguyakDc/Ugatb3wFzDpntegEi7s=;
	h=To:Subject:From:Message-Id:Date; b=uILcPDXUA3oAtA1E4UUHfVZSH07xACE5yauRP5pLrN4Pdn/fPyS9F+eKGUcxg7dbkV2mAjTSzKL6n29mLag2/ErneLTbwiJC3sKKydkadH2GvWQVt76+MhyHew+y2ukTYJrsxfp7yVZd/puhFGERT5ejbkFt1QcyFbzMi30wYn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmz9yDN4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmz9yDN4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4506C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749170393;
	bh=WTB4FDxjXOjqkMDxguyakDc/Ugatb3wFzDpntegEi7s=;
	h=To:Subject:From:Date:From;
	b=tmz9yDN47wBGqppFFJU3aPKaTdAdAkQw20aF9DxX+soEtt8Z4gi7hQlhB/c5CHJeG
	 iivlCdBOad0pa311tO7XJb62GwhBli/CiTEQLIDQsUXmxXcAVstcwMqolYG3U3dm5a
	 wIs3EPuSm6FmSj4J6HkNiyF46rZylT6kBXNAOCb2xRGK92TZyxmVJfok51Les/rcTn
	 67E1k0X8gVz5lcRG3oS1Man0RVs2TsSCK+B96APednnQsggFO2A0NjOZSiN6AxaAv5
	 IrrlmO7VFGCVidB1NwG0xYePEPZUAtmPRdZgQvoDXjDgfSEdYVhpetzQp2w/hX+2zw
	 1pE4fCnll8TSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE78C5B555
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174917039358.32108.17078428238088218796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4959d49fce1f7c805ac7461177c2a2dd150412b8af14d5ec37d47c95340c6a62
Date: Fri, 06 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749170393
