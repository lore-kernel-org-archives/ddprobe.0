Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238CF13AA45
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728383154; cv=none; b=s0jSU5tL/jhyXOS+8tbRPzAZfuhkLJ04826JerMoP0S6Uxzas/8L5yp9b/h3ebIp4vIHJGGwkXA8MyRi7twlwwMZe2zh/esq3aWpGcXPE3yeZQLtImXoVKNC8HWEljvG7xBsj0Z9tpRls36FFr6tSNN1TmJhATTunxFhhGn9Yi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728383154; c=relaxed/simple;
	bh=1fNQUzqL9rXG+UkT+aU7IkGLQgcBaCJOK6Q8qS9H/Lc=;
	h=To:Subject:From:Message-Id:Date; b=tZKoMe8FJ5w8M5RhCadZy1gs6lZ/cVEVnciO6M1rHIVn5jDWgPQm5vFnCAZYohlqhO/VBJRNKl1ggGGxSkirNmsVvTURXcZdSKwuPoCfWgs5BeLSFXxWtZqKM/vG8Idx5i/fnm6GJBFmxcDWIiv9jdA84z41ou3medKVImJWUxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3s+eWvv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3s+eWvv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB39C4CECD
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728383153;
	bh=1fNQUzqL9rXG+UkT+aU7IkGLQgcBaCJOK6Q8qS9H/Lc=;
	h=To:Subject:From:Date:From;
	b=c3s+eWvvxKO94G1Nh654cdG3Yk2mQm8rdHDgjpodO6o5xdF0bj1Dxw97WV57GLudT
	 oI663SugGetFPiEpPLmZgOs/3HsHTnPzbFhrcXF69gyZVFb4Dj7TrT/kOOEYVLNixx
	 Qzx+1O5FPz2fugq5iJFuUNtSm8nWK2II+LZBWMr3mFtsceV6z5qIMQuE9gz77ZoET2
	 JvSj6AnHNunSW3oLEPChsub3Ct7Kj8CAEp94ls5QK1qDRe9OwC2lA7dEvsoaAoqpP0
	 2G7VtOjd62mfWDMrNskTOLdb3y9gR7/hdvRoj5FB7e2Qa743lT446+hzda3mvhjXhL
	 cciPAbo+3cvXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E9BCEF148
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172838315359.25137.5386441234468864276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b85c0da0ebf37c187aa52c870501b04fb8b089510c938e7712d9147c8520119
Date: Tue, 08 Oct 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728383153
