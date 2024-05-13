Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6D452F9E
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 10:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715596343; cv=none; b=c1cqBJfbK/bETx1Mg3HWkwjKt08V2fzWPGfz197NjbtpWgZBuIlr8ZmbhflEtga7eQkxm8eD8UjS0F/xi7hptP9RVWYLC9Z4Hj0SnIwwDKDYW6vswfjqEqcksDYCOdIcy0ipJ3H5DhTAWllJALHvyvTA4tsHBTgwN9auoqXOfN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715596343; c=relaxed/simple;
	bh=x7IX/BBoRUqrKbSCfhsYMMbag/YzKZgl5Sg3GtoUSPU=;
	h=To:Subject:From:Message-Id:Date; b=DOqp6X9OjD0VyUet2tzbkXmVYw7ov2ew4G2F0L/Qndy+LEvgoajH8HrXDPYJbtIlFcvPDKkickf9axffKMg2WF/AYwWlAI7PLGBh20jlHe+lK5MHNPXyYFtl/qNKql0n9CpbYZjHF7Ex/KNw8/54snJf4MC64DQFLVZQiH8ZTCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHu6FskB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHu6FskB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9DAC32781
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 10:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715596342;
	bh=x7IX/BBoRUqrKbSCfhsYMMbag/YzKZgl5Sg3GtoUSPU=;
	h=To:Subject:From:Date:From;
	b=LHu6FskB8pyCKxuqGBuQn90LPieNJrvQPQJn8Q/9YT525UUH4XmNNtMNpExk0yVDD
	 ZYuV4f78H5cvsdWHKp8hnI9LwRBLHY9xYUK7wsUrGzbHfcLorMRSJhWulCiY9+Xd6Q
	 qn1szJZyPiHG3T3rVRKMlRXINnnSSME14bVYmYBzK6nMq6lLhVSDnu8X0JOc5O3kUY
	 9E9f2GefBAf+/GolLWFjP+oDJWs1qmvkVWfSQ0My7nxqqqe18GPqZPKfyiyfJlbLM4
	 CsU6zqyjrxlhYV+q4LojSyeVlopYfI3nspqjbAvB+QrbNiD433CfI2P1ckZWbbl03C
	 b8TlEHnp1OWQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8139C25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 10:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171559634280.26449.6805741315612790714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffbf469a61f8578746509b859dd8faf5ab17bc3e4a6c45fb84b977a9519384af
Date: Mon, 13 May 2024 10:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715596342
