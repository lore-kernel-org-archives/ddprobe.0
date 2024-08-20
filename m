Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAFF318A928
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724174153; cv=none; b=BVVOb3JS1GprV96qWznbwC0IAVqQd8FB188VrZfFzdXRSsWU8k7GkmLE4TTfJliSyNJfuK1//OOSeF6OF3cl0zTYZQfq0MvDaoj1GunEaPIXuI+HLlMR1j/TzqVEy9Nmz4ambCZqWOXZ2PLLDUC5O5irNkLbqQ4vlbsX5ontb5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724174153; c=relaxed/simple;
	bh=xHhjct9BETNmr8m1VwAGqT0yYQ6F76w5mLsi0hzhKEc=;
	h=To:Subject:From:Message-Id:Date; b=XDD0tE2i11tlhj/Bbk/2WI0i0qupXG6UZzhILR03yhmK54B8co5O//yoRedMb7ZB5zpwZS8DGuIqEOCmJYFk+ynlvG7Lpdwvd00cC/lvkPq7CmkkwK/dxCNtFYnttWynbjps+Ij/ktDujIxvLZ92Ci8vETpCFR1UzumrsdUlWuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TamQJyU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TamQJyU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF914C4AF0C
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724174153;
	bh=xHhjct9BETNmr8m1VwAGqT0yYQ6F76w5mLsi0hzhKEc=;
	h=To:Subject:From:Date:From;
	b=TamQJyU1Dy41FskDjKcfcEtSSNJMLEQ/JhkjVYXNorEuiVIci3nfau2E+IJb0wEvN
	 nelIQN777Aw3Ovketc6MnVblfJneLONQx380+lUxV6lencqrOeJk59p8vXEcjNPZr+
	 b5yNhuodawAEJTZYFuULo7FCxV05qnpcOWXERDMbEkZKgEOFTZv1bkJbhnfrEfLpwd
	 FS2aBQNrxRk93jsJ9wOgFWlG017ScBiJFBSHHuonPlRmjsenqvhTpqnPhIEGr2ashF
	 pDg6OYYzd60URtMxvbEwXIukd2rs/vcsPcANPEv5oII+LnUudpBmG1O+uremyjjcdQ
	 LRoqZRQahl/qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C239C3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172417415362.12554.7904509014093290569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a8d0295b79021e3ac3603cda84c0a2ec03093daa8499d40465d7e654a1a5958
Date: Tue, 20 Aug 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724174153
