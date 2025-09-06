Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1649A1A316E
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757162994; cv=none; b=NLOPoHAz1i6v/XqR0tcizUpUzxRp1qT1YSmqoEBLHXRy41dp2KZiPT57Y3sLVmQzSZLoh4e6U7Obj+YNzVg4frar0xGL50UUVBnCBzMDomC3y9Pm5eZzAO4tOxpctFlH1yDRHLJPUlKrgsRBfpwWkm7I1Fa3Ec16NiTQpSFuIJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757162994; c=relaxed/simple;
	bh=7XTKh1NY2bzl3d3jjaw7aUXLO/+Sgyrrego6BrGFZcA=;
	h=To:Subject:From:Message-Id:Date; b=qPOQpVonaK9im7LHXGyDy9747HFZFq2Qvf1YM7yALInL5ZpLoM8Te5W0MZt1imrRUUF5PlZORNWzHiHP96COTHZYtn9WEjhZ6TQ6r/QYfbUQB3UeAHrR5x7wf1ci0O//bVZVUvW0zH73SPCAAP02W05y0+8SiFaFwjQgjsuUrCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YblJ4n3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YblJ4n3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08C3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757162993;
	bh=7XTKh1NY2bzl3d3jjaw7aUXLO/+Sgyrrego6BrGFZcA=;
	h=To:Subject:From:Date:From;
	b=YblJ4n3BnE0Mo8sFR4lV3e4Fka13seXfguEsncyJEIOwqEHYWMduqef4F7GALvAXH
	 YYDyA1kUWsy9Nk+pKPWXcfQShKosFNDuTB1rIbILNdYrizDmeoBKDkFXf2OS9BrhvU
	 JYyQj9hKD2e5F/Yg5uK9Ml838Q8KfWAi3cSmMl1Qq4fTS1Nzf8d+MvwDhffcowFwNM
	 VhiUQt6GSAEoilp1rFOyDx7OknfpArYGS+X1tzTuaQApSaSne1a6OubU5ItdWFa50o
	 I+zDKhu7AP7yvtDQsbjcbJNzZC5AM4LrM+wH2zqnjMmAA4loDFOH4pLszziPV4TD3U
	 IoQEzYTcE6Azw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE30CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175716299357.10821.7938850039496350296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c66bd05eac33eed9ed3c056b771367ce771ab746d7d677780d9351c8da86a07
Date: Sat, 06 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757162993
