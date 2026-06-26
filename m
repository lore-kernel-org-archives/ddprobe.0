Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA034315F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 19:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782503314; cv=none; b=Ks1TY010WpLYAPLZJ2t48tQR4TKnLMtx67hz+f/lkhK7XzSzomXSBOBJDFc2dTJwgRe3pASUH1YFboUNHQXBo0QPQiavOkbE49WR2pYdz+yxkxkxz1GaqOututK2vnlrordWul5lLs8Oo0ciTFeCvAwWQ4aQEzOQQCoMU56bl34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782503314; c=relaxed/simple;
	bh=8RnzkiZB6sADDFdvNfQ0xHBgzpbPGaSFQl5I3LMYGDI=;
	h=To:Subject:From:Message-Id:Date; b=N27MohmXVqnFYyXsFGRdXmafj753FoT4VMnpU5eu8kBjkTgHb4e4nZK8QSqTK8L2SvZqSon6M41fl/OxrgUFnpZ+RdS3c03jOaW+LLobscQ5sE+vRibZA8HjjEdeSsRNTUHYgQSyzGO6HxIRPhqjLtR3AjB00p+rvn0VcEiJVn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5gikhUF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5gikhUF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D907EC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782503313;
	bh=8RnzkiZB6sADDFdvNfQ0xHBgzpbPGaSFQl5I3LMYGDI=;
	h=To:Subject:From:Date:From;
	b=e5gikhUF8nedfTDA3+gDUSLiY2eLmYVX/ycMY1MvaYXBZZiyxcxaefmkL+MxGp8U/
	 gq3fg82FcxGye8vpA8ezT7OG7vST7o+aYUyromPpqiYe9y26m/+HNRjtAd6QbKjz2+
	 x9irRShbsRl+a29XXrmEIEyOod13cgfUU4ZF2D7XAtpp3FgRs3gUtT5RRpvCTkApvm
	 52LvRi/ya3zDNjovvQV6iXQYSZ2N2Eh+qJx+DiZVXvR6mX2Gyfi83799urWzDI2xCb
	 i2onr2Wc4GyZbur4vSaKO9UEU3ODtzsXNzozQrTos7L4+IezDCCHkFbGhFquypfPdf
	 zdWLCEyIi6XcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB9BBC43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178250331373.16954.4398621425782939989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 593af6269d9408c0b51241c3eb3c2233e1f24a4832040021274bd437eac90ac8
Date: Fri, 26 Jun 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782503313
