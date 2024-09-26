Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1089617BEA0
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727314554; cv=none; b=peUKXuCCzlEXiSFbZPyJdA2xXJi6IERL8SZV4yhtFYoeHN7qvVfkYL9/b3YPpF1smxcRDhjPGvWNqr/Fy31zg8BVzYj0fVamk2alewM3eBuSJEkYq4MlsjnsotvSi4xxv7Wy3R7Hwb1DAKdcFLG5tao0LrU9bE5cmQDMc+pNjDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727314554; c=relaxed/simple;
	bh=ItCPOCLpdKy3IZ1ZxcMy5xVBLadzmQ/X38k+Ib3Y7eY=;
	h=To:Subject:From:Message-Id:Date; b=NjZ7Ub91VlhNV7jApAazfgawFgQyOjTz6XBs6qD0YbGDnokxk074BtQiNUCQZh5LHm1zpqHpFh5s4M0hQaqwawVcTwmmvnheTMP5Osd1K+KVkBN5722C1JPHexgSjS8OvxzX1klglXmkpleeQ804YkotMh3EJzHJWC/hkr1xe10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdyCP9H5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdyCP9H5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C1EC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727314553;
	bh=ItCPOCLpdKy3IZ1ZxcMy5xVBLadzmQ/X38k+Ib3Y7eY=;
	h=To:Subject:From:Date:From;
	b=AdyCP9H5SAbkVxZLwRcqOOBbIA86RQI/d+suJ6+FYOSPC0EzaE3bBUM2jDnxV0sgs
	 E1xmo8Ed05Kg+psSFqd/50uW9ugWjm7icpZHQlry4XrjsUDk8BjR/nYja4f2VfsDvc
	 LaTsKcFhD8iikeYJbaHPaAWupnMhxv4gOJEdaQwXsvw2yWb225L3jUz7qz4bHdclPJ
	 UAzx8oWsP77y/7tyrSbv5WbMV8wzcFwyY3lT0L8gzy7CEJFYld2vsjr60WX4XYZ/F1
	 HSKnJzGdm66WGHTPKwRFcBMDeXIa7jP4+ikdu7iStYBGu/UJLTVijp9cYp3vHvRwG2
	 Jl7DEt9awTVAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922F5CCF9EB
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172731455358.1096.10681824785357921461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d8a6a7a9cb6c8d0e4abbad58aeb7c2448df7e82b6e6b0aeebace131f9d07748
Date: Thu, 26 Sep 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727314553
