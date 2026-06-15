Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4465338B7AA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 20:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781556994; cv=none; b=buUIz0VjENUCh2LEorUL6+VUfGmQR7Gw02aqlyYyDMjYdMQaX9R/lHYqOibL1vSt067jpIAxwDJlZu19GIqL0KdTHwf5ieUI9DPGaoYxUW0LNpwSZETlzCaI3G6GMnWcLFaSLBgNTvi8SJjgCxV1ZSFeiAJmLsrL2bPxQcN/0Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781556994; c=relaxed/simple;
	bh=51hzhmuj8D0zIT/9nO7Ujvp/7EE6Q45JVII3ZuSyr9E=;
	h=To:Subject:From:Message-Id:Date; b=YiiyNasesUrs/zUapEu8eOlIXqFSxY1/GRQE4q93Pwl0l6qWRtA0I4DpNSyTZDM2zLTotz3DbeP5uahuy607yMtRTC2/T4ZIyOTznmT/5c8QUxvvFTOk8YAZCRt4zGaiI3L2zA7JkDik3Bpuaf6QLKLgtMQJH8r+zCfXuJgSbOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJ6CMyCn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJ6CMyCn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5EEC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 20:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781556993;
	bh=51hzhmuj8D0zIT/9nO7Ujvp/7EE6Q45JVII3ZuSyr9E=;
	h=To:Subject:From:Date:From;
	b=tJ6CMyCnL/K59TjCrgrs5UTfdXLEJ83W3fVpl9lIKMgIZ+VdoJGo1tciYH8+K39ys
	 PcvOPzz/TTs6lmjGPIY5yw4vwTbPw1ApbwEi2BCXprgm+jTCJ8ReMVphDkXWoJKcg6
	 xlLK7QwWAbLI+yv1TEg4ymJ03f5unA94DEO5SQh/ZmPV9snRd1JjwhzYJfZhmJoX+p
	 ADLUup4k2pRIbX01DI9vQ0AuIu9iI/pkO1ynKaZgZOXA+qWdJCjBUXEzvCED3Sa8Yb
	 ZdKBb8u0D3OPdmq1rdsanm5ZP9lhYCtbeegJ8k7BFeFnb1jbRb6aWe1adO1StZpi71
	 aRxshpxfuX0zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8138CD98E2
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 20:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178155699373.19271.16018091120201703121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 061eac3b5e72cf4ef0c3572b6ef5629bf192c32d3c2960665c62eb838b309d74
Date: Mon, 15 Jun 2026 20:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781556993
