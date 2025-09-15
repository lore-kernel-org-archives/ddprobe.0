Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13EB922D4DC
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757914194; cv=none; b=O1SR2h+Cul9FrZH0Gs+UYEbDqfGtat09BZeatpkLx9gEiyfBBpMRoROTVfz7/6U9cvNTJn3CYl02sgaXr7fAlJc0LTFwhyzaNfPbyZwmT7w03lgjuTVe9EOmS3TAKkO+v7T9AAVIVyUxjRAt1FEQTk3ToLZfzO5V+a6/6DofiCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757914194; c=relaxed/simple;
	bh=Bses1L+sD6bhXr6fNwF8ip6kJx/eO30L+178j44sWws=;
	h=To:Subject:From:Message-Id:Date; b=TRVDsAO5NsZop9+GvIeAPRiGTrnwoHXWgAj89ZfGe6ksK7VMRNJdEosSGoqa4y7aodRbRJ2kBKO0h4GTOVNong9sYpVoILxxw9rUZHCjCU9gDfxjPD2h+AAVUJNCyGkicUVhIEa8KzuM9M+SW6Nr6AevYW6HDAeWcp0kvqX2mdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qz9yN5ap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qz9yN5ap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3979C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757914193;
	bh=Bses1L+sD6bhXr6fNwF8ip6kJx/eO30L+178j44sWws=;
	h=To:Subject:From:Date:From;
	b=qz9yN5apJ7iOaUA8B65ZbtZamJKlZM0OW9X4CxLW0vLyyjNXzVsMdWlrixpXV7Ndq
	 jO2qNbkSexDVyvmxw2AHGZmggWUpruqdBWFZu2yae4EuaU4Es7S4M+esnhnpvkxURE
	 vmEUByytGMBqmoV6GHpeMt3xu6LUy/a/2K9Gf8Y3O+FXVpaz231A8BoxTg3npnSrEf
	 CwdfAR6/X408FIr6sFafX+I8MA7Ic0iDh9ZHj8Ct+P0cld2laPuvJD1+Uj3yftRZcI
	 UgKxMVoGWKjiJ6mgAZEGV4O0CUn0wCUqUy9GJUNi0Qd7sIXpAoWwWFSAuJcQLM1uFQ
	 13qRQFbcb5+3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91303CAC58E
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175791419357.23615.18011296217350660228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 017ddd009228506f80e7d0c6b684000fffa30854edf9202d935aa2f0b85426a5
Date: Mon, 15 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757914193
