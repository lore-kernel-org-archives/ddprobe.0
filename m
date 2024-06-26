Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616FE190497
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 18:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719426203; cv=none; b=MiBrhS/hcv0m2R2+PnOPEv/1iZ4EZRJxkLUoLv5bb9cDMfxMcLjap7zp2LwiUD/spCzKf1yibaopbe50EYI9fP2VJELeFsd41cnY9tQum7+gPjMyHxx7QzClss6HlnGcD8DHDb7rXW8dfSEfnSYRfc379nGtA6OHaTJ5QElTHrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719426203; c=relaxed/simple;
	bh=XcgdUstc7T4JeDoq6zMm/lXT5aUHE+IBlaUsqXI82B4=;
	h=To:Subject:From:Message-Id:Date; b=etvPjwirsSv3FUWhspSoM5HtEsdgGRdX4YzS//S4G3LTh2Sldtrin3vR8z7M6ZMYOiABPmu+L5a1Mab2Khd4ff64enejjSC05CkUJdb1O0KOKchdaz8+C0oKahCkaqGCyaMlSlxgpZUSRIVg5WFwTfGont/jl+TTShZyO1vDEJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNnK3CPQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNnK3CPQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D255DC32789
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 18:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719426202;
	bh=XcgdUstc7T4JeDoq6zMm/lXT5aUHE+IBlaUsqXI82B4=;
	h=To:Subject:From:Date:From;
	b=hNnK3CPQ+pz4KdkDV51CIEclnk8o25l56TiOUf9HYeQqHWlFc5M6R9ZcFmV45UKqW
	 1Ay6qh0gSywPxlykoZh5xV3+/zyVcZfLR0ErTupiE7Ls+2JRXnJ10dfuqOem1jB1K3
	 3b2pAfJ7jYJRKG5niL77MoSKEDgcgojo9+nxpA/0VCT+ebX/F2Ku52KTOAjaVoRUXu
	 THium/5/UN8z3wGZsQJcYCxgk9D72gsxuBfIQrZqEwOsjpyAXfIOsADdkF8zRLDI74
	 BiMl0jXZazfjfHnfefcWXbG9B2PuiK3aWjFTsDrFtJR/rFkit81QYkEABEQqUx7Kum
	 xVtP12Ayijc7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC959C30658
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 18:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171942620276.29707.7505670882320131162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f3eb76283f2696f8230e6a242aaaa3ccf5666053347e969a2842e85c65a3b3e
Date: Wed, 26 Jun 2024 18:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719426202
