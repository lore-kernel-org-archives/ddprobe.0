Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D315EAF6
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 01:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717637243; cv=none; b=t5aVU6kmv9ntlPrB4xIY9Oi8qo70CseUjXKAI1YJhdIZ9R392xZVb339bIcEHMH/EFKvBh9MmZsdCQf+D49BppkOad6EWG14h14eUZLh0A/hS8eBr9bZhL3RaKD2dRrUxqwgBkCqu1M5cZotzQeXlz1zW8YZsQ6b7RdUVsSxCqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717637243; c=relaxed/simple;
	bh=vYIj1aaMD3JIYviUxwu+yW5gSp3BLn2hu2SChF39Dco=;
	h=To:Subject:From:Message-Id:Date; b=ZQ4TyJ7xgW4ZiFKqvHWhbb4AAlUN2PkNNU6f9W3Gfe283iSt2G9AfQlZz9BaP1iJBn1pk926pNxmweJ9NqoEth3ft5QN5apIsJMWh13+XZuYtzEpIAezBw9YDd3xlxJ5m4NHA7uxgEeNwHBUDDattABLifLyexQ5BYTk6E0OslQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKtb2m2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKtb2m2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4873C32786
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 01:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717637242;
	bh=vYIj1aaMD3JIYviUxwu+yW5gSp3BLn2hu2SChF39Dco=;
	h=To:Subject:From:Date:From;
	b=VKtb2m2A+gekMNYP3KBHbMCvnVrwKCXUfG3qyZhjdvD+W3GV1HtIy/DRgXqEcKAqd
	 vlBJmswn/JoZ/CmMVV3RjidEqS+t83gpD8c8cn8QMA/kgKQGUaaM2x/Syu0+4nqiBq
	 tEWW1RWPCjCDIHL2K5HOsiFJnad2SYtS0E/iKgDqD4DnEEbvZDkrohZ51ViMu0lnKU
	 2YPpu99ikE0RJ8qWCrxXBYrunwzgRvEQczfUWLEWZWktXXeK//9aQIWH/8atWYaEWB
	 yGbehQ4eLq5f5Mht2qjInFzG/4Mm0mxtVskQBgSd9CgvF1nJllwMDZzPE7K45cSj6S
	 GVwyJJrCZ08QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C49FBC27C53
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 01:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171763724279.25482.17308949901879730091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1285dbbe7c31e3f264942d57f087586061e142089ead368a7ba84553ef223f2d
Date: Thu, 06 Jun 2024 01:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717637242
