Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F45928D85C
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746647994; cv=none; b=mU1zJ20xqs/KMstZCyEwiVWLpTO7wjB6xc9nO3C+vS4IfFHuhZ78jxBt/gYh+OJiK+JJcbwgFWymT+KWDB08qEYM4uploGjs8aCUQ2fEmV4k9tkOpyMIyHwyJHIPI3bfOKbsIoBxW+kbOXSuQXLDH+g3zqXisqbDCePx07YdiXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746647994; c=relaxed/simple;
	bh=fReUjhTMzppgW7+xJy9JWC5D8Wu0AEkYGGuJpeEixMQ=;
	h=To:Subject:From:Message-Id:Date; b=QD2sWYCzfFVSPiJ+YdBeMYDzR6KDGJjZekK/wzDZj8kSYKzUzWYnGJ8Am1gTkdKKDgrfGffkwfHft9IdfZc1MUs2l5We9bRYRIFNRhuV/NDVSCwmi3qmb1uWpzHdm6szkNhSvNgAXN5jbyP4fPrWk97Be39uQIq5OW44SvvUB8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqovBEe1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqovBEe1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7166C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746647993;
	bh=fReUjhTMzppgW7+xJy9JWC5D8Wu0AEkYGGuJpeEixMQ=;
	h=To:Subject:From:Date:From;
	b=DqovBEe11KttEKCghOCs5IJGtgTEjYPmNH0xfJ8daONidRxX4tF/D6g1BZSF6UJm4
	 HEt3tLXU72Zql6e7UJHeGw/7jIfUJzscbxdHKFWKFbT+FJl4lJlfWSYHpbvwP/p0OE
	 39h7uNtIleVxM2Y2rhyolu1fnH1uIiICSwXmD0lzosiQZJRYMkrZv7cWFJlQVWwIFn
	 0FqGAtG6+Bj5vCoi6ps6H/Z67X5IitFKhUNjB3TGxHGxghw9fWbBsfQriULfFkmIzr
	 ffvJwYfXXhqlszw3zoYfeLJgFzFu/0nrZ/iOf8pfMPaMGLqNeP/zl6oTy8gJNSkpZn
	 clYj88wAmCJ/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909DFC3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174664799357.13233.4069577800561498267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c71300722b49e0390a5087d4eb463210243cc14fbeebbf753f215fe51895df5b
Date: Wed, 07 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746647993
