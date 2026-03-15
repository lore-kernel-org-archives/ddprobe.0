Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E92C4502F
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773543894; cv=none; b=qrqvJEgvC4Hdtx9BiilStvdO5j7fjLs4kfyFMoGvBvJkSVlLg/BlqXebU+XIRhN9jOCSRjg583FuG2eo5ZDIo8ur+rHC/6cEEd2W37wW+51VhX6y2z7+jzS6tSc9szWdOeFgCEkSRqJ6yx/LDxZhUDwPSBuM9qa1frAMLuUEPUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773543894; c=relaxed/simple;
	bh=sURJgH53TJTBA5m95qLRlx7rnyi6eFqh9HtR3aPsqJ4=;
	h=To:Subject:From:Message-Id:Date; b=q4+Cw6ZmditZsiSn/R2cGwLV8hsC6zRcD6079Uqb9lPs6arS0ARHfGLZVR/gUZZWqnHZ8zKVRrJ4bM48gNR75Ax48rlu3WoQiLD3OyyFRQPWHZG1I7tN5l/GQH4czIgNGEVCxaqI6yiNDzeT9UeLR+bLcIggO/DfJTFoX/IHWY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DeRgqBPh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DeRgqBPh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB4DC2BC86
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773543893;
	bh=sURJgH53TJTBA5m95qLRlx7rnyi6eFqh9HtR3aPsqJ4=;
	h=To:Subject:From:Date:From;
	b=DeRgqBPh/JKHa9DhLosuQHlVVobp72WU6tPEQwcsTKEk4Cf1CjIt+Q3NwwQCZCTqU
	 r2e8RdZp/NG/Su/6ODR1lWsvogNk/NCH21F9VlwZ04aDmPB/NE4QlZCNgTcLix3gMx
	 3dHBXMJppS6/WjN2Or8qWsFlwslNRf0P/gJK6hrJYKNZ2T/KS9nfkpAKCK5+z3g+Yb
	 I41Yf0WvEFhstAhUBZS3bjGsh7BkcjZg7zcftzJJ2kqiqnVOtLLXIBD1VoK6ZlKi/A
	 pmasuKvvgD7ZeY0O3fxJ9727M3UFW0Q39ChF1BN/C8jUQ27FXRkqgz/r/QDx0wIfUv
	 FrMI7tAIHKgfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983D110854AA
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177354389359.21486.17768169304477789302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a23680c62c972fbb6a6babeacca3da5c85d4ea1afa800ad1a670d13f76955d2a
Date: Sun, 15 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773543893
