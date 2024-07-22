Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AD02F26
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721618154; cv=none; b=fGqm6o8p8x8fQLX8v02BdBAWYCjzYLXajj9eUz3z152ylh+X/OH1KmxSTWlbUuVskUOgJdDlr3uWWYntRwbiwmFMQEzn3YCQPMJJDZ48FztGB+/D8yuTBAaWCT9yjssZ+87yfH7a47OB2Aorv1vtgEBSe6s/NOBZjRLCDjGbU4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721618154; c=relaxed/simple;
	bh=YZ4qPKnAm66r5aRp4hpPD6paurAYhTtH1MXiKv2E2CI=;
	h=To:Subject:From:Message-Id:Date; b=t8XFqC2kB71pKV1bJrN76w6YwN6WYEh7PfVhSSmZA36jwh+b2nbXqQRMh0V2itMXoYs2IpXDg2PWDvcFVS1oqv0Bg4uoGyEdsFoElQ8hbHWkuXYUQQSfSEXCWNcbvZvc3whCmYszrK2KXuEEZHZah7n/GDDb5IJikBjY1Iw0MNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJX8pxx1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJX8pxx1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B732BC4AF09
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721618153;
	bh=YZ4qPKnAm66r5aRp4hpPD6paurAYhTtH1MXiKv2E2CI=;
	h=To:Subject:From:Date:From;
	b=pJX8pxx1+aAR9CHQS+z8PIA0uc5KZ1CDe5r9JmChrrdxCBBWkObnXQzr6/CT5tATa
	 7vAaTKcDnrSJAJ0LlF4EEv0zoSn9G33C5mC6nPXBcHD9vpNdypHHEEEamNbIuPmulO
	 XXQzaa0m94Fn5NPacUMYIXwqFEmNVmcNaeSwQ7NNcqZOI3bNMXv5lTPl2SooOfNYUG
	 ag/JB5bQTdjGB1kcjUMZuWmaBQw7lzPzhAv/UBIgir3j2P/J626Tv0QHDEzUWECWvb
	 s6tGThW//3tI60DaG9GPcgYC+NoZXi+1lP+ceYylj8LSW3IZKlEY97d1ZE1qTSbvP2
	 xaxu1WU8HHqog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7F4C3DA61
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172161815362.16974.9699302285301671408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb663deac6afd4ca889b6045964221b2ae6836acf698f39c7cae54f424333c07
Date: Mon, 22 Jul 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721618153
