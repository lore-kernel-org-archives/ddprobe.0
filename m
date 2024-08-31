Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2653E219EB
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725120954; cv=none; b=OKeFMR7iLYB43A4Xnr6C+WnxyD8gclWVy4ulcFy1P/ReNDfjkK+JGy7veqXjh9ZS7mJBuqFuy6STn7+lsTHL5blF7bEb0vuPxygUCUhKfhRQPaoNU2LABroYU0+HQF3VOqU6zKpm+lF2PGYrqm0zdEH6Q6GzriSHyjAHRrvrG28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725120954; c=relaxed/simple;
	bh=qz7JOfr7y2xjt88h8uKioxgSxncwEz/9m/lXw3nOOPc=;
	h=To:Subject:From:Message-Id:Date; b=iO2qeLl5ZOPAgnTlnGBiBsFvLF2Pn+9WqPA9kSCMzAyPMRUAwvAZ1fac57JXssVFfEB3SdfhincQgVo8hHsGv5+7hM35zLQgICUJrTITesBbprQTJv7bJR97GuyIuviMgSJvf93GJWjHFGxXP1TUg7PGCJcYxn4PvBeL06k4J6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rHtZOdpJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rHtZOdpJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A699CC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725120953;
	bh=qz7JOfr7y2xjt88h8uKioxgSxncwEz/9m/lXw3nOOPc=;
	h=To:Subject:From:Date:From;
	b=rHtZOdpJ+BGbWPlyw6sBn/II0rioxm4lgTz1I7Z56tBQxEWPyVvwytWsIknZkv3P0
	 80SmcfUygC8YRyw7ShchuKz9tUmPZ9H49gzx+grfDzczMfG8V9e65YlXd0T1LI+Kq4
	 SNAmtBMQp0CN0ZRYMDqMpWDNr70CxG8RsJ6BzqE74ucG/fy/ynlbKJeyJhQ0hZW2vB
	 qjSa8gS18x+2Fz4lxlEee5gIdtRhW6GIhd3MQIpEzNp/TA1oavehJRjSRP06wVdl6n
	 4CZKn07gOGxc3sIZZN9rV+oHlP3K7NCsSxp63/60zk/A8PEpe4XPtnVp9YOQZUWOQJ
	 1szLR7uqWRvCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A94CD13DD
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172512095360.12636.10799354867916945375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e292de7f2aa43a6d1474407baebade19d99fabe84a7f8eed75923b5c7e1d37f2
Date: Sat, 31 Aug 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725120953
