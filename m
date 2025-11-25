Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA15261B71
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 16:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764087173; cv=none; b=NoFnMtLcpxS0ccWDOwldjzLXIfGjPeiXDw6v+0EDjoRwQ2Zom5ksLxxg2xNvXqJTU368HK2NyMp2zvYYneOVO2C3LdSBT2QTVK61n4VsDAbz4jjsdCaLlcnJcyMo5NfnqFt9YhUz8MymPoC8B59Eq9uFANLjGv12hOHUjmVLaO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764087173; c=relaxed/simple;
	bh=Z+1xIMVb7Q2/yt+zFqYMaJL5uoVsXO7Bgg/Hdg2sdsk=;
	h=To:Subject:From:Message-Id:Date; b=j5MqCupbIDNDERUJ7NYmB+YzHjpV6JZhwIPq6BcER/2F/SZu0RJmPLNlDEsD/hvq3Fj1r1mbwn+FovWlA2uFLn8bDqmZUbvZKUull0pWh/YIeILNvMEWgH+/jufZoZ9w1zxqUINZPaDtqxZ3TmrXRknONuy4FJ/ZDVIANXucX/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUzk8lcp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUzk8lcp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4031C116B1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 16:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764087173;
	bh=Z+1xIMVb7Q2/yt+zFqYMaJL5uoVsXO7Bgg/Hdg2sdsk=;
	h=To:Subject:From:Date:From;
	b=tUzk8lcp2nHerergcaHIS9+1ubSUF2/a8A9oBvyoB59BH7TZFkNAAkCtSk08cgY1D
	 LNXmz40IHjf7mXyF8pLc3+pISLhHh/aDd/i8hk+o/471xLruKKjhycwS1yC5Wsg/s1
	 tGJ+RbBUAB326gRvQ6d8QLn6NuIjFIS1fBR+3I6N+zhfXASX3LCRMtaAHGTJKQkM8M
	 85YvQYzzNhDUYu9Wg21ZjkXhVRwwC8EzgXB0HnWXJmBSdb8hgMGne4/AJpps+EXzlK
	 Apb4OHfp0/KZEk5mWIutva7iaMI6/Av2HPWiivZKUNK7Az9JU4R3NYv7h9ZXwatxgI
	 WuiJp2LNfIddg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B1CD0EE04
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 16:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176408717359.623.16472406166404802179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a98f73e6602fc41fc660693d559b175abd1616a8a47492da1f6e6251eb41e53d
Date: Tue, 25 Nov 2025 16:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764087173
