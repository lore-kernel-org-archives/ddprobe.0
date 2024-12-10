Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB1AD22ACDD
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733863553; cv=none; b=gNIWiff9qbF0HpJbyP41cCqjnQDdrxBWNME5qlsf5giU9MjDkN85puKKoJ6DdEW9+YkR5YP129g8FijfZq3AZjHOeDl8tIwvEcTKAjEx+NW3avpp3Kug15AvuClbToRYpm86lI7D9i4envJ9lpjyKpa2m4V/iag5D/M9PUTccgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733863553; c=relaxed/simple;
	bh=QQe7725KtIIHWOqsY8CuFqL5/WStHmH9qM5Pb4t2nuE=;
	h=To:Subject:From:Message-Id:Date; b=Bmy9gBHzDQuDOyHk3+HDO/ZikmeZGFo2d3kVsxN9m8dlen+STiBisdPUu7S5FKlTHxGPgqmgMs87KjceAlE0lwEVVMPMC1C9o9VJKNFEruplTACVO0E5qBb7hu4ccCXJl8EKUkhpryTgUw3Y5aOEYm026npzAMr2xCcni4Zxml8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdCqeSrU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdCqeSrU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC638C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733863553;
	bh=QQe7725KtIIHWOqsY8CuFqL5/WStHmH9qM5Pb4t2nuE=;
	h=To:Subject:From:Date:From;
	b=HdCqeSrUEyot8V5SgLNYZBZfdytVfGxK2/SPenegJDP1Yhqc7Beaho7YEoC2LaQKe
	 SqLjdRVoDfglgPIzxsR/MgIPErU0ZLYTfsDIamFOGOmVTxGpXZQzSz4EQ6MgsbW0fc
	 8XH0oPLd2ivuWaSLaoYen5MUTgW812XSW7UouCrYSzvSW8FqwAyjfzsBYS+JChWMEb
	 P7ytfd+wZTeW32RmpUqRF2SV37XEgaRIC+c4XlwNfwl9Xfe4YwviH30SzTJMfv9ZoL
	 lJR2musQ+y08mOKVt5w88AnclDs0IPEO8UG2lg2iT3sj7yUXWeMuAMVvncYxSpnbNk
	 +OnE2opcWk3ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9371DE7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173386355359.3327.15272746569426842136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39dbc585fa37a46e3f130ef85e290585ad462a23dd3686bd30edb5477c34a5cd
Date: Tue, 10 Dec 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733863553
