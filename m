Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D21214C5AE
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728122754; cv=none; b=V56YIC+whbDKzbahMatmkxdCHgIJKF1MKVqipeATolc+N+l7oaah3C0wC8ZU6Ozy5kfw56Z4idhWM0tZJomu5Hp4K/TJcC7ekYYEyncPacnirZ5FznaHZFAbnlIICr59E07Ttv5VrWWXfw4iF5Dtjj4Xb598tAGCim0eyfaWrWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728122754; c=relaxed/simple;
	bh=FQQDbpQZ+kthg2fVfKqHnm92NlvdB/rR7hLO27SRVag=;
	h=To:Subject:From:Message-Id:Date; b=r/KpJBu4gwqQ2cHzS3OmfsJCFqrmu7bnz8rqkDhm7VDfaXUnqBH3TQKHdnYw5AFHFnO0i6iBnMeVexaPyhMxYpWfSo7IDiQHdMIz1suk9L+MAfkXzT4vsqK2nJPqYY719C8hD5sX+4YcXyIRpiAGVrNbpnSzirbJjdDuPPjM7sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUf1iTtr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUf1iTtr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7853C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728122753;
	bh=FQQDbpQZ+kthg2fVfKqHnm92NlvdB/rR7hLO27SRVag=;
	h=To:Subject:From:Date:From;
	b=JUf1iTtrPqPMOxJU99Iu6L4j4+d+6TfVp3YgvKuVanu4Z2NnGIyHcbrCZBBtGHnQ+
	 pC/PqJkQgOJaeCGm4CSgDpOYqbxWrVS3wyELrWrEKPNFU0SCKssih7ZS0qOBItAPzE
	 SFWC4ql5mPAWcB4dKJatwp0IxQlvZjpsDUvGEIAg6pnAHpgJuhl1Ts8n/IDRyGC9gL
	 rc/9EdnNJdBoPuvBcUuPjSJ7e2JcMwzPII/CYnnfAgfg8pU2by2Y6Nm+8L7Gt7pcuJ
	 5d5IJmS7lQg6Bx12wcHakLoRnGU3Z1+gKOQgl/8qSgWi99ebg7tArD6Qn6Wety+cE/
	 Qi4B/LqlJnTuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F94CF887B
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172812275360.28237.4936020278621452123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56f24fb9a32e1b655d5edf326cc54ca35abed4bd8c5c0c3ed68c5c102d37c9ef
Date: Sat, 05 Oct 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728122753
