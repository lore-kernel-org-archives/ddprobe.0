Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7D046522
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 08:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716368003; cv=none; b=fBUK1o4d5KjHq8GihP2QsrZ6/DrnmsPJMX9aOA9DhcsgRoxx/gfBYVynKXGBir5Mzu5HfZnhZnoyVU0ZxcaGXRzpxTttQDvHH9xX5VdYzguR7wlR7wjSjyip5boelTkrp2iPE3Gr/fsRqsOUjMZF0hXfTujMpSQo1bssVA8IBdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716368003; c=relaxed/simple;
	bh=/jdf+D/DgqF1sm4v7QfALL9tXkjjmx2+Tt1kuApmAB4=;
	h=To:Subject:From:Message-Id:Date; b=CkEvrhVdUyO1Hx/6f3Karv/ospWHaXmaY3rbLjk6oaJmAKVs2HDShNNgpmATn08IRBMBJP7YUWWNrFDorEAegmeL6d4dWxOynk9iPNueKYXhPGRacmOs8qjO6GEchW5YPPD33O1rXjYRfbTyTWR5SR5/xK8olewuim4UjSJYGLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVqfKGIC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVqfKGIC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73BBC2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 08:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716368002;
	bh=/jdf+D/DgqF1sm4v7QfALL9tXkjjmx2+Tt1kuApmAB4=;
	h=To:Subject:From:Date:From;
	b=eVqfKGICTGuq4QjKbqfwQ3RkFvNqS4sku60JhypsD9OOb0m0ykQ15fTLw169FhHPa
	 rim/CIy3goWpyMEgBe2iubUASedoPFtB/jNd0EK6t2e7zOKhISA8yW6+Y3fSmAQVG+
	 PULnptOIalvXEG2OWF1xqmKiVN2bVYucmqyvvspFL4JckchNWFuupHdg+Ea8R+ZYhy
	 ZT2m34AfqxFtyWO9naQsyVXHJlidcLrsyp1Z0Oi4E0JWB/MAiNvz2mnxyck22LRuKF
	 jV3UlHwTgI5fIXK0p0B7+kMQGhIK7n4GFgyrCqki1NEbuKOIaHPDNaBDada2HlqmSC
	 uCdWdLoD6OzlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA85C25B77
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 08:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171636800277.24314.18281483276305331111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3242d973e134fb366285553a09a605e6e4fe56f1f5cb140d138ca5f6692cbeff
Date: Wed, 22 May 2024 08:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716368002
