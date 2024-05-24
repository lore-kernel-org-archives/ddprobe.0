Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C1028DC1
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 02:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716518603; cv=none; b=rBn+dM8pW2cow0ibt1yQ0bTfXy2eeGimY25OlWwGyBxtuyIvsHC9ToJANON/Hmf/g+DOtmXHLpzIHHKbTfMUUNGUr5PwP3roa0g2XIfkH/Eskyqko4rrP4CsOmFPMIDDvD/QCmgudmV92vToezotmp30dFhniqIWOaJWe4MUyJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716518603; c=relaxed/simple;
	bh=+ZAkkwxQnmf+/4FnKupp7eJPNxhSobmPW8L40LB2C3o=;
	h=To:Subject:From:Message-Id:Date; b=gqxsZ9YNV8VFmzfH0tT9+s08kdgG9qH6PRiVNN/GJI3PNHv91aRoUJ/eMH3+ryvbO37n7tI04JO47ZPh32V8+Qjd/f8ZtszBLFaDjyDh8dGNLS+BXDOGx1TFNEtlpCRVvR1+7j81Vc3itcGpJ6WslCDV3Xq3B4uC3fmOg62jFj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WuHy0Sfz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WuHy0Sfz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66F8C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 02:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716518602;
	bh=+ZAkkwxQnmf+/4FnKupp7eJPNxhSobmPW8L40LB2C3o=;
	h=To:Subject:From:Date:From;
	b=WuHy0Sfz45evq0GbNMCaYoRNfKIG+Ezo7d9BGLEGeqB24p6rVYOoFGuZr4cZ3+/31
	 HdNuDLD7k+6cXZ+CVRBOtcqWE733hWA5pVZJKIIkuv6f+x7hioyUuixLgb/n70dO4a
	 gTvuOIdxK1X01GMSjnKmg9aRmyOY3xeRxlpZFOqxWPjAS0aUz8BIHpyfy0gvPquta0
	 syW4XVI9qQVOxcGOogQBypbRqVnuIEVXl8BeZFJ0sPLrixaTkFunX4271Xqy1rlzIU
	 43WrC0mtKa4s/QltD2ks4xFERT6zghbntV9Ri+5mn76yZzN73voHDZUw02meEBTRku
	 6Ml/wfK5IUPjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC5EC25B75
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 02:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171651860277.15824.6248151545608848467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 328d0aec04a508c29303f3260012829396623e37acfe28f03fcd3419a07cc55b
Date: Fri, 24 May 2024 02:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716518602
