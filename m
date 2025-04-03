Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360DC1C861F
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743688194; cv=none; b=CUg1CHZYkddevIxQRHP3FFT5CjJo0vx6tU0EuxD0KK8YHFPROuKKbw9LId4uzIO7yrbfmsihVdR2XKobVhfzQBVlhtXxPeqUjRXsRPtdXtbMIdjCLrhmHxkqFidej9//yCmv2ugSoBzztbQf9wIjx+f8uboyXSQi3Ips8dquKyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743688194; c=relaxed/simple;
	bh=4rSRRRFh1fzya2tF0hfCeDQGcASsFVPBEAsdd82JAt0=;
	h=To:Subject:From:Message-Id:Date; b=UEZKSSQUsRbz2tUNYN9fER2hAj+Zz3jSVOH7RI4MBHr/RRjosOFM5QL+l3TIqnipPpgVuaZrXztOvelodaEGpzDLOAQthWbh1UwtUNjg/n0U5R3dZNwcxwvAkPU6VlPl/JEJ/rwXnjP2jVzpVRCRbk6Ac288wFCITmAqqh0q4Tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AqcAgkct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AqcAgkct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A27C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743688193;
	bh=4rSRRRFh1fzya2tF0hfCeDQGcASsFVPBEAsdd82JAt0=;
	h=To:Subject:From:Date:From;
	b=AqcAgkctgk+fE+wZRU5hNxem6/yQSpI2J5OVZomH5tMcVV+CbkWBqVmlgg7aXcgkx
	 ZRC2IMdWZ3Refatr6EBEQJZzsVLBP187hRXK1lgL+vY1kV/XVX7b0MqbFxdMcGjBss
	 HA3WeCXq8qg1Tp2Q5NVG5BMyS+UJhMxZmE9nXM3MSo1J6xVdLMralcKovN5s1NxBR0
	 u/UdojSLuMxfVRU3MDTIheC0Kr8l4ll0PKOs3ZQZXrb5AfSqYcnYjdyQuHz21I/VjQ
	 +eS5p8oXeX0KOapV7idSZSw9G7R0XgBPBt8PMDu2DyJkWuzW6bqWEvqaOUZ6EWAcPu
	 CDgBe7cW2WqQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9335AC3601A
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174368819359.23088.17148802953112536446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3109489582636e84dcdf573c7bb50d17b89614f725edaa498cd238fbb08dc90
Date: Thu, 03 Apr 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743688193
