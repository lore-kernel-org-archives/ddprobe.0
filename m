Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601D7D299
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 01:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714614143; cv=none; b=mGe+PSzFaDvNW4kfypdqPXmPkAYaoW3+zjBOEG5iJvAjwwrw6Pbhq6TO8WDABGhkHx5bgGcNNMf7y3AU1VtEjReqYsiXIIINT/ut4DWMohAzri7heGBdQdr7rxCtVAosU/x4OlSvF0c1KU0wIEFecwH7cREB+jfLdVx99alXBc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714614143; c=relaxed/simple;
	bh=srF2OX08uzc1pURTbdxu3YAHXS4QhIYizQVqb5xe2Ok=;
	h=To:Subject:From:Message-Id:Date; b=OWXkXJzW01DRoXqxnm59ZzghMfa9yWE9WXi/vkBmq1KJUWe4TsUSKKvx9pfg0TtTW102GyJzd1hf3YBwxTtAgXVHcAR+HTRPSDOyas/QzlbTA3n7H0d4tD7n8xq6xA6h2CgfyLtfuJpLdZ0qUpiUsYKgvjY7pc6ZgoVPS8QcpBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQfnMG6Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQfnMG6Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC142C072AA
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 01:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714614142;
	bh=srF2OX08uzc1pURTbdxu3YAHXS4QhIYizQVqb5xe2Ok=;
	h=To:Subject:From:Date:From;
	b=KQfnMG6YF/w5SOYx2fhBi+diKudxFY+xeomJtCAqeIjUxhvTzgW9DGjd4CLEKDQSX
	 YTaQ4MhWsDINJ9gWD/BTMuQdNvA6YpBfqxJREnmR/FeMjOoOQbBgK2igurexfJgcSs
	 Q3ntUTU4XNI/bkxCh73JXA+y3OyAoyk9N52aKe9r1eNvDnxDtl0aX/DKBMfi6Epi5G
	 pRQnU6aPoKBhXftWn1uTstU6a3BGAwnKAtHdIMGMbkdvUuMmNHeTUgwRhuWlAvNZiu
	 qxeq+WOy/qHGw/yp8Xn3GAgFYN2RMWqdNE+0ujmTnWwAIwzWN6tf+7qQEMsr3g7wb4
	 18jRhZUiX4neQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C855CC4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 01:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171461414281.27765.16557687969505681940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d30e98321d3623b6c7579551cbec3715c4ecef8a527f408c1e934153ee03b72
Date: Thu, 02 May 2024 01:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714614142
