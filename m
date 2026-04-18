Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CEE282F30
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776530854; cv=none; b=pwSsYNR+vP/NGtpjisfBps++TA40ZAR+iZNUhTDWehnpkBg941YKACRia3KLFzfd1q9q/NKrp6Tnw30vAAj9ZF1f1EU2K4myp08Lnm3XKPmbpWimwfIJ/f/XBcMnoKB5GNLejGwCNIl5OQ38JbWoF8UZt5DFtY2ALlKQY/FpDAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776530854; c=relaxed/simple;
	bh=9XHVbbXz23XqOeQnq4twDBVRvI0eOzxgnRjZI9T64jg=;
	h=To:Subject:From:Message-Id:Date; b=hfIOLsLpAoBUfJr2BGMOlHcwOjyGJGZYbrRQVP1lhDyvaSQCXTZwUsnE74hIuM71lUceLEedZI4AMnb8iBwJK0gDeqfx9RKVPxAynN4K8CCYmyQqFEhHYIx52dOx1vGzXQ+MyMLZ4In4j+ObDV9qfdwXRawVFUf0Rp8sflGwcCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJul4A/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJul4A/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C26A1C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776530853;
	bh=9XHVbbXz23XqOeQnq4twDBVRvI0eOzxgnRjZI9T64jg=;
	h=To:Subject:From:Date:From;
	b=nJul4A/H51YgFXv8WFDs8AMnt+jDovi1UunVRNgtzUjs75tZuNomXnwftx1daRjWm
	 b7mcO1zqFUjmxOIeD8savj1G/knELysItOraJT/tMFrSHwM654i35lVfw1kwTSajKZ
	 vEt7I7/tEs4VHnxRY5uIZPKmeG9mUpLGTSLsCFUDAqFZOYIkA6SISGT7+m+3Z7ZX4h
	 rQLnSbORpR6NLIXODdi+MYjUG90gpQJbdeUPQ7ieOfaeqT70Y5nIpPn3Q8dMpsbhyY
	 nqpXK4rFLkLgA9A1TMZWOBZDooOdvMCi/IsuMDjWtRkZvCMtAabTdhpbR4yQbko10n
	 k+sVLnzuztgeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0205F99C89
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177653085368.29273.941649408217777764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13e18bc7c92e14b4d681772efd6d940cd55cf8f9046f1b1dc79bbaa4d33123d0
Date: Sat, 18 Apr 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776530853
