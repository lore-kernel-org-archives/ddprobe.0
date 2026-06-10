Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1163D2641C6
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 16:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781108194; cv=none; b=YMllvftpfgT+lyn+27clvd1uKWC3+W3cTwBZlex/VaUrE6Zqa93pBgz+BmU5iCsWY2hk9efM39N658dfa50p8wQgF+BVegO7SjBLrPEbdikY06nwTWo/Rb5dI0llQ4dsfMXco/lzbRHRM/hp7068M3vlZLEFHh9u0xoEvuT0zbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781108194; c=relaxed/simple;
	bh=Euv+UvdJgwHCDwkxT/rz6yh0LYnN4q91uPE5Cf6hsv4=;
	h=To:Subject:From:Message-Id:Date; b=jkCK7bpwBaZMMWzusMIFp0kXd/SxBjQxZ1YCOPGvR+5KMdqZUMCrcd9kgHnMXPE/7EL3DxyQLOCTMsW4C4MWMOxLkNZl8qmIpPwq4CGDooDknRNGys4lSCz2/dgs6SQ9xcwrqUzcq4H1iP6/B3g/POYdFuq5AjQvwP9mRsK0tFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZD5ZzRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZD5ZzRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C84E8C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 16:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781108193;
	bh=Euv+UvdJgwHCDwkxT/rz6yh0LYnN4q91uPE5Cf6hsv4=;
	h=To:Subject:From:Date:From;
	b=pZD5ZzRa/ib96AG0U9y3sOFcIh+e8WCAgfN+AeS0lw9DXjEuSV1n+DHMrmAEvYFpF
	 3tdGrTW5EQsJyeGGpEfyjucp4Q6CjhA27459u9lb4pjlIhaJdF4O8KxZ1RQp9xMYr0
	 kvuBRunZ7VUDY3l3hug9WDNPKmeS4roiHIbkU97AVO4goAf6n262IyIR9pZTmkAovf
	 R89+5grIMTay5Fk+tVe3NjTSE3QICz045htqMPGSKG13e6mCOaGq4xge80u+U0QhMr
	 JJWNM8v/bVe58O4rxPr4aON+igvnHn7nJAEdBj7g8RBIpDCbui0LPBbP6wl0KAD61e
	 i+KShpcRIiDPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED9CCD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 16:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178110819370.25527.3371372606659476886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f12dbcfbecd67ce108d95720e18527262230b05e06b2c5401d45a776505b4e48
Date: Wed, 10 Jun 2026 16:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781108193
