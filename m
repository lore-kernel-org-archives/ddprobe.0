Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D79839449C
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789383634; cv=none; b=KddsPQgK7qNWAXYnX8884jjqWloymXfB1zagZ70zDIdWJ9898SSvKEAj+xia2m4P9A+sa3eU8ToJIOjci8N2NHIfwBA9h9XULj9C/oLDjwQpW5ODnIjTK34rFeR5zmeVu/xH1KQght1cRoWoauA46dhrP28jR8DnMo6t3vPTIu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789383634; c=relaxed/simple;
	bh=edCr0vc1mE1qswquZmMOeGUWSrrj6Q8Qs9L4XfGVa9s=;
	h=To:Subject:From:Message-Id:Date; b=WW8zQAprl19Tf36x8Cj4jhSelbP3sTQz91RLIDn5WOG+hYBflOL7HoCxxlZQ33xh+htwDAF7iqIfq9PfvHSTEE+W+G1VvOqeTT96s6aqXPjz7ffySUi7S+ck3njAckTzQrgs5BfNwoAAMsd7it5JAtrjOusZAG64bwrrtiyzG5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcfbOTpv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcfbOTpv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D214AC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789383633;
	bh=edCr0vc1mE1qswquZmMOeGUWSrrj6Q8Qs9L4XfGVa9s=;
	h=To:Subject:From:Date:From;
	b=qcfbOTpvGFzV+t0npDFqSyYpsqqhw2iv7hp6LYA+vGbIx5a9Fa4ktefELPFpWJM6L
	 iIOKWL7f1wsHgVYRFtZRqqu/RgPCGRa+ybmaIJRmqm2hrIHtrIcZ1RnYtziQ1dyTXy
	 0fh0zsJFmodmvtVrQpo3Ap8LObYHi0srOm9LbGW8Hq8bZUWO9p4yLeBfg7tZm/USrv
	 09hyT2TJb/DnCoQwdVqXvIzmsQgiJ+4IfL5XeqKXBX8JFA8BTI/tGCSbIP5EOnKVJV
	 ccmIlBQGUgX4MBPCG9tHW5n2Q3kdhdKWCT5u3HzULw2epBrrohGQDuCQMmN4GtiiZv
	 pGOCxTvdagwxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1AAC88E65
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178938363369.32306.17306399418715926122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39e7d377c42e36b961ae28b0f6e8282b6ec9b39afc01b0a76d3914b2ba816e7d
Date: Mon, 14 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789383633
