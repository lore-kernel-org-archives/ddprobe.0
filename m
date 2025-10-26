Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359751A0BD0
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761460794; cv=none; b=hDE+y9ZLHNWRxCA7BwAKVakOrbfP4HxsiADEN+zSd1ltd7Ahupvmq59D8//PKA/tFAjn0z3s3fA69MDWP2pqHQozVK+ldVuAyYFmptohDNqvywitde+zFq+L4+erTDd9iToWsYSlPLymeJUptTXUJD0uozM01k+mGRtKiJ1uLjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761460794; c=relaxed/simple;
	bh=Gb09IBU66+pguu6pIqftOczLJi3tPK9iovgN/PDIRVY=;
	h=To:Subject:From:Message-Id:Date; b=L4VztQ3owM9Yg2zTS160YKeBfFMmGtOL3rckdJQhUWKt2kk0JU5jMGi1t+/HooBwemFb6nVCva6+8wP+eCJXSgWvolfERpw5JlVf/5m3fQSNm0BeWnnzohsT+ACCtnRCn9lIdugisvoQDlTKP7dqesxN+91RZ4+2VqEiN1qjLnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKHjjY5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKHjjY5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D0CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761460793;
	bh=Gb09IBU66+pguu6pIqftOczLJi3tPK9iovgN/PDIRVY=;
	h=To:Subject:From:Date:From;
	b=jKHjjY5Vk3cAZLkQUPOcBaa56MgyysZXH7w6PmOn8mYlnfcRlSLWlobSeyxDjJ5fg
	 2enRboYW4TI0IyhbdlDQe8DA1nFpI/jBrqag4fZvq8hflfs+1oULT2xk4+uQlPpR4/
	 WLLjH6zQdHLvhr/pZPj2aKp6OoZ1/jHTwNwnfHuIK7al8gkokPFgAFeuMay9M8ceo0
	 bNMpFch9TJlS725E6u7tPc9SGqNlsAsyT0wv0ZxEfvpK9fr8C7i3LMnPDgQc3DDcPZ
	 8zM/0e9a9jy4g3CE5eRQri2MqOywRjHcdgSwlpMiVNXIz5u4KD5YOZlZFnOyAbcD2W
	 iqhJJsT0e1dpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9327DCCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176146079358.14459.18029402031565262320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eb05d6d42196780e5dd92e04b3e0477d7504c04734cf97d87a0183d09a597f0
Date: Sun, 26 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761460793
