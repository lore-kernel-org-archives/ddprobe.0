Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8963878F4A
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 00:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781222794; cv=none; b=N17UrB2E9VZeacU1J89TfYq78s+NXP8fhl2VgbEFbi0EY7Neuqg3wyhTQhDxofEWRGtA7vjphtqOgJhTxGmJMe/mVAQf1I+aou+FAG282vpXQWdfmZUrS1YKkNZeEqgSjz8P575jUxOii25kj7qXVLNnCTX/BQIsc7u5Q6+NfLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781222794; c=relaxed/simple;
	bh=qzCkP5Pk/IGzivycsQaUS/qJL5gnRNs/dj4ws3hVmzY=;
	h=To:Subject:From:Message-Id:Date; b=aHY71LP11NBxrX+aUOLyDAeyTA7N2ULaydUenJvTiKcRVIb6AOZwHl/XXvyQs8xecgL0tc8F1UUs/3x8touFWN9CzRPBHHcDujYellm7wdZtGxV2GzmIasZXbnotXBA1SLvBWUREFMW9wo5Ty0LToIurNM9rbI/aPE+ho6Sx0Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxyzH1GU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxyzH1GU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2149C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 00:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781222793;
	bh=qzCkP5Pk/IGzivycsQaUS/qJL5gnRNs/dj4ws3hVmzY=;
	h=To:Subject:From:Date:From;
	b=lxyzH1GUm3OmvAja/839y14QktAKOakeW5y8xBDvX+y0aWg4HtGPsmJk5SJn7Edqn
	 ERKqspeQwOWs6mxvpPEQEql1MvgsS5GkY5+IbfDOwTmxvefXLB7+RKj3SvzlrnKr25
	 tYj8WNjEOwaGFOIgjAel9CqFraP5SIiMRT1DHVC2x8idc5IohknpDfRVkYMDAjv2Yb
	 TPD0ZlaD9EenAA0KckeChdHt08DaXHk5qZ8uePpIzCbb48RaY7UklLzre2YyXyygui
	 033aBpRxJjTL3ULuPpWhhGZsmI6oXQuNebR9YFB7X47p+bCb5fEVwj/C6VwN+fUhgJ
	 U0I2AiYYgyP4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B511ACD98C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 00:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178122279372.16882.403261972689445857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c25dd5ea5b3281688e2d69440d5d732904f91acf853dbe8caa1016ff88de8999
Date: Fri, 12 Jun 2026 00:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781222793
