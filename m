Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18105283FE1
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754666994; cv=none; b=PBuEzHs9U+4Atg5Gk4lH8tU59PAgCPwl3xkLa0evr6zQPOiE5QO/xSJb936yUmReoXxa83M/DGsns7r1Wi9cDQHpads2stSsnN7W8tRecrZdDG1+U6GHyDq/m9+qQGi//SKkrOtRTl75mvCOlB9kxdaobkBRjPP6A6WHvywx2dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754666994; c=relaxed/simple;
	bh=7M5CWj6E+TFWn0lTuAhYqNiatUpoRVNtYzsFkLSnwhE=;
	h=To:Subject:From:Message-Id:Date; b=LvHPAVQWprmy/3+/YttHIAQlPJ0wKMBxQ9yn+zFvlbBMWmwNwDgzOVsDqFI9tTDjf0aPjzEW0wdE6K+5GhcCV2llG4HC1vEjhzDKdrZAGPvXQxSWwLi0U2odQg7uJlgkYAKayZzK+FV6s7mFqOkYQZ8q532WfvpF8SvwIgxUd28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhFMDsTk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhFMDsTk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A930DC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754666993;
	bh=7M5CWj6E+TFWn0lTuAhYqNiatUpoRVNtYzsFkLSnwhE=;
	h=To:Subject:From:Date:From;
	b=rhFMDsTkswGnIrztE4SyGAQu0+epkAR+wLhBjZu4YDkB6z2tkgzqzyjuqc2IQXUcc
	 Jp3v9C0FhKJI8cVNAgt41U2ZQGTGD3K0xyi7vrqyA6hmwECQLzVHqnUtpz0XS3YnlE
	 cEy3R9UEm+bowURHB3y73pvRlIK0Km0ldmA+D+4PIuIf/8/e739Q0ExMCZercuIdlI
	 R9lpkBk8gYdGzdPOTxD0OpG+yiySchEcHlKvKfxfNcUn4AUDsLUZoURYahiQb4bmVH
	 9rlIQowJO38jJb19iULE3ZmpMM0FLHkMhaFfUk3Gc/+tFbqvYhDnpOevRVU6mlQzYv
	 RPCLIZEykzpVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B94C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175466699358.11777.9971095887899672013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cbadf1697f0d7f30266b10a3f8fe219c3159530033a48c240187f1bfae8844c
Date: Fri, 08 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754666993
