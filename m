Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1BD4A3E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767413034; cv=none; b=Azl/wmuON9m3rH0b1OADUp5WJ6P6+x6sAogdigGOO5t+djYKzAbIHNCwD6UElIFm7Z6qxz7TwFLjgVK6+NLKG1Wst6Aot9z6uNzdzReCGtbWiFN+y+FqhbHomnv9ptImZhxA7WPsgUoLta3giDO84ekYn0TAFQ8VVVUNMxuTDuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767413034; c=relaxed/simple;
	bh=wFIROQPpe4SLODENmbatpS7i9yU4UsnRCdPnycLWuJE=;
	h=To:Subject:From:Message-Id:Date; b=AqZpX0yosoadtqqnrI7DNh1vsv2rvebFcyXTrtoNZTSDVxmrk0ag5zn8hvW6CjBUvoxTm1GR+vyQmx6qZd0af1kWv0jpuKa6Zx+idqWanCwXOax7qMtHK10o3RQeuGlKuOieLtwSotBfMJ7w6Q4PqFbKVr8NgD93bO0AhtQy0XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/4/7Vl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/4/7Vl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB182C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767413033;
	bh=wFIROQPpe4SLODENmbatpS7i9yU4UsnRCdPnycLWuJE=;
	h=To:Subject:From:Date:From;
	b=R/4/7Vl5b0AxQ963677IUym6RfnoLdBZivsP1NbzHGq6HsWsEgX+WZJled8Q97S40
	 wLYQ866UGkXA+A0bxLorieVmgG22dQTpV5gjHs4J9b2CQB6f3N1hnMXLmQTXNLJa9u
	 0sYvewPSS16dtoBJkJ2J2dvAkOViy70fsxvS34E5Omi4AKKn2hoQPCAfwEHFx2BdvS
	 PzxQhzjchek93bxRDRn8vi9kUQ8sRA9IW+o8qf0ZpE7M0Q/VZGZN+xq6JPpp6MUq/o
	 8p+u9yRWZQunHf2/cHUFkDFX4DBdnLXl/o57NqwVyGnZwPmAWGjmd8ph1kYHMX+nK2
	 gPDzB1HDJpryg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E20FA3725
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176741303364.4896.17880821237618176857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03e66311f7c6b84a55d0193f1789f040b7b2267fbf90a49956786cb3a76a18b7
Date: Sat, 03 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767413033
