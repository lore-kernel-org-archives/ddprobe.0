Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC78274FEF
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758317394; cv=none; b=TVYC0rA4lTc22PXM4XJr4rvJxF7ZscWeYo1F2tvxP5DlXOJ8TGeaFhz4MHBo1l2o1SEIe0DbR3Zc9pd/X83gAswxcXKRA7KQAjTerRP8cocgTH7mmutnsJjCTm5pjg8yhm6j1H+oIy+hfMOwD4DV3CbtL2k3zjfg2dOpQ2gKcI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758317394; c=relaxed/simple;
	bh=Wm2T4YpC6RxBE1L9PRBzMIYm/eKvkKbART2e/MfWLwY=;
	h=To:Subject:From:Message-Id:Date; b=CUwe3rIv2qmkPJeYLImkOglzbHv7OPKJCkBiUvMHytNCPq5uDbx102otKyWuEr+Dfd8jE2K9Het5RjTf6k5gGB48fKDPXpZHRHDiwDnerg73UiFDIhXop/gotgbcTTqF4gew2K9EIEVtfwDAHhpTJzBDTc+EEdvJROeUe+t+S1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8iEI5VD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8iEI5VD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72BDC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758317393;
	bh=Wm2T4YpC6RxBE1L9PRBzMIYm/eKvkKbART2e/MfWLwY=;
	h=To:Subject:From:Date:From;
	b=T8iEI5VDkwH5VwJ2zNyg+M9oftBzxwTNLo3Vf2+p5zFFb8ltF3wvLYLZe34I5lSih
	 0HSBlxvioDDk7svUeVy9dQ0HkRtXil2dya4pJ243pobwu4uADwxdXDcV61rBrsePSI
	 W8492L8WMR1Lpbgngq1m/hqrVWWGz59E29rZfj00i+nCLsANkXBc2yEIboVX60JES+
	 0izCThudCaeKwiGPHtbDFSqmbW+vYCmEvBycm80uaV2BOuMlW29jS9Z7zqefY8n6vq
	 IuxynnJABHhyqzBvJpbo2c5MXce3VuH1xNhs8ORNauZeGL0NN1brpM3LQL2NAgCRcO
	 GBGCMMiye1rlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94086CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175831739359.18902.10076787929723646483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76bdf1570f618ff7de5bd6d560addc8cb250a685a6b87c8cd216a12cfcf9c806
Date: Fri, 19 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758317393
