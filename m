Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F91243371
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755152994; cv=none; b=W2x2VEACsWsvfs5xvbjL6PGhkYw89S7kE2l8F7HJJrF3N/43q3h33FegWdsyCid6lbii/t91u4KUw0P7UB3C5SkSvYIC8NaA/7g6Uw78shwYIoXJUYTqG4Ntifh7svSLx17mn48TRhmsJmpAmjQkH4T6oFdYCnxZSrXq7vE1yRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755152994; c=relaxed/simple;
	bh=vqpsZ05SQhcZ4ybC0MN45ySxBK/aDZ58wHN+7ZVdnms=;
	h=To:Subject:From:Message-Id:Date; b=QUtFSN8wBFdY1XmWAQ8+jYwOSYfovFM3/ZrOA3T9Dz4r/eqfqeR56fjY7TWBtkfI+y5VaZRGl+K+YQLvOChbNWBBEut6zWcKLj32IMWTW6btUHZsYVamzxHu6M3Jr/aO20/MKlHjNvVTGCYK1+hn1+1a3/cQ/tZVMJYHUn0Ge8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNRuTRUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNRuTRUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A268FC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755152993;
	bh=vqpsZ05SQhcZ4ybC0MN45ySxBK/aDZ58wHN+7ZVdnms=;
	h=To:Subject:From:Date:From;
	b=qNRuTRUdmnEuQT9PW1+bCVy0+XCj/jruS8r8Ik59WoZtointEP+fFiRer3U8BCLZ3
	 rTiEqoWNK238MNUttJ6e+u/XyZ5E/iFOTCR76cUVK92jReOFmAHV2ikAjjoEO7gC0H
	 fccoL7mazaNsEUrLe70G6rDrJehAQgBLt/HU/tpyYP6UAV6cvzwUqDkdgcvLu6TjNA
	 jnpjo9bufZZSRaC+4leaivf8GBc+U5m+WyIjCebmTVQBDIogbigDDYMEnCjPGMOD6R
	 /msmMqdtPrTGRu7MHk9605ukhOrifOm5jM+2HmsQiAQWF4/pxVgjNGG12yTNwMoDdQ
	 F03x9GEsXblEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F444CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175515299357.31343.16084252687051671748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b73d865d7a86c1cafb8b8ac57c7114fff213a78997ef1a0578b8ffa076ca5c52
Date: Thu, 14 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755152993
