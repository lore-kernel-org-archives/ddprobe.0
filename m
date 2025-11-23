Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6EE2C21D8
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 14:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763908914; cv=none; b=TP4f5W189InF2H12Of+v2p7IcEFqKVHoUYcYsP+iUGXgybAaGiiHkLx9xvUxi/cemIzkj3RWO/K/swLNka2kxUSDmxxZQxUK+nAZKgtZvoOkvLdRb5L8+6kXRIzQ1Q9FRCuefbuMf04AKXby4DUHC7ZJQWvw/kDU9LdXEVEh9WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763908914; c=relaxed/simple;
	bh=TO+WE5x2AoHLIcEtODLaU+1K0Ybm7P+CUJ/gHwRp8Q4=;
	h=To:Subject:From:Message-Id:Date; b=FTJX1qGE5SCPeMXV++wBkesC004pnA7HICGl3AsB3cSD/Hb1FPTHF1zcWvRyyC0ChOgZlxupCkLpyrUHl0YqEgAcD2O7AcQa7HcR/EyJ8y26M3nNfEIK7CYHCNtQOMguXsKrX7dFZHqtBMMXFf2i7+iF4ShmqMYs+wHDah8xoCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkN6KmEi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkN6KmEi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2237C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 14:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763908913;
	bh=TO+WE5x2AoHLIcEtODLaU+1K0Ybm7P+CUJ/gHwRp8Q4=;
	h=To:Subject:From:Date:From;
	b=PkN6KmEixVFojouNNP9SVoLHZODLoHhFbPxfLNJVLIyGW2d4+lbs45rdZDQeTxJfo
	 Qmo+puAwyfIGnIq5KJfUtzmb1IC8+0yGtAtg6hbZa31sz54X3Vf6+uK2mNhlh/6Cad
	 Xfmfxds0bex3Px/+OEdHfjgLMglWQ3HuDAim1pOVdkylgP3SfKdA6eMeeh3Tyy0BFI
	 FsOmfEHoiP9J2gIt+tT756T/ZABdRDlHfHRH1u2rhqiyUG67OfKvBqd5YTN/okakNE
	 WrXr2gQf00u5zsp56dX7eG2OPHp7/Fg+O3ECLgflZralxzsz7vZ56Twl3JmnApupmu
	 DuEWtODgTauLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935F8CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 14:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176390891358.13451.14306745989259308900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8640d2dda4627c3447aeda61c34fbeda2ede5839ea07e3ba5003e26f218cba8f
Date: Sun, 23 Nov 2025 14:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763908913
