Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F8A1B86F8
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721364954; cv=none; b=MCWLd8VwoPxKFJKM2dRZFGQK+mcQ9CWd+RN4yM5PU4eFXyL5OnJZwxMnWEAPSGUOK5DRQhPhHvJNeCNNdkm0V5g3mMkAgNn3jCbs9fiaUwbaLM8TFTtlp8LW8r9flmqKEc4WEMU4n9rX2TJoP1hq0wiXtlAHUgaftQc97woBBH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721364954; c=relaxed/simple;
	bh=XeLlf2JOQX8UPgxv6vox5t7f24I601VBRU7xEpLCGns=;
	h=To:Subject:From:Message-Id:Date; b=ur9kuTIcydGKu0iZBwf60/EW+MJimN+SxnwQYLKs+hVtZe8Sy61zBZC1qgOwnJPldj2ZALpIdouauYiB7j/vPyqrA13+OzkGEqthzq7QVOzj/PF+ureZrLJKpWFOd8G3gRs3Mk3v2dtdcySGOdVFLrMLMBNgiNkPy7JYAlToG8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=negliE6j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="negliE6j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74D2C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721364953;
	bh=XeLlf2JOQX8UPgxv6vox5t7f24I601VBRU7xEpLCGns=;
	h=To:Subject:From:Date:From;
	b=negliE6jU6Hq3DSNn//RpXY0L3x9vbXUoxqvj21IQU/c2p+ybhjHjABb6HdKITxRK
	 JVu+PEiXovSRZjqbpFoTsnJldbiCiBinPaUyqTxDBQW6ouMOYmeQGDfurQuVSqQkSY
	 2RMsmbNFCQau+djIS7s8hs0+THiI5uuimS6A+lU87qX79uol9IIJdeGOSAeR0CD6gH
	 zW8eO3EM3hXp5oKUaKYp2gcPY8m78FwpqejcYgh7Hl1fR3bGJhKULAcTdvV034NoPj
	 6+H7r4o+NjQEH/teqQLKcAEB2HKqhZXwlXQmabhvYuycNJl14dTag7KocD5aUF4e1q
	 THrNgPO5gHWew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9249EC3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172136495359.6194.2833843426929911589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 179b2f1247d07143ce9008ce299d48c9c1f8da0668e789e3e38c4f51ff4e870c
Date: Fri, 19 Jul 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721364953
