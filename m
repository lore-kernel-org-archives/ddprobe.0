Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6383E33C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 05:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713158963; cv=none; b=rthFj1FosfXs/QIb+xaIR5i+Tz+UNreFKwk8iuLGtdKfk54ydufw7hltfPkac/Ul7nHBC+tSJeu2fTDh+OfwE+Nm5w0OAW9F08FUhEz9kS/HMYqztxybZdMxvSl159Hym57qd/uBC2O7Ww3HiFjjWLVzlp5rtIqtSP8VH2xnN7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713158963; c=relaxed/simple;
	bh=hkCLzLbSkXwN4RJiKbdPYWWhhuezvuPGSuP1hb7gVwE=;
	h=To:Subject:From:Message-Id:Date; b=IKIFAoFPBQIzg/59XEbcWE+nekf/cMex5E/1+M+gGDzWWy6/Tj+oMVIPwFghjDlCwsx1bMgHXHDm6nd955xt/70s4KwKN0GuFEV0tm51nh8kMMmA3xpRA53egQw+7XwHuUR9dDkwFVkZaSi7nI3Kvnyx5TUUT+U8S2mWo9jdf7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KxYYSDNM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KxYYSDNM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D7BC113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 05:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713158962;
	bh=hkCLzLbSkXwN4RJiKbdPYWWhhuezvuPGSuP1hb7gVwE=;
	h=To:Subject:From:Date:From;
	b=KxYYSDNM2ZzrZNMwGCO12jrzJb3U13ND8DcKNluvnzxOJx5yvt4Lg6pI7D50Bmimj
	 lkAGhPSWFMXBWK/RpZVbHdBvXUGWtrZ7ia/vS5ALw2DwRiVLWyAmD1507ClfH6twlC
	 Kgvf7VG9wsAZOtNss7icmJBMAXno6I8OeccbMlkIM0DHdUBpuE5yh4qqy5FjhrwNra
	 pSYkrXF/aTuQ6TYw43Dg+uuiHEBFQTBDp7zfrg4LpCUKpVx326J9Jp6CqOQK7bNKNl
	 ULUYH9M9/vGB908VPUrveplre67Ga4/XowpEacK+A0eBeDw5hcFAMIDwj+yYX/YhYP
	 1fNOHgyXQg9MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF53DC4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 05:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171315896275.25624.16421945604421064060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e82c0e5eb81f9a1617de5ea1f01c0785393a551c4771f0a320187c317646de34
Date: Mon, 15 Apr 2024 05:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713158962
