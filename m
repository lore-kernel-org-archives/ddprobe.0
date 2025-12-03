Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A570264A74
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 04:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764736974; cv=none; b=ioKhxWcJE1ycrnzcK+Uhr2WJX8ZTBtIaRmscXoxFIZIh7759RrN7orNFZRZEBgi4lmUVRea9lzUUXDm1n06ebwV/Z7jNqgLGYDKA8AQzFR5FVeutLJniWLqnXaTXc/Fq8tlDTAHEbypkqZ4jIAC3cp8waVoIFF3M7H5EwiXi6VA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764736974; c=relaxed/simple;
	bh=y0VPhZWt+TaLzvEdsb4NnKYRA1Rtq5fEJFcBiNAapoU=;
	h=To:Subject:From:Message-Id:Date; b=rtg0bnZ86InAZ3vV4dEfCL49gYUOFGC5T3Hs9H0S2/C/h6y3euXOEn/synNkSPwKxhpN3W6Cf35aASbJN+qaIBnjloKB7cmINIohavXC2JAsZjSc3GNWDme27Dynei2BlayMV5aZQ5GA5yuUz6an9KKiw109ILHnDHCg9FhhnMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0Ifh0bo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0Ifh0bo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B632AC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 04:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764736973;
	bh=y0VPhZWt+TaLzvEdsb4NnKYRA1Rtq5fEJFcBiNAapoU=;
	h=To:Subject:From:Date:From;
	b=H0Ifh0bozDmJstthtgUGd0pigpiXBXeNEB3pjbT4lV/nDm69q9SKjDmKsp5yrbT76
	 w2qJ2xTehwKs1PLOd49ywvFm3w3QRPv6TZQyBJ2itz+Tjk+MifNbHi7nCkoJCFDE1i
	 CEW88Y++EZ9h6I3ho0lfsRkU3tgh6yZl62MBqJYDgVMC7zcHw6aior29f6inqXGXU9
	 iv1p5IcXdD82tOyPDrxLJP1DScw/emMcGXORJVPNYOv118v5ZLDh7zGufYhCzE3G2n
	 YsJ67N6eo5uRhlo+MHJ0BAFZdXl6mxpQJuohGXOi+Klj2Lhqy++4iO7V7mf6rGCI6S
	 +jdwmtyTNqaDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1CE6D116F3
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 04:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176473697363.7776.7254821817990899448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f749b289e7cab0a36bebaa3b4bea7faba5099bbe2ed2ce2a315797dab103a35b
Date: Wed, 03 Dec 2025 04:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764736973
