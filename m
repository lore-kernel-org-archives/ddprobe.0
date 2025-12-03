Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B502F5A10
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 17:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764783774; cv=none; b=GBhTlGzxMmWF0fqw4mJYHqAcAfkkEkLjU6V2dnQ36aUnwEZDJiAW2zh2X5No7tBVRtA93jYR/F6EOSAMDGJK4R5NIkhEN7jyU/aCNt4m1De6Px/D8XnRu0T69U+VsUjtNj74cvdpCqzNW5qTirixcqi4BLh4wLQOHutzo3HMPOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764783774; c=relaxed/simple;
	bh=1eJvXnfuIiFi7MILOq2NE0eS61lWPgmKk2rnRDN+rI0=;
	h=To:Subject:From:Message-Id:Date; b=sQ8X8g3X/HYgmxUEByVzAodtO0rmaBABUp8bHe6OQmkQG4iynXGQQ77W3jywMiHkAvntMDCd5Oo29WbYVlbNunYAlF0/SNLr95hr+9GpS3ZTbM1/lkj7v/PIARyR2Z1p0CNYfdKtDSdzcfQftdqo91ezGr/ur8HzY7wqG6aG6m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4kdnFJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4kdnFJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29DDC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 17:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764783773;
	bh=1eJvXnfuIiFi7MILOq2NE0eS61lWPgmKk2rnRDN+rI0=;
	h=To:Subject:From:Date:From;
	b=L4kdnFJLScr5G/J1zn/IUadnLB6DDr0FqD8ISJNQlEX7qjLAsBttBnL2NR9/xfI8V
	 xzkO8x/h/tUtWFvh6QJxX0vpm1HhrpO27pl/K6HR56nWOTki3tK+rMyo7k/7m6ExiU
	 FCQlp5jrb5Kc62UJqo3hEdUQWg0IxYYX7jeTO8CTnrz2oQ+IBKwaXvkAZX1CSxk+rt
	 kv6JuRTDekwt92g+mScpiy9UbhyZAF3zVmOlKYDySttCcBF8Z1F3RwcE5MVet1g3nd
	 mggAr4DAKBYrcmpZvbnv637tTxgR1nY8K6vB2mq5ufqb8Evha0TlaEL0cMCWFLceP1
	 qaZ89cWEKYluA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FEAD15DB7
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 17:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176478377360.30667.16739162247668931873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f46d3089a13f11b30d36b473e6212c55b29694b633df5c021df8ea04015d70
Date: Wed, 03 Dec 2025 17:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764783773
