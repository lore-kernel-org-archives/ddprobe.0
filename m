Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFCB41E9919
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 02:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763518914; cv=none; b=nWdpJjQiyo3F4+tpKZRuiD6U73OpC7mTGksB+AhvMjWL3GOpTn+alIHLJXBCqz6UmJXjAunwPygB3BWLoY7UVek0xLvfUTarWShrvHE9P1cO8ukHqaf3G3gVQGIGr8nDdc6OI80IGaNW1hyDyuTbDad4nB8m8hdsk/5Kgi5i3pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763518914; c=relaxed/simple;
	bh=/e/WK2Cb78Mtx5iLEcoCe8Gdge5h3jq2EBZEf8VaTsw=;
	h=To:Subject:From:Message-Id:Date; b=mjSrx3x3Co8jYWQ0ihTysY9vFYy05hsMeSv6KnBOTjzlp3nWDDeBfwfSd2eU9nH8DRJSk7VM/pmgkohHzcFh8J4iVLjq8Z/ccRc8t7vpvoXq+Vrz4lA/jjV0JCJ1KYs+BRnIkzb5EE+j14/Ep36v0SG7FHguUQb3oqZkItAB9jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MfrweAka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MfrweAka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09566C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 02:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763518914;
	bh=/e/WK2Cb78Mtx5iLEcoCe8Gdge5h3jq2EBZEf8VaTsw=;
	h=To:Subject:From:Date:From;
	b=MfrweAkaifzLe6FrDXMX5dR4Bbpw3nz7eX7h/NNhRBBQmVqljK9efz2w7R9BszgIN
	 gEQ7/BYrg0sjYra2HTJ/LXit96c7xEdGt+fRJ0ZsG85LBqtXr1DeYuA1ycc7e/VvMX
	 X2Jf40QcvSSpg+0bd0Y8Q2EIHPMF8me1ipW8akx0llSDfMk3JYgWF528OIiOi9K9yX
	 Jb6G5GV4/gqFq70WdAkN5wjkero/FhNH2cDDWIs0oAnynR94Lh26h9gXRp5uKGpYnw
	 RYEytD22pmx+SVCM/784OTpAFQd77nJQvZ6fRxUaV0gFTbrG+gIDk0+/dnYVazi6Hz
	 Qq2pKBu+ft9aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98494CF2564
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 02:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176351891359.4887.6300654627595344403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70f2eca7847170b667bd29da0e2cf01bb20e6a5521fccedad36f16f3d6277e32
Date: Wed, 19 Nov 2025 02:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763518913
