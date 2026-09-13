Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5346733993
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 21:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789333234; cv=none; b=TSjsKnSMrALBpxGWNEQnUhGqB4S/v8/fdsZvY+FHjmWiGA0i3du2vpygUraUb6QI+5zrcudOzWDMmKAXBUP8pGCHWbVN6GVwtxDCeSgc2kC+Nz7Z3xRvFHTvd6vGjAkhQuLAbarMfWRD4X6paA35+OTHn93pnoaVChy2oprMu4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789333234; c=relaxed/simple;
	bh=YoFXvS97wELt/053x3op4XGha2WTmIGl1ES8S2vgiYA=;
	h=To:Subject:From:Message-Id:Date; b=PKgK5s5G83pgGGEj9E3r07SgDoMlQ+wDMWngCY9IyWvHmdftZ7/DDp7teCXwsGANGRKSI/MtuVSeqGooSsR4Wbvj5ypoHefONJL5ObJSKqCKS9kjbmhIgMTv372k7LygS0HB+2fukmLMbDTYnwg+wgKZoTVOyiFDqBz3+FzqCZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZ/DzVO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZ/DzVO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A67C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789333233;
	bh=YoFXvS97wELt/053x3op4XGha2WTmIGl1ES8S2vgiYA=;
	h=To:Subject:From:Date:From;
	b=MZ/DzVO9yVc/nP3m+UMp5dHuQqYBDE22yn/de2DBsRn5ESXGHbLriQ7aAyfNORDNp
	 8wTY882Vxl5au6XI59fWuaDf30vLA12DzZhfrXkLW08kt3jl+9foD8zlAOcSEMWm63
	 wuNuzt4w5oYPqt1oKNGeeAE+rNCJkwUawPq/VYPIgqSz/fTCRc9ZziijV7pKzSHeie
	 fbm4Ad2grLjkCutZfOmJ7LkhK1ZXGlJLbxnQqZvL5N6sLUbpPppom6Lf9vyz5iVP6J
	 7ldBE2+5vefZDaxykNpGi/2qWF34cDyOJ1f+RlDcCSK+exf98VUj5Km0jRb4CaAXt+
	 eslZPsoPIb0Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A23C88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178933323368.15429.16846421954569395680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2638eb67cdc611ef730a7ff2659ca00562e3e4a6e0cd6f9a76beb4824598ba0
Date: Sun, 13 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789333233
