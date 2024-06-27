Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653DC17722
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 04:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719461603; cv=none; b=jNdoCVDYpt+FcQeTYrIR4AQ08px3UHMLLm9kQNN1q8S9tAf0Sbf8XCyQT65JJiRcrvd8jRyiZQdAii9xmL/BT6Ya6NsrCkz9vubEr7ySguAO/RdbLoooXWs3d2b5+6OWSR2rvQ1OsQP8Yo6kULVj9t7zyjKjvvz+y3qpvSGc1kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719461603; c=relaxed/simple;
	bh=5DqhYadzXu/crQwM8E9wNcZJEm3DCO1GX9GYgBpjyuw=;
	h=To:Subject:From:Message-Id:Date; b=PZGT0ACni9y8howtSaiGW/zuv91RV76R188P2v3c0UdZR71PTv7Yz0J/jNKTHSf0NCYqwC8tbcYowx9P3RGPz8La2D44dgCUtE0s+zB4Yq/tH03WcgXbCWC8PJ37IzzpEneGzBTCXVmvvXNlWKuCveO5xt+A/VAx6pjTdC5nGlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VzjzsM3y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VzjzsM3y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7100C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 04:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719461602;
	bh=5DqhYadzXu/crQwM8E9wNcZJEm3DCO1GX9GYgBpjyuw=;
	h=To:Subject:From:Date:From;
	b=VzjzsM3ySse9OkssZkrnBTvujzXC8SuUD9zopMCw84C4xvoUE9eoD1n0bpleQpsQO
	 SDh+xWD+iLHwejTmcIOVnYGChImt4NFinI9bUmsZ76ZB3v26o5fM5pAy0P0aFyxC0l
	 O3kQjNJaiO2Q4Cdq1WsPws+fM6T+GsuCVziEDTHYzdsAhQ9YeoKC4rnQHxRuWy1DiC
	 a3aO6kkUVI8oloI9DkYNyUaBawYPASJu5bEmZvUh8+siQiVadgCEpXWRw6CK15G/mL
	 QAkUEZa7S1ot2NVXwlt6vkUoPOnXzVR1aHCxdfozGhRQeqp/TJqtpFChop+Z8opRkV
	 FUGZ0hTdQCJrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5F0C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 04:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171946160276.3601.7626069397821782273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 151ce8cf31588f8d3f9256c823a0aca44beb46d745f577152c1d96ac56b94c35
Date: Thu, 27 Jun 2024 04:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719461602
