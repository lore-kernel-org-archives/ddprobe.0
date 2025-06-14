Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A44224B26
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749897594; cv=none; b=V7ZEBxD8TTeTvU/3b1//KPcS/8LP/U91K5y5K9dfjhkg2fgNYOQ03utJSupdivILAeZpmRIzyB/c+5soCLsEYhMTkgFXUsOTfraBRKmj+Wc0qsUVPAyndWek17QhXYftrzJ35O1utI5f7FAuD5ZpZwVIVNHbDyRyLHgTFQj88NI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749897594; c=relaxed/simple;
	bh=M9fzNarLSHItY3w9OF4XmtornIJ2jkPyjVhVIs73Qm8=;
	h=To:Subject:From:Message-Id:Date; b=ClS7xY9wzlPavpSPZaMQan4HiwdnRDVH4TZrt2rZetu+lwk/2hCnXm+EB7LvcfF5FDJOsnoaxiWzwTebMGQbP2RNZOnUHXqMKu9m5T83W3r28pCBHDzyChMs6DdHpkOIui0Bpqh/XQgGocSOG/NauhaG94J0CbzVCVbZHZVdJEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BRHnYfQv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BRHnYfQv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3638C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749897593;
	bh=M9fzNarLSHItY3w9OF4XmtornIJ2jkPyjVhVIs73Qm8=;
	h=To:Subject:From:Date:From;
	b=BRHnYfQvLJiwnu8KQdeCkMpPMhbC1HBM7YtvxNIoEwcwZe40a8foNY4R3Cm9F1WWZ
	 UO1P4S6065NsWBW0O7Jq8JRFC0ZtHWsFibEkwTAqwjb9fXiNIvn1ulq5GVVVPl2Nzs
	 hRPG77w7fwZy1B56Qarx9v/yo5T44FMhLf8ergAs2+/PN3rjursAlLwotF12C86rde
	 UeWO4Ji6ha06ZXHoAScAd4l9hdvbJtOe6FWrOQV0bumLFJHuZd2tGoOmTvxrmHquC7
	 tdnIzWP8KcD2/KDCoZQkU29JU2FvtLW4CWh3xtYxRDwBHXO2NImSU4XOYHJ4yoykOL
	 eWkfFfS9GGrng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F73CC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174989759358.5160.3140419991365374285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac9dcfec705e77eefd3c3722fa7aba1e8af5556e083389c57d716074a1c2d383
Date: Sat, 14 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749897593
