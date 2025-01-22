Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439781C3C14
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737580554; cv=none; b=PhKbx9UULxSAQ1LktSsIAI27UUV+i1ulq/KUoR+NcoUI3iU8b+ScQ51aZkwNJkRBclcIu7ybBikZ2H4Wp4ra+h/cbaySWzLhe3SW6ma7S4pTgSIhVstcdsePIMZHCFW5+ltdbLEYj5RZv6Koj8le9j4Djc6GgYOq4HVJnKBDQKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737580554; c=relaxed/simple;
	bh=niwjkHkVviXeLNxMr5D0gtnBk0j+ibn6MWiZ0KXM0Sg=;
	h=To:Subject:From:Message-Id:Date; b=I00wz1QicIO3ul5FKyDy7DcsAkO8h4AFoGq+UcgY/UFmAGS12X0VcUv6i7hVvkzHgXHvlGPXrrnqp4P00dKiaGZSMWDpXd1Tjt7ReY9lvqd9RHNigqwHpHGO9jX7IfQzowjVZUsGXWFBSVYTxL57nDau/V3UQgdueHCrgca6vDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqJ0Cwqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqJ0Cwqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60C7C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737580553;
	bh=niwjkHkVviXeLNxMr5D0gtnBk0j+ibn6MWiZ0KXM0Sg=;
	h=To:Subject:From:Date:From;
	b=PqJ0CwqexIBRVSEuG609M99qdQ9Vzigrj88vkskbD3jOas7a2065hINjVZHKLAK/m
	 biuyE7Id5MwsQX7xaGfT8IdzLaM3pRS66iwZeQGzcABX/UYTXJhAvcpHFkf7vPeOQc
	 m7VfuVggSJFHMMiHFjW87HdYSRtKaHCbAOwpin8flc2Bv3TeO2fKKSBc5X34PWp31U
	 XbSxnk+dGaawi9UZKTtetGgC+dDrNBQ2v5J1XyeK5tj8MF8GApzz48Bm81w+P6hP2m
	 Oe189rKKdrsY9ekFnBSwXh732Lk1HYa2ngEnK3oSyNE1s8BHBJxDkuBFTmx0YXBQn1
	 kHBqyYFsnqmPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F67C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173758055358.14828.385726371418070776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3f15560d9eacde30fb61ed91f7e9d58e4f646d2b93f5ef6d48af0e4d62ce0db
Date: Wed, 22 Jan 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737580553
