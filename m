Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344782139BF
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745880594; cv=none; b=Ct+VtYLpP+sxOILY85ISFXLwwes4gmdQYi0S20nPwnfgAhsEAjwVl56VubFpbKh5f72DEdDnX0+v3oNYMbkAbKbE7kwk49sD22rTdEbSymv+U7hUr8LO6UOW2nsTrOkmLNZcd5SLMMPyEjH2Twi1gKfQkugnZUynECUKKvgt9KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745880594; c=relaxed/simple;
	bh=ihpXLTAOrTzFiw26TxhmuUyQL+/Rss2aGalUFRrFnMk=;
	h=To:Subject:From:Message-Id:Date; b=mduQCn+uy1j4W+ie4I7mSuau75qE9jkQsYCr8SSBjF4xs/tjHr64Z/rzVNzq+fR1kHj/BN9uBzG5uSixD+iqwiEpAeTM4HbV9Zpew8m7nsvw2thkcP/9GfYWNGPu/cEFanqzbSx7wdYh+sqddM41Mwo7r8qTeTOklWLWWu3EymU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihkHrW00; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihkHrW00"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E86C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745880593;
	bh=ihpXLTAOrTzFiw26TxhmuUyQL+/Rss2aGalUFRrFnMk=;
	h=To:Subject:From:Date:From;
	b=ihkHrW00uXhGLoMlydw/tP8p4xgIvcIbZFtnxxoo2KEjnzBH7K3fDs97UFYO/ImBm
	 AeDRs6BGZPRjOOhEDKYdg0rKbIUIPySatFvRz8Od98WhTVICyLL76235v4VynZ3guQ
	 uzem4LRTkg0UdsCUUXzFSyDIYd0WF+r7814BAtskXUahwuneVPcqpZeqYr3hzgYR3k
	 5sK5CJo9cbDV+wZ9EsU7Qaa+PNQuFetZ6KU5cbHfkLBDj/jaBk76OoAWpzAXe4Cm0p
	 TBVsEgvA+RNHGfR83Sjjlkq+oytBP3O5Bb/amvm8G/YontCLFyIc1Y1y+NPo1K2Pey
	 rvLJWtMFRIPeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B6C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174588059358.27898.3412962244678922940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9efdb65930ed0c7c562829b1e15ba96ae519fe36e05f24050b636d5937509f86
Date: Mon, 28 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745880593
