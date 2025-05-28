Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B3113B5A9
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748416194; cv=none; b=A4utumvB1jqj/ULJHZaniE1xnQfb4dKdfR/uVZopptvka9sNOBVpjDUFuArCVHLsrPBmGt65HGkMyUscl6tvn405xuuvbz96jkQR2kwhukbscSzPxyUoxTiF3qmvv30cWuvWpfAuf5+PJ2kCfOE58FV/47vahc3GfPVScoX6FNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748416194; c=relaxed/simple;
	bh=nYnpWMuTjhCbedgqutYnnyFtG/Y6l4Fh4SEVw3r4gWQ=;
	h=To:Subject:From:Message-Id:Date; b=X3XzWxpP5oMVKtOj29TIjRkHgqkjFAAa5pNLIYjdXIDQGXSeoIZeFgK875fA7drpT5LfyEDvzmtHvN+zGRlgkUtyNgyTdeGxtRNUcB+tMuD+pn+laMI6jLgCf1L6Ko8yEKe7a/lWgrT0vBCFF+us/twO0PblB3PipaohNawfxOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBsTFxAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBsTFxAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2728C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748416193;
	bh=nYnpWMuTjhCbedgqutYnnyFtG/Y6l4Fh4SEVw3r4gWQ=;
	h=To:Subject:From:Date:From;
	b=pBsTFxAJHWd5V1ZizqHwZygxEZlx9J2s3sf/6/t9++dc4b8KDKJDGHgwwVhi94cOd
	 5Gy9N7qzBisbv1AhQcXaPhQewtdefPtAugWhk4idSGFCQD2QqiING3C3ljOTgmnY4K
	 16gaHqzB4VPB3PHpQbhO8obEq/ZB6cbJYQ8flKaa3u+zI9lbg7Be010VJ6F1MhbNle
	 fAY2MOYYsUziEOSIdP1yBqzhVyaLz4/W0yAT8z5pIpILkbkAU8US7OOjUm/Ufg0+Fp
	 S/lGi6U5KmXxR3AG6w6ywTohBh/PsBUwBo2L63Sfd4U8mJpjyNKuAt4gIEtdAyS17m
	 kzW1B0Wy5cFKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90661C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174841619358.32764.2633999623743774044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32891f5b5b2e5527c2d3594e8d08215cf825c217a022cabed20faac7c0058b88
Date: Wed, 28 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748416193
