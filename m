Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FDE5383
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750110594; cv=none; b=LuUJkzuGdZ6ay1OeAZv4VbRuh5f+FtXVTXCbvim/iYyYV4LHF9E6u4tXXGFxBKteu1dovvHS6UWIPeDOvuIvqEC5S0pVLzb/hqoTuVx6EqGdAOiSaJntXnQBu89+ezoTTUdegL1DQ55nsCO5X95pLkbYHQDbf9M/9nq+D78NQVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750110594; c=relaxed/simple;
	bh=x3hwmLxIop13Vq2ZLnwQ0ifyyse7KH16McbqH9M1P4g=;
	h=To:Subject:From:Message-Id:Date; b=HZWH5Kbn9QnFDAk1SHvw00iqlqh0UgX4M0DrU8x5ELNqFq4sx2XwPSAgw/sNlLdWsVvn9xM4N0IqhKdAEFxSy0k8tpDCbe8n3PZnOJ8c4ZEoPY0h2zvQFMCLtkI7VvVBwW1m5hFAtkIIc1yUYbUJ3IxrXAuctgm93Yjiq3yV2aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JS+p8vXK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JS+p8vXK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E6EC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750110593;
	bh=x3hwmLxIop13Vq2ZLnwQ0ifyyse7KH16McbqH9M1P4g=;
	h=To:Subject:From:Date:From;
	b=JS+p8vXKyDJN8ZDl8l320sz9cfUJtIJjza3de4DS36LWCUyPGXGLRh2FaF6BTEGu7
	 UpUSdp6G013uFY54axBnqCB09+sK5arS3VcGnn85DZ1czF3TTQ/3OXKAzoVejwxcT6
	 /hyj6bhGJMWy3I0o/fKwcnKQXy7dUggmxOinG7kGQBhShtNMGWkmV4NvWa5xLoThRT
	 HATUZkT8DW4WmHu/FIDqM5sH9jk91000KkwtDGmnlwXSj5RROpBlh6UUHiP39lQTya
	 DneShIni47Ou07KoeFEjCV4dt7f8u8a2PRiRMQJsfJgZ1oxxTSveUUwqc0aX3RLKCb
	 BZgbuZi7JmWfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90444C71159
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175011059358.28535.3612706870133013787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d70d48efa750de483e85ffe3e58f6c80d755c3b010c36de98e9b225f8f42851a
Date: Mon, 16 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750110593
