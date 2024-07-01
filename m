Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9CD1A28D
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 05:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719813263; cv=none; b=WXefqhErOeHBpoFMSMuNyk3m5GTUF32/9+0cA2EGb7mVs1ol1EFbjR1vt1EnzM7ZeF/WoXDTKcmQjTRcN569c6erGAz5cyRRwwB987zH4JwWsKc+zEDgeikJA1Obvifj6eWXtxBybarQ7nSYMYUJjGWlKspo3LcNgtZuKfwEFLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719813263; c=relaxed/simple;
	bh=iquP5fG+MEWqMubMUmTlzg+kBqhyEpV9ruH2iN1wMDc=;
	h=To:Subject:From:Message-Id:Date; b=rWczAkkqERcGoHVksvakqMjG8cjYnzN3fuUw8IG0nizlvjvRPLtilDoH2zsxNzOW/slsvaP1XdKfO9ZQoQDbjs9WiTq1Au1as/dhxPFXrPhbX+getaZPJYNVRhYOWgr+nPydx4xayMG/mOE2FUC1qGcVsh+vZt5iD68igtgmrEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDkacEdb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDkacEdb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C00C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 05:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719813262;
	bh=iquP5fG+MEWqMubMUmTlzg+kBqhyEpV9ruH2iN1wMDc=;
	h=To:Subject:From:Date:From;
	b=UDkacEdb+RXz1I/oYwGCiCY7YbGS+CR+1rXGpwNkn1gxlPeQrLt1B4E+XH5MS0S6h
	 RfsO1pPXlnBrPlT0xqExq/x+7SiTgR4JygrjFatmnv84G2Fk3BsUcyOGG07OCYmizs
	 z66a3k4Ak6gfk1URevcqD8zR1DcSwW8GW66Wv1yS+VPRT1UmhUTGmCQ0f/f7ecR7iL
	 d6TGvA6+MROfbotw4W+eC8QkFMbwa3T5Ixdi0TBFBjEGdi1Ae4xg1Fkk49K+WcED0i
	 AA5Sx7P2Bn9odMNhVowLYLmpnYRndtG7axxtGEStNXt4kPRzJxGQJEnsKA5DMScMis
	 iqm5KFHHDVHDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAEFCC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 05:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171981326275.23008.5934770665871626081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c837b820fc53049cfc268d5b1002208ae75915680f4dbd3c9030c924c44d5e99
Date: Mon, 01 Jul 2024 05:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719813262
