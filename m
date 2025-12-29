Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425E833123A
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767033834; cv=none; b=Ozdc4zjB/Sjf4HEwIfmlh4NgLofNnITYedj+faWuh0PcIbO6gJJHAbGV5zLdafBu4YWDrACNqAw2pdpuqWO1C0o4gBWxgH7TLrQnTk8olktwEBildutRX79PkyQ1pGxRoYwmtDHVKnvQm1MnHwOi6grf+euSB89OTic3TdDK67I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767033834; c=relaxed/simple;
	bh=ZYXejRwR2MVRNuHNxLaVmtMUPZh3ATSnnfku+pZKBlc=;
	h=To:Subject:From:Message-Id:Date; b=nQ05oOyk9WngsWz8q6k1CPnjLbW5SijeYxq1BZJKtcd7PP3UifYVm19giv3kx8y1G09Joc3o+3vfpB5i5qkX1Q78r/A8tWBUtW7WksJWJzcho2pEzfFAj55peXveay/imCJ071ja4o/Vkld4iYkZyYZQFt3G2uuIYf6/6h2bIiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cb6EYn5n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cb6EYn5n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B25EC116D0
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767033833;
	bh=ZYXejRwR2MVRNuHNxLaVmtMUPZh3ATSnnfku+pZKBlc=;
	h=To:Subject:From:Date:From;
	b=cb6EYn5n0ibKUYbelO5+wmS/i0YAJfPZbs8dhTEjdFpg2H8K5V1OV9zeeK0d5pVVS
	 HTUsFbZiou48eTRiUDjiXzK0emcmpOHBIq0HqMAxZOdloDZE/oolhHKGn36xFgL09S
	 1HReqtdBmzO2lX5n6AfavZH1QSF7eq+RsVzviktBY9xV1fLmmYvWE8Wt+JIQAmW5TX
	 lZrTyvQ518H8sqHnHmJ9LD/LU1S4zaonGcqOFyRq2SaaivEo/2PMDx49gCDPYFTZzX
	 L3ULq+rjF0p5sqPPC1+VIHu96cP+6mjkQSlyo2LHYJ/C0cIyWgeXHhCCj6IwBKXjxF
	 O0e7hCLxLCSrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F673E92FD0
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176703383357.28669.10256661015101082735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 943ca8937a13aedd25090abee04fe98775e3988ab94f0d977c00e782fab87944
Date: Mon, 29 Dec 2025 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767033833
