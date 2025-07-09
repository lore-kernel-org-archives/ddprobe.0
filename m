Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364C0220698
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752082194; cv=none; b=f0QhNv2UHtFiuumPWhl1Mf1xv1zYVdX7FIHSuMmvMYbLiyy9LOmhodnCLLPfcAlWxb4V+dQNgGQA9XJ8b7AFiJoaxzLlIqhhQmuEc/RKBAdCY8xXf49p6Mjj8k76YjM00YCl2/bYu8eS2EuzeYtjJ8fDdZDtWuC/k0iQVM2q1ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752082194; c=relaxed/simple;
	bh=ayZl9eZ83HKj+lL5PQSNHN+khLWAlGP/eP92poLG3GI=;
	h=To:Subject:From:Message-Id:Date; b=d04q+6RV3GGw8+tfVdMjvlU+DixFOLbbFv4TUdJ0p3yumODOMni0MwEVuoOqKSJBYPFfpGTPy9ItBb0MWHw6fir7iJStUNc54JPqQHXgrCZ1uODU8gAnwW4wf+d+OpjnHDEqNc8F/GzFlRvrDSaG6KGRWnu6DcjMIzSSVvi4eG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWLWHeol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWLWHeol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C77C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752082193;
	bh=ayZl9eZ83HKj+lL5PQSNHN+khLWAlGP/eP92poLG3GI=;
	h=To:Subject:From:Date:From;
	b=jWLWHeolXYxZRpdEiwUInTOZQcHyiOCezBRuC9gmuy+fU0cZcLYiM0iJlEjcYNZkU
	 XAIGYi2OqBl22dQ4pdPKpHccKA1t74lkQgY4YYeh7uflvIBnchRm2yIn3qmj5Eb22b
	 QjYz875xh8I+X3o3+jhNrrctcRP5hdhYXYAmIXEhVFip5Lq+isJbiKXSg5mFw99h5w
	 LCSSfA2J4kiYnM+LmQdIhoEmlggGRzX0Lrm0qSnu3Fbk5S4wd5sXHYRqS48ZyY/dzS
	 PxRREkzjL0HEkUTopZpH+Jh5hUNWMj0A9EHFBSNwyxG2cKkQz4EaZTHfDc110NEX9Y
	 iEibAd44Rxbgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA1C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175208219357.3500.4282644092206872397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d766f26ae90fd399dfb6959649a97247ebaf7ebf89ddb0cfb42c0e66dd7cc5cd
Date: Wed, 09 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752082193
