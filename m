Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6995238D3EE
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791747034; cv=none; b=ucjCkoUVIY0D+Pwde/5YR8tBrcmQvW34//0/gRdfP2rYl4pH0kDC+Pa9kIusSLrx5vT1Zp10rDKRc+wc67l97Nfs8qtjQ9ASP/v11ekjSC4r+XXGzLzDIbGPhtVF/tJ9g+ZxaUyYRGF2I5r8zZtII6rIxrbbvifegQGDClFBotU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791747034; c=relaxed/simple;
	bh=LGDAyCjvPBQzIv5pXcG+/R1j8o6UdS3Pgq+aghyTmr8=;
	h=To:Subject:From:Message-Id:Date; b=OIgO+rkVSXkHRXci14mGhtRUgHynXOjaR3fSrcDXb7cJ96FTs1rkzBafNCVrbIQpgE6MPbo3ILWOLxAPLUq2ETVrD6Vn3PENZHEEXMEOuJBhRdaArnLH0M4sOSJsaHPy/av6SzfJ7EKCqmQYhwGYFQmB2ZuUX3N77NSWUV356Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkTNaz0a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkTNaz0a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35F1C2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791747033;
	bh=LGDAyCjvPBQzIv5pXcG+/R1j8o6UdS3Pgq+aghyTmr8=;
	h=To:Subject:From:Date:From;
	b=RkTNaz0aL2MBblLmskMlBxKW/LHnZQ6JnkmOB5mYcuwdLllcEtOqETNbuDRJngSBV
	 dZ35lM6EEG9/FPow7NXHlraKv0wxQiZ7SLEsoPCFhy/LtuiAPEQFVyTFx/99MPPRiX
	 is1vG9VY0E8ZUyOg/bGOsyHQ2q12E9J5YgEynIhmQcwIdiuA8UxSUxVqQwgsmj2iXX
	 eslW6sPhyZqDEf3p+Pg0itGbE34BgLFXNNTsuObnoU00LfeOEVn91j+jAlC/zr6sLf
	 C9mYmFcjTLAHzJ66q46mpdM4BGBc6BGjHlNXf0ZCAdAGYdArfQ5m6bm91ot28Qtrhe
	 j3fUO6Rr7ncpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE92BCA9ECA
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179174703370.25196.3259217806077919830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d9ba6a459409386bb23d62299aceed1d7f0d6aeac8d6957148035118cb53902
Date: Sun, 11 Oct 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791747033
