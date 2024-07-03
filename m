Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF9B621
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 05:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719984923; cv=none; b=L950zOjOFEtayBpIdYFFgjqOUHB1WuDzmg5mblrxUFvqDBi1rAX07PwWuqYxFsoBA4WSqWjmCaYRgdOQttAAXWgOGeaDNPNNY2xwSTFaYw4b+2QQ1EGo34B7kdJlevDdaonDCwZqkiBeoNuNjTDS//vuLZHkAoFgk/vVq0Qb2DE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719984923; c=relaxed/simple;
	bh=LoOyZbKzFeIc+wxQJ2+jFAznsvjfZSXuKYKMG4e/5cE=;
	h=To:Subject:From:Message-Id:Date; b=SmXgzW5okYRsLgWiUf6UcbzOYbJJzX7ulONYwzR3nRekPW4KK98gP47chjadmLu0ezuiO32S5N32jcCYFR++Jp4sBrSv9fwJfAFvoIBCAYda+8I5P+kfhOhiURMyOKKzE7BOON5iguSaap3lEyiCcDlgb4gI3M8RRHzivNU2GLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEjxvcnk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEjxvcnk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4A1EC32781
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 05:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719984922;
	bh=LoOyZbKzFeIc+wxQJ2+jFAznsvjfZSXuKYKMG4e/5cE=;
	h=To:Subject:From:Date:From;
	b=VEjxvcnkFUvCYmDjNS7rvnQMsZyj/b49fENRtglrGegLRmnNZcpbPT4PmEh6ry2nx
	 AY88p+Mu557cVW3NGC6PSd1saYjj59gy3NdNfUtLWXIIS5PgdbyWZ48KuMZ9GlZi0w
	 8HX/+ufxTMkC2k4OOoLMUNYIRqgkKOwUhT7GdElPSpPKJ9yLwMA2V++xXgUuvEuvuk
	 V5tz5acdti2LS7kgShSS5qe7umzDPntIdpVdFH63CQFSuW6ypbcq3J+VkGaicERJD9
	 BuXGNKcwY/kifdghEFsRVx71WNIg4fuXV+Gpol6i2sNHKjW8IHdJLgLnh+xLqoro3U
	 lZqxNdv2nKLtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD3C9C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 05:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171998492281.22956.10869562367026467574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6950644842d834e88882971d4201a4cf599a22fdc8d46740e57a2c9e4d2f4f82
Date: Wed, 03 Jul 2024 05:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719984922
