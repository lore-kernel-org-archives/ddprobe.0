Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595491C695
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 04:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712984363; cv=none; b=aCRi/VVhxABVTwSVaILN8qCF0NmlmYqhoz/mQBUmfFiWTY+3vRAPg01IFDyIJHWH1I3TEs48FSebvxhVTu1DD6MA227u+N3eXT9zhvd/wuxKnBqGusDp5zq0eg5zKMRXH3HGy8Oym9WAN1s0PysZ31aw9zUr19kqvJkyH63iNRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712984363; c=relaxed/simple;
	bh=58lObm+OoaXTLhTuYTf4MNi/OpCaWcacpmo/eglEcaQ=;
	h=To:Subject:From:Message-Id:Date; b=N3mrllm5HlB9/+o377p2U3hV8tDtVNlZuR3J0VWXvNC/Ss6cXe5J/4xn/nzjV8j9xs/F9OGxv9V0RSRJOq2uvOyaVnGe96LJ9O4y0dhoPxOmt7FqwtEiaPRj2dnQn53YVj6XIBxNUPuH1EX23J+WAlkBdsHtwnBYAr/Gm8+nUtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkj0FSK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkj0FSK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4ED2C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 04:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712984362;
	bh=58lObm+OoaXTLhTuYTf4MNi/OpCaWcacpmo/eglEcaQ=;
	h=To:Subject:From:Date:From;
	b=bkj0FSK/4+JP3Z+yNTeSd40md4tkKd3t/rB013ZBmMsjEnG+JW8yBjvIgn8tYvvc0
	 sdDzF8AfDoFl4ckiGiPSPTEC/H/WIka/LprQz4cxt+KnBXIBLIiXCpvgzsRJYUOCLf
	 OppjvNEu93oIk071K+cSPg3zC6r/ScByvcB+hYi0BjY6Cjfb9Hg9P+aASZF2O1+gLr
	 y9Gq0WL9waqXy+SDGAzjOzUE8o2uT/Q/xci4gNOkGfTFXIQrdrHCXv0PolwJHm7Bjq
	 rpESThzcVKF00g4dMwvhyVa2TVhbysJKLJjxBdVtOyOise/Dt1agMP5ryz2+AR7RHV
	 mcNaHonSlaCRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD050C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 04:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171298436275.29584.5468240095418424582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc7d6876c476b0903d96bf598e65ea1b03edf2123d142756267aebb86476656a
Date: Sat, 13 Apr 2024 04:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712984362
