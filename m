Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9224623EA81
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 15:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765122774; cv=none; b=Y+Cq+NZ/xyJJ4TCZvricBWk84pb9r3/9BLvN8TtFhAbautOskQutqot+QsrdQQ6s++JPjhEHb3mBvIA3jkNshzNI70biOrCSnzv7c73rWuTxazD8FvK7f+RZD1CLGXAP3+xIRhDTBaE2COSrX+j2EPVlomvc4C2CeohaRGDsN6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765122774; c=relaxed/simple;
	bh=hKiP3eUbVt3H+KBHLunJuT9iZAKc/kQZEw9J+Co0D08=;
	h=To:Subject:From:Message-Id:Date; b=u0tTKABBpxtwWvINNXAVAxHc/MdaIYR2BlChw9nUe0pT2AdjZbq/0idIZJYnPT/g1Sy4l5uWXpp8MjD1ByTOX24HyUwYVp5EVLM0BC/gSD8rHq2h5pqYx/PcMczmi0jJHRs/MHGLgmlhcHtNEpLtSJXsr9JK9HafPM+qaMhjcVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k80/B0IZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k80/B0IZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3365C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 15:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765122773;
	bh=hKiP3eUbVt3H+KBHLunJuT9iZAKc/kQZEw9J+Co0D08=;
	h=To:Subject:From:Date:From;
	b=k80/B0IZ7QYfv5l+lM6igqkr/ST6ldOlnV0f22Tvn3ee8zD3+UHpdp3zM3hu8m+WJ
	 oV8vXJtlV4S9uDPDFa9dWFRRaAQk/aRVzFjtehM/5SpU9cAwapmRJFwzMNRvp3eOs4
	 hWggZpU+QRCqLfMVa39y4v271MWuBV2PVkvo5jKWK+VYg+iCVn144km5/VIgtxC71q
	 P8zLVRpH5CoiIl4PmcZdB21M62DaO6rhpJNOWiCWt6Zw+r/Mm5AYyc3ZYBpTW44Q83
	 SxVGtILHC/wjYtnFghUO1GJoZbmV8YNJT2dkY9Raq0wUsYh+Fx3xoYJiMPkPBNQKyt
	 jPgZvIdoee+vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EC8D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 15:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176512277358.2529.3591807998609158997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ed8d08adc437a05305631a61e0c6ae11f7393efaf4d5941e420470e596ebe74
Date: Sun, 07 Dec 2025 15:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765122773
