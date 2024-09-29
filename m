Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5785417C
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727572554; cv=none; b=s/+8lYN+Qjmu+Wv3UPASqxo5agE12y4jtnOMgww+v5hLOVEYLTa9XsKGZr+Z+VfdorMhLlwNT/6lCpdogbNOe9nDNL3Ekc9qlJ3WTDuEYv3K44E6ezwALqDRoJpOiYD3VXWMqUHOTvDSEJwzKdPyM90ouMiq7so/FjMcjxgthPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727572554; c=relaxed/simple;
	bh=pntOlaMB663wIN6vN8ikxigB2OUh/4mG5Tl1R79xSig=;
	h=To:Subject:From:Message-Id:Date; b=P23ib8z6/iFmP20EpLzczNEqE77Uy1id0KG0nkWW88KACCkrSJQ2d821zNJPFGbkD3ULM1WySvKdOhhdUx/QMsMoYF8rMLKE7+W1X22IQuwPyj0Sw9DcukyY5WPVZkx9vrI2Z2urHOiyvZ3yu/RoOEjjKApZXEEfc9I6olGB9TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rj34Lamd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rj34Lamd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC3DC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727572553;
	bh=pntOlaMB663wIN6vN8ikxigB2OUh/4mG5Tl1R79xSig=;
	h=To:Subject:From:Date:From;
	b=Rj34LamdlRTGxWw1EeLE9rCxYj4YwL/0M8H4Jj/mCX3CuKwWV3mWq85aMs4jZdupJ
	 sbyZ4p3DIvkLLdgBW4kj+TjWUdp/dXiHCL/TzsfsJVvSwKdPZFbNHZ4Jip1DAFrnkb
	 m1MezghoqowCUs+O1ij1ij91YETdEvZOOQ9E48pOxZAcYJSQPsal56bz7MCsZRcmKG
	 j8u7RBLU7B63IFdRgaXa5Q+s6hP7bd9BvaaBzPmYXBppLO2j4Ruwwoy9gC9ZQxwuzH
	 t/2XsNIfN/uYuOatPEeDBlnWJ85IgPYbrrKrUdSYgqFBQRA6I2eC34o4t3lC+ZCcrU
	 DILpw7ahL6Ozg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BD3CF6491
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172757255358.28405.5959055110159955000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a94fcd21a5b2ae822290d1eaee08ca45314dc5efafa9f51909f2bce9e5d813d
Date: Sun, 29 Sep 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727572553
