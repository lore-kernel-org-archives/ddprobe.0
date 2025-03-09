Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430FC4409
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 01:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741483135; cv=none; b=MYtPCrvLRiCVlhjYnPERF0T5eFfJy1cBS10YLq6A3RzjUDRfvQFd9/t4ioO/HPDVCWuJWTUwkYRPOTYkW0a8JdJEAPm3WTXjFAL8nN7LhE7abGbC3l5cYR41zdfzM++SKwRDzDodvs053FRbXTUw4v7oXUmM7jWYM9eOYwQ06XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741483135; c=relaxed/simple;
	bh=0Ij9cMQJiOS0KlnDUYH87bKUKE8pXux8ol793ZDBpDI=;
	h=To:Subject:From:Message-Id:Date; b=OEvUoRI5VhRK5j9+MADvV+CWyEiSuaHRkgQKeyB8BKIsoR47xjzttsMaesWJnARAeUsNcRP8UDtbQTTC8LcYydLjoATTM+wXI1ZzLMrS0r4juOXuVS8n2tTPgNZHg1enxixOyCCImIrspA4APqHXN9AaMmAyH04xHR+GsqpwjyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8elqtOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8elqtOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8835C4CEE0
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 01:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741483133;
	bh=0Ij9cMQJiOS0KlnDUYH87bKUKE8pXux8ol793ZDBpDI=;
	h=To:Subject:From:Date:From;
	b=H8elqtOe2mKDfYSy9C0NZB9Pzd03hHVaCdYt+0+brkDWJUoEfUYwdSyRKxvWlH+0a
	 6+vkxjwXCCSMzV4JHjUS7vwyLoBQhiw5ferVhKZWBtvlLPhjltT/q2Hv0RFuhNzQZu
	 +6qkxbmbO7o0pzexHoNG67LyYf9k5C/ppUWuAN30cjnUMjfjTbkmtmXLt7mqOg7ZQo
	 3IPb7IfRVo4sp41k/Q4Yt7REPF6Bvrfel4pQdK28792SEGoxz6gV15fH5MdPUpfkom
	 EqMv6Uix/bFZbisAubjYvYdZuWfQ+IDqvwDVpbSt/N8/6xDOtF0N8BtUVCEbaFWZA6
	 5gYiLkrTEVu/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EAA8C282EC
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 01:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174148313362.11988.3617972848804231834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 660d3d216efeef6305331e40ee89b607ecec27abfefb3ea13658008f51647cdc
Date: Sun, 09 Mar 2025 01:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741483133
