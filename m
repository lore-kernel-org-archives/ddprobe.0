Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3192E040A
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758650994; cv=none; b=CBCiz6GCsSkPpTEP44znuReCqLvXM4dNGc5c/BgI7tXKNx2BirEF4KAd/ePdx4y9uDFX1lU0EIFSnyqHIxO2JoZC4YgWEijtZaxQHU640OKIMYWeKestlSmJfW2qFGAT5YGjpqZKWQKeyvBzEGqrjkeKvx2wE7HZbyntBCvXEUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758650994; c=relaxed/simple;
	bh=WPDMW6LJe8XUnpTn5SDPbbp9SrFgE99NjPu4ug5RqC0=;
	h=To:Subject:From:Message-Id:Date; b=efaV/R6N1gq/0Sulr1qoogLDSZ2ksZqqfkxZSud+LMF+D8bt5rriL5OljTSYEXKCkEEmr13Zd5TMFfV+mRgPy3oLAOTXEuRy01cx9BAubdyzkQTO66pLCK81tUBOU4FWhtFrkTfM5VuoQllOXMm1EiuS6wN3zlGzG3j1v4F180c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XwolFkLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XwolFkLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DFEC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758650993;
	bh=WPDMW6LJe8XUnpTn5SDPbbp9SrFgE99NjPu4ug5RqC0=;
	h=To:Subject:From:Date:From;
	b=XwolFkLtHJLoDIzL0n7ub/Kyh76E73KKIdL+iO03z2moMPXcWtrG6ppJwkIe9hNEH
	 2l6prLRhcSbPbPz/kkM61e5HUFPebM4UqONwHBvFXzB3VXy/ZFk45m9qRx7ykkmfGI
	 uOBrchaYi6ElNddSIVk6VnxUza7ZboGi/uAwvSlO7Hr7ZXsYrKD3X70S4T9dtWBido
	 GT+G07qIG0XBaFsl1kIMAuzKZx10lvhTRPROrEgIPi0VxpKuoCQMg0GOl/10HDU7sA
	 nZ9fQP3f+vQLpKLQa2mdVtmvVVtuxADz6OrKIQVBcUF/LG3iyGsHtRnLUTnrJK3HrR
	 kvdKc66rLPWVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CF2CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175865099359.32761.18343682590623495699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ca39dbdfa7881c3a97a4117c87b516b2e352d5a1302bc7d4d7d9e176692ec9
Date: Tue, 23 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758650993
