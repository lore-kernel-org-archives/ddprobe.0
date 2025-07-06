Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321BB204866
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751810395; cv=none; b=lBB5kF2FnltLuCSeSM0PxyzTDPVdbZ4ZLXPS+vpT8cz44+3OXca5PP6XW4Cslo6D0HL6DPSJdcw62gABATtCq8crIvG3Rb4b0bQ5HJk8fVJON3dMiUZLtfaKikkweMphzOtg8sBrDTKEipnA64/tNacnjsVy35F39kOUvRZXJKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751810395; c=relaxed/simple;
	bh=EVPAVDDMCnp+VekY2Ltho6nkNtgyzjMZIsmXMA6ir+g=;
	h=To:Subject:From:Message-Id:Date; b=qdtdvHdPOSKFMsODFJWXIO7D0ELOa5MbdJJXpHbk1MK/KAOdppH+TuB9F/ViSkDO/qVJUJ8FWco1vmPOuAu1mJVYAaKdF9HJEc7hvx6I4Bm+7HbwMKPfqkQ1rUVki+aBF2u8+Jb9Mxc+HzJBwJUqWHQPEz3JKxpHoFf+jy74EVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eb415MhV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eb415MhV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66EAC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751810393;
	bh=EVPAVDDMCnp+VekY2Ltho6nkNtgyzjMZIsmXMA6ir+g=;
	h=To:Subject:From:Date:From;
	b=eb415MhVIZvEqjb+ktwKcpKCzv4OOWcdUbPKFmyA90epZPeBQIseKEEbeniSMqbTQ
	 OLFaxppjvVAlRhFLZOshJhBjVxm1OxKJukCgMj15U6nrTROLWMV7aP8uRoprYdryCa
	 SpISUR6WezeyUFfEXuoo8JpftE3Nqq50wJqxiPPAtC8396kZEKSqMMDt1rsitkM6eC
	 aJT6drhYijaCrkTimlSqEyydGuNfBh1b/JAaj+7vbgV5+JS3uO0MSpBhd7MiWUHhuv
	 2mNmyTXEZTGSjpMH7fRmvfmKQrbQBJ7LWHpBCuJ0oQByaSMOm0nQZC+QuHcCCYW7A6
	 hBHOCTYuEABqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D60C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175181039357.32014.293077870405946752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8abaf5e400fe09389c07e48c979defa2f23af234b0b68a11dfc5fe06f0374237
Date: Sun, 06 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751810393
