Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DFB17736
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 02:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745549995; cv=none; b=cu3QpdHcR/457vB/suwGUFDwsaaao92qoIqE8EDGmI6IuiA6nu/4SJqakHpn2I82DBOYgRk/60GZOz68anIVU+/otBMPwp5w3P5jnRWALqKRjBzieI+FSjVL/8HHuNrFiAT5k3D1fC48VtQmdyWsflThkhGcaLFrr/7WLvGOIWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745549995; c=relaxed/simple;
	bh=l/xidS/FVoymmgJCylTDUFieYVT6yen4VFjWPnWuooQ=;
	h=To:Subject:From:Message-Id:Date; b=CUeOHlBzRhh3tYkjt7dzw6jFwztZ2TP/PY4Nd5tnpTvA4Kx+rE9KbHQaiusWFR6kx76GZIgPQVlJHQZZfSPV/GAsp0vsEZt0rBuJs8z/sNRQFBI7admrdcrJDQ43BYc0ATyszz7TQ8Qyl+veBlCnTpizUNUvGuZsR7ZJK+4bKnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6dwdquP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6dwdquP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7362C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745549994;
	bh=l/xidS/FVoymmgJCylTDUFieYVT6yen4VFjWPnWuooQ=;
	h=To:Subject:From:Date:From;
	b=B6dwdquPTTC0Z8sCMn2daAIp+XhMI3bebb+e+qwF6UEGWdwi5LyzHaJsPlfHuQPcO
	 kgoS6kgXzKXVcdOEbB8ZUHfPZZyg2kysSd2Y9PBF9eJ5HP7JySCklTq3h1xQtX7xXh
	 ZZ1vcPxtuWu6F99FWZlCBeQ1fXtLJ+R9ZPcVlXr89+ERwkWnzpQrM1uD7DQTcz966G
	 vOHBIumDzNIjsf1l2wE38bZMW5b+3sCgl4ysQShCl0fnqTO7Bj9RZB9skVARIz5MSv
	 YAYUxZThTzlMS81zYYsePHjec2Zq9IVPxdPpAm37gVRjR5IwRSN76dedoh3GUgLa4o
	 3D5LouKtI53wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BCFC369AB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174554999357.19397.18057253743408963871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 562bb23fba3f0bffe724bfac626f33ffb2db8026f6e01af92195b7ee2782fe10
Date: Fri, 25 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745549993
