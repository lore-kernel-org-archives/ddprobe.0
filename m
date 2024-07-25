Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283E623CB
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721868954; cv=none; b=TyLpM5nciKViCsOZa1ZCgoO8v2quqU53el6j/aH+d5FiirigFr0MFlE58uksf9UDnAVxw+bKbN8egoaTN+sxC5E8E+mlsBgiCfC9q22bUfS0Ctl2ExA9stRV1CuyDpUnul21zZmUXBZXUR3KTlxll/3QU7X/QocCWPfVTPG+K4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721868954; c=relaxed/simple;
	bh=8A8VSMV/igYFUsnEQbKRkSCxUgOIHMpH8Sjf1Cctr9s=;
	h=To:Subject:From:Message-Id:Date; b=Y4YBwRuxIxjrhkRnpV0T23FraBSvGZiOKr9JysiHhHUEGZu7LPdkl3tXR+gKoJRVP2YqNdZ3mufX3tNXixEM+2CdwxG/cggJ+mWukREjqwM7jEiY0Ga7pPcwzEauBKrtBSbyKOPSAVivMaAQyPv/RHE+pfyZQbNlTR15lY2kA98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kuPLxAlV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kuPLxAlV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC266C32781
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721868953;
	bh=8A8VSMV/igYFUsnEQbKRkSCxUgOIHMpH8Sjf1Cctr9s=;
	h=To:Subject:From:Date:From;
	b=kuPLxAlVLOLzQP/LhkvkU5FxcUH5aPqvOjILeN+ycjKvtVJIRPZLYdfs0YUkB1ho4
	 N9j1JT1rkS0djWlpZUsZc7ckjLM7rpCmgJDZ7iUJ/zm//P8w7od3OCGD6Z1n1pELI3
	 7kREj+rzV8dZgi7AY8YEVcoeg9DxO/qAFx7iGs0unLeNCcW6oAcad6lQX69P0RrXjc
	 14N3fdQyS2TEEtjQlYoIAShX4UGjjAQesSrj7RVOLKeIDCQvUiR8h+hUghkPP4D7vP
	 ouThFxL8hHVWsRUy+16KaKbWFGAw0WULXQjzjDal/wWFdvMMwZeIm7pdY3tAwxSg6w
	 GNtOeb5HjJu1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970D9C3DA61
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172186895358.8579.2796706334908038291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7be2f38f00697d68e3fb50e1325d470760efb1a241a5aa0c77400533fd9e53c2
Date: Thu, 25 Jul 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721868953
