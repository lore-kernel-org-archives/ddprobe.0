Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCC8774420
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753247993; cv=none; b=oUB5G1Ot7WH5NAeRKDidiszXAE9Zs2x5k53ewh3jUdybHVE4SyZT0Y9TrcFe52CAnyOYdq//jX/9n8sZocDgy6xgyS65lVIh6XbkQh2P68+STeZoeSfKhaHFl4tzuNSTbKmzDKjJlszFCFPsU+9BT9JQTvocb5lqfbBnzicBq0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753247993; c=relaxed/simple;
	bh=qA7sz1+TMJhtE9uN9T+q4AWPpVX3Qhn5xCQ34fDhx14=;
	h=To:Subject:From:Message-Id:Date; b=L+l1/Jn+gEsa317ZCH37uAOIRz5QQHFRhvHShw6bACpJNcCrZ7ZkjBn+T/MYky6Qzk6YAIzABYpiyr3qaBdbDTlvHTOBlwK2UNakreU3A6wp1mPivMazu8r88g5QKhM9uX2XE0kFyScYxpj9nkSOHCYlMVhn+PH87HxAhmehW3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mU48AL+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mU48AL+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEC6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753247993;
	bh=qA7sz1+TMJhtE9uN9T+q4AWPpVX3Qhn5xCQ34fDhx14=;
	h=To:Subject:From:Date:From;
	b=mU48AL+UTDQriSSQEMBwWdn6wNmAUvLM1CIQbwmrV+xBxuqtKhqK3FkBd/S+bG1lf
	 efaGdfchIihPTJ8dGAHcWBZ6Kelq4Yp18y4Unf5rCdeBWR2LyoaW7OysJAGy9ave13
	 3bP7NGS1YgODyyxzkwYk8UkcvXorVJhC5RwK5S1QpUnxxWfuff55135hoBKHeGDNqP
	 pboAdtvNpSlp4X8rEILOYhFKxiwzKcUNi9T3Wx81vYVYVjlpMg6dCaMpd2Gu4GM23v
	 Rr9sy/yDRueegS9bE6mWcbVp/EMzqJTPGab9Ct40xtEmUM2dhLtnCY6pxZT1WNc8Z9
	 X/RF18H2eO6mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3A8C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175324799357.8637.8906218478076274845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa2e9cd2102f4cfc5e320f0d57a147baa6e014ff9b01fb597c5dcfd3c044948c
Date: Wed, 23 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753247993
