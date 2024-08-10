Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2933618E29
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723320954; cv=none; b=UBBG3Ak8JCVlVT0TqgFkiv7/m2CIUqtWonFgRLywS8UBdo9pM/o6lnqLXOohM4nFdodMTikoYEOt3Ehtl2HM4kmQEemY0n4YdRPCizoCri1emSC26zrHZRLke/uJzp0+590R9I0R5Nll762t7JQRW8fnEjgjHm5Tqeykf4Lhp9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723320954; c=relaxed/simple;
	bh=92Jg2uNWURjDqBlXA3sOUdUptqWpG06g6W1XFMvlW1c=;
	h=To:Subject:From:Message-Id:Date; b=Tk4RsuOhhe6RY+MylPfBH8/rXBIkw2wNaoEc0f6lRIUc1HWA9F6NBxuBYKWHsm/Rc3YCnOc+C2Cq86hd4afE2FeCbKDQLLW1BSvQVW4DhdzMf5WKB4Xtpmycy6dJcp/LT2sWdAvtNSQPR+Ne3bNquwHmJGFWg/QKZsT5jQEb8Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCuUO0hn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCuUO0hn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FDFC32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723320953;
	bh=92Jg2uNWURjDqBlXA3sOUdUptqWpG06g6W1XFMvlW1c=;
	h=To:Subject:From:Date:From;
	b=VCuUO0hnM3pWKmcebF4sSgEXfxUod+m6CXSKogR8yZLiA1OSpXH0GInfGfMjltGhh
	 el1amOMxIi+Oxr8McCgYL/Oduc9w82YA0/E6K5Mk0XqM6abUZohR1r0KavbJoNLPFd
	 rErZidsXWTL4oFfp3WtA6WqezaSLKdz0lbPTi2NGSCLEXJ8g+IZwgtB+WlJIuzRuRb
	 OiNwE+zV2+c3NTrs/NihyVGrBLYoqlG7Tshi2rd2frOvYk77oSJpxg/j6ApF47g5WH
	 MlJe7/Rg5BnTPkqXTvq6zXMk8X2Gzk5Lv26F8aG4m1hCHlpOOWbRnqcHMabxaOsfM1
	 99LaQ/MtZVXwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99876C3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172332095360.10691.3427709427628204441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbb6f7cef1d978e52edad15cbe0e44fa821dacd72c014e6a5d3fad9931b3167c
Date: Sat, 10 Aug 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723320953
