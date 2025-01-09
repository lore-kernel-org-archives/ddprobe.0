Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D7D4A1A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736412354; cv=none; b=HnATYsWjddCFG06yNS99VrPr1Sj41R3VdHSuktaFJoeDk/kvSYZRrvJ4TjWv1rCefayStiwvPJ7W5AsRtt6A28K7KOnUy5X+vDONoyuwW6Dq8RLlB/X2XADz8gLG76/awaJ2CkqwA/CK1gNtNFU1uWnL7A0hRoUILMK0PiwaGgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736412354; c=relaxed/simple;
	bh=KpnB/Wh/2819ii5xoaB+V9MEYFaH/L9VrRlH/urK9OQ=;
	h=To:Subject:From:Message-Id:Date; b=MZrOy8WafxKM9XyzSvt/SB1S4LRrq75pp6txrG2BWcVRe259a3FbBJFm2jmH+TN+bJ3P6dU4pA1XFPAC0BuDsKwEhNAE6/EUm222XJ4IXebZArXbJlZl0mYJXIFiRUwrE/GnhWUzNn7pOktI0gSDf9lvkJ6HUIKTd41k34rVC8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C85IguAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C85IguAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC74DC4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736412353;
	bh=KpnB/Wh/2819ii5xoaB+V9MEYFaH/L9VrRlH/urK9OQ=;
	h=To:Subject:From:Date:From;
	b=C85IguAs1halpvSIT/xH82QPwS3WNdlz39Zxs3BEztwOcDZyi0mqabDWLIaooYpZr
	 fHnQaE6Iu7E7dVuJp28uQZ2s0DK0qgmtW6i8k0HO3YvhVn/KXLJvg2slDHkBHh56x+
	 qOE5QYvbucGIAVggjrTAEfoa8P7LMpQh60pOWM7E+jC88auVg/DzrEi2gmRUbg+D3K
	 NNDsTv5qtmx8Mwvsf/4nnblWfNeFsGxBH/aGmym+i26xuK9AfMW8C5bBLm9tjFjP76
	 qEEyAqw3e36NFAO3pGBhGADrgz+xtgye9bH0SC3AzPOG/DED3LjggmAa5LTfJ9iU23
	 nPe6+3Ettrvug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A538E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173641235362.18487.817843200622963001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4072c7d6ed407ed9ba37c4ae2ee9a4a79034e4658d9bd2bc3437fd626fab617c
Date: Thu, 09 Jan 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736412353
