Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0298D33E351
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767795834; cv=none; b=Yqus/grXr8sJVIukY0NT5iZtL/ETA1SKJe/6T7VNy8S3uYMx0QRRmj4HdYqCAHyNR/MA5ihZ2m/WoBUffrjKdjXZjAqHbikctpAeXgmgn6MLzfNAPW5P9y+4EwlndOQ2fbmzJU+WoIwREXpvmBi+lLB4iS3IfJwua1axxzlLgac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767795834; c=relaxed/simple;
	bh=aeIG14x67OeYBlMAJeP3W7aQn8DeZ3WVZDe55xi7W2E=;
	h=To:Subject:From:Message-Id:Date; b=E63WfmJH/50k4B2dRjryfZJtJA9lbowLDsf8jVwrfzvq0HXg7glNOSCwlgXc+GMUoJ+/WIkWKpvMMm07J9HQqN1mAIDB4cnYPVJogBksbu/qcc7p5UKz9A0hgyRW43yrLSdCt0STMCeMZUFTZJX3BxgkqMGnfmaXWY6nZcM157Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVA74yZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVA74yZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BBB2C19421
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767795833;
	bh=aeIG14x67OeYBlMAJeP3W7aQn8DeZ3WVZDe55xi7W2E=;
	h=To:Subject:From:Date:From;
	b=OVA74yZ1jiwop3dW2jYylHVH/rXGwQI8P6PotStTBLSDgzsEdYz9c9TjAPZCSC232
	 0mFpsEkbDDVMN3ASGwONL6JDkpwylYTeGDrZOez9lYczbvti/W//SGzQ7ZYVotIOEd
	 BZw3eeh0FYh6PtiaWkuZhGq+zVm0RDHqbJJsm75tHJIoVyrATqOtoafHcLZILK/mLT
	 WLa6pplucRaj5KW3u29oc4TI/rvgke6xIY9K/zHMOAc4IEHxlK812B/Eod+kJSsLC5
	 N1PoCbwYVxkNeiM9LVSmN9dKv82weAeiktpmb6LF24GEow6i9stiqJIICA5cAAeoFg
	 tOJIBuxQSTwxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E94CCFD63E
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176779583357.9470.4954963664583051936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3a7dbfa9b52939e337f89534d408a95ded81e909ec5643af9cc3e792f08d871
Date: Wed, 07 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767795833
