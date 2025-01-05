Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFCD10FD
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736105154; cv=none; b=FLqMJiBdYdvcKlljn/trxczM0rIVzMyo8dNFnFEGhaZ0vHH416mw3PNi6CBGgk2XGz+RRsdHQh/NDn25MxREaO/s1ZcEs8S9t0bqvWuBkmjrl/3k8qKgrmCCyZVEhvuT4uS2M1DBfYMzF0c7ErAc6oa/pegKqsPxmcUnClCpXwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736105154; c=relaxed/simple;
	bh=241dHT/cA1LrxK/+Fzld9SaQBuMe+IBRtuBs0Lv/8oI=;
	h=To:Subject:From:Message-Id:Date; b=bu+age2vQDw+zE+WIjdCxCySkwNuHsH/lNgBPaFXGVZpKMj320CSke/AKblmDp9V739sSTySN4Rmxp8GNbKf7t07BjIA7L7bMmCUf8retmTKu0H5t5yULCzDi7220oivM8j915PMVfeXk8U+AffjC6YcsRlxPwu3RaDa0MnjZpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+I+U6Vr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+I+U6Vr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4109C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736105153;
	bh=241dHT/cA1LrxK/+Fzld9SaQBuMe+IBRtuBs0Lv/8oI=;
	h=To:Subject:From:Date:From;
	b=U+I+U6VrFvIoCVrT92zYrYLjCRkqZhKSLUhpIwtr3D4FCfan+11NxHUMWihVkjOhJ
	 zfO0YoMkYPFZEyEuc9XdBFdLppKxdLOgtgXzDpGsOiHnAA2D2WkF080xIVV0uDt1qa
	 wkAYJyQYktPcrDqoo4K1MLqLNxbemcaU/6ziWSFh2Ca/nSEWgAQiESvvpncQK5sG/1
	 8aL1FeXZgwfqtU7maB9EypuxFVNu1unZJvY5sqiTclSTVHXJL7AVHYDZ35ayYB5UbK
	 BrRMZ2u4KmAbeEwBVBQxogGHYOZ9Noa5dOPXQjpLYbt9ZexngAm0s+qIYBRWXjdlJa
	 lNn4Dhk+M/pIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93ABE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173610515368.23614.10646032736513200113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d1506101a67d34afef5222510f3347cea9a591da44394b08f2ef8888e39ee5b
Date: Sun, 05 Jan 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736105153
