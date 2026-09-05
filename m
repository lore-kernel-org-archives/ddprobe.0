Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72CF738330E
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788628834; cv=none; b=fGfbaZVB4cJPqtvxBJ714oCIHRRB82hfw6FpD7NrLLiuJQtTRQ05d5m4zuWK2+Ru1bUksN/J+cJmVxYfqLNbNejp7gwFkjN7qWg6Tzif4aK8CTbABcvqEojBr+kxbv4KimfHcxRMX9EUfU0UVFJ0Bhd+M3Fi9xRf0ZdLifEiVbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788628834; c=relaxed/simple;
	bh=mMFqNRPdZYxI9Ygmn41MWTHi+rhl2iAu7JMVxevTe7c=;
	h=To:Subject:From:Message-Id:Date; b=Eq/zV2n0Wx9Wr6Ds45jg67TNyWE2+jSZAk7exaLOOQiABucJ77epfj4EJwMlEfmkOMzS5uY67QoErEsFNw2J9AZc0LLsFwb+jTWsOWoRyfrHEJ51ZrQkgAMWBlbm2A5XkNgH5hfkmJCHlSdvwTQ8dLy48QT3Z8xorjIv/dphFRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IsH8NHHO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IsH8NHHO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40BDC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788628833;
	bh=mMFqNRPdZYxI9Ygmn41MWTHi+rhl2iAu7JMVxevTe7c=;
	h=To:Subject:From:Date:From;
	b=IsH8NHHO7YBt62dDsmQ3DTzeh+LzY70bbj4/7c7CMaBO6v7lkvZqFJoQ43htUtU/P
	 cvN0jNCrNt1L023tr3IsP8ad6srVEVgLPGTa/t/TwNT5oboTXOnn6Kzd4U8DMnZ6Ls
	 mXwWd1XRxra3FnzQHn19xGW/kPAalOVpAky+RZD0ZNSIsIvLOIR8SWHm2p/6a6jygH
	 U8AdgUNnVLkQLBUR9hqsdUUNP17RgRqkZgKJsQxJnTyu78YR9gQTR5JiXu4VgHfIaN
	 pYrCZPS0RBAGXik8v2ywNKzoFkOXA/8GSQbAz6RoAKY+zN4VJmIMA7qd8Dl4kXKwO2
	 iGhUhuzKmoQQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0896C624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178862883368.4499.3630797373636420184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58deb41141bb39c86b4f5389d8c133ca9a0576dcdb27636fb27f7cdec2ee1818
Date: Sat, 05 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788628833
