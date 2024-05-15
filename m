Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCAF47F78
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 07:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715759543; cv=none; b=ITU/Xhj8b334Qni029nzcWQAHZvANpDh/zIK6k9W+vt+TaY8jODqpniVGxhvHODDWb9aPYFy7792Ee0Ym40fsww4kYzAga0YKGRxHbBQywzrJu3/YEs2jfgxixaTkw8j+niTl8mckjNGHDeC5CB58VKxW5GKVyP9WVntYeZUysI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715759543; c=relaxed/simple;
	bh=8mMMrgK+yMZHy/rvsf+5RI9PbqU2nmwzDTjf8zGxkUE=;
	h=To:Subject:From:Message-Id:Date; b=W9DeZNMVpgEcFCa+QWXqMWmEMK9x+iSWz2yCSwoCzLqesWyxhPC+MmdQjFn/myOlKjuqVJsUFydCBA2kSGZPpmW5KfGcS7u/EtNf+mFcC70VVuXKZdgT3WvDfDF3NvwG3hC5d98bTtVthVdecXrdOi95Z9GMrlNzODevcaYWA3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CX0OBGJ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CX0OBGJ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCAAC116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 07:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715759542;
	bh=8mMMrgK+yMZHy/rvsf+5RI9PbqU2nmwzDTjf8zGxkUE=;
	h=To:Subject:From:Date:From;
	b=CX0OBGJ8OjcE2vQgf+NGIkcEvwSVltg6sCiRpj7W38m/nVj+xPbvC4WVYkGf8AoRv
	 XgjPttp1v9gct0wgDJ9F2KSuCxBpCV54k6uKTcyoxOuWxTEK4Qw20xPCD0CYg/enKu
	 uGukWmMtNy8paBcrQf1aX1SIlFMdxdhlAU8dwCQBZUrhejbGE1i2WtsQPHTIBfXcbN
	 xijNTverSunkrKdbIUszC+hhLi31bk4M1hjjJX2Z5ceLLpFz71hcjJHu9k+v/NUAqs
	 VrjQyUi9OAnfG0CRs95tnmvty80NpUhmq0MCF3EOOAg6ePuGEBQ+gsSA7paC8bLJ9E
	 8VZJr4qxdgBCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFAEC25B77
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 07:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171575954276.28466.11815320110137032462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c27f4b7e58c16538899f8a8042ff8a75e715a04b88ce3f32260ac1e27c6421
Date: Wed, 15 May 2024 07:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715759542
