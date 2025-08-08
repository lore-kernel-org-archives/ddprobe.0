Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247B52367B6
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754654994; cv=none; b=caCtuvYMZgEtj8sUYV8f6kVaPPhLH0axjSukK8BOvUotUpMZETJ3GeISiHQ1mkfGxhOkvq5W9PsOJ0t2oPnbuLfhoT/JEdzJ/Bz5Y6t0Kj6tCR7Bp+rKscrp52Cf8zUg6+bUzj3Ex2+gdiH1uY9uTY0MRJzxaZ+J+CmzMctFNF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754654994; c=relaxed/simple;
	bh=uWaswl8rUnnfkEwaEND5Dl6VrTLjlbOOmvLrAkldgQY=;
	h=To:Subject:From:Message-Id:Date; b=BehhqMDuiepGHha+nwgzNTeUNlbYAKAsV/tXlU6a4myXp8SVtepHGzZmlDohP18GOCQN+AFVwHttMyovpwEtcnhqA3hL9RKC/uP8uzan0Wvmnpcn4/1tu06mhiAsZIzivn6OSIxHo2gJcWcL5L+lWHbCawD0+zx7/WIDubrjC2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MSLUAM9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MSLUAM9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A026BC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754654993;
	bh=uWaswl8rUnnfkEwaEND5Dl6VrTLjlbOOmvLrAkldgQY=;
	h=To:Subject:From:Date:From;
	b=MSLUAM9WCOpRDSC3cLx7OxsGOLocIUiWQoXyDwMFThvUsGPxgDENMPcQTNuXfTTXe
	 BijJLAPzce4s6HMfGWlg5lbtzv3tctNCpUyHnwcVTnvoE26xgZFIKmzWtFVnNxWm0Q
	 KR1JnDNgpgJxrR48r6Qt2ITGtblwj5tLiDaILikL+ASq7m1DlYonrKJmfNloieYQBa
	 74heZqqRoQoePsd+8Kxl+UID+rynpqD6DtheppBjaufzkwQ0VCngFPQ95sKaU77T6T
	 UqIEA4NcWF7fhzDb/+RRH44YieNgaliiXk0tzuCz48E+gxwkzs1Jq/XuKzxd6nhD5r
	 QOkgq8kHhzRHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9E2C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175465499357.29876.4594700679667301982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9e7c051b992883bbcfd32fb99e4d31c4a0668dfa15d37869f5cf997f0b3fba7
Date: Fri, 08 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754654993
