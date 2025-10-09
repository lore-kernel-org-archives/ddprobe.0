Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420021397
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759986594; cv=none; b=i7J0piZoh7ehXVBn98z8kP0wznM7v5xhN4KV++JYCBolWSh9Y7UDah+g+D5u+OIOdGOG3spf1P9FCkSXeqp1Gp3ah6GGFV/8kpRJzVj2aaltKpwHnB35Ir7Q+UXVZm5OZzBeuDQd7DBUyNb9veBA17YqA8M5Mylyvgz4Sj5mlLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759986594; c=relaxed/simple;
	bh=8uL4t0SiRsU1O0Cj3+tUWZ5zjVThVQZvzMhITDp8TG4=;
	h=To:Subject:From:Message-Id:Date; b=rx4BkTsfkliz52H7AAMoiVTL/olQD11fLmrTb1I2cvj4g1bHPRhsJgzePo3RwKWewzPRSBNQKe8kWp1d2vT0h25G4vx56QJbFw4AnAtphz0dTPmz4yYl4i8AwCYVka2dWkY+ahLEZlwRumMlYflj3eaOrqvL8s8K/UTBIl0zay4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNLrtB0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNLrtB0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AA7C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759986593;
	bh=8uL4t0SiRsU1O0Cj3+tUWZ5zjVThVQZvzMhITDp8TG4=;
	h=To:Subject:From:Date:From;
	b=WNLrtB0ihL1CuUbbe8qOWZH+hn5wUQmL7ccCCNFqfRjfJNCp1x0mRa58YShz/RUSB
	 UuBNT6NdL2EL+3Fr8FCWE3TPjEUi+ZxmHlJ/eax8Q3SiB8bF9DjE7YEBwKri1C5aGU
	 4HtwRXM5JPKoaZTwlv8/9z7R8cwkBRRXpAVdfwnaEefAO5yYDXJ29uK5xqLUyXzdpQ
	 hYEdwMX6ijmxHJYVZLem+/2Jrzib4gn+RMzqVY9eU4LI3w23c4+z1BSH1TJI9Gi3UX
	 O3oXuiZd9OB1LQjqg3QPqEL8wyF66e76Vpj3N+bpGCfmyIzZsAub8OTIc6qlH2b+5W
	 XEJHSsw8JfXtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BBACCA471
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175998659358.31350.6996723298670716414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a06ceb13e3c9d10a77a6cfc7782b1061da727aa5ac59698120017e5e756c123a
Date: Thu, 09 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759986593
