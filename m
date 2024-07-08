Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431001D54A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 14:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720448183; cv=none; b=Roxh33toEcJHm0LQUjQd9ZeiZol4d4bY4dDEM9BnHb3lPgdN9pONMi4A8H90T2hPDu02PjlYf6WzQ4bjkZtWKr1JZrVCo983AqNx8MjoDy3e+JE3V1asiv3O5EB4z67w/Pf3+4vcWrFNQOVd0oSmXG8W+XRIXpg3B5DRam8IaNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720448183; c=relaxed/simple;
	bh=J4090zsSyD2jDcyLm3Iu7UvA9jNoSRX1NkqYRePYEyg=;
	h=To:Subject:From:Message-Id:Date; b=HFuWXwgZ19XLiDWAB7703mu/APg+VuUn0u4Y/pt3meaYi73KHNASdvm4n6jltrFmRFtx9ew/mcUmQ1vZYFizaqtOXxU4JHeFOnjGDVeuu3NE6hvWk0b9A1XjQb7Fqj5Zd1fAvPRyNnZFZkCecdVpVtxH/vlsBvzrHxKSVVJsF8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EvA8aY8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EvA8aY8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D909EC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 14:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720448182;
	bh=J4090zsSyD2jDcyLm3Iu7UvA9jNoSRX1NkqYRePYEyg=;
	h=To:Subject:From:Date:From;
	b=EvA8aY8je7EBwMjB8f8HNbwE02kVdLzI6L+nGMviOZGgRsr2v9B874fA+ArCmwkeu
	 aRQcg19V5/1oFO0oeNL6dTXthk5ch+/5iLqq33D90UyocuwivYhE9Vfd4umwu/UTBh
	 kDEJa0qwqMVYkBVa7WhEuzq4PdB0XMDNRPBir514aIL4im8Qanji+CpbcfnVhzShD9
	 cXWzKv4HidAUrxSMsSZuIugbFHwrwM5mN5Dc6afTvd2nS6HUYhj0MQ0NJnVRjWe4Qd
	 SwtJQx9SsQEwlcV6CHMWkUkvTYz8i1IYlJu9H9c9JmHi2/XZh/+24QwB4UwLE6RA7c
	 xE7IDOTVYfliQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C324CC3DA42
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 14:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172044818279.18520.17972585280712794497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05f51bcb0d17b7ca37320e0d36d63fe96dd1b40d6237a3c48f40854923074941
Date: Mon, 08 Jul 2024 14:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720448182
