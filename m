Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B35D2E7BB6
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768379034; cv=none; b=DauaAAKXQPrtLWWclAIsIQHh0tTADhLOviFVeOjfZ7fQfP0h3ETdyX+e9smnenTWAg9hncj6g2J4yTpIeskNBC34/unZjVfklU9FV0GfTRgqh/Q1G35I0zfU36hMwptJr85QGumrRAGn4phtxybyJ6i9zbsgZFoxLgh0FHGXCk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768379034; c=relaxed/simple;
	bh=gUyb3qQJc3HsWilmUq6QxRN1CNbfHXKA8YTNKJVNQQw=;
	h=To:Subject:From:Message-Id:Date; b=r9FWxtKT+NqvNoaxHYNRDWJEhvb+3XBcsXANcQXA+K0hTdxE3cKc0lbubpKXW/qKN34rolULdCeWhasqzxD6FnmiAwkMg7ncycg5bVV85Jh9Lpt6lwh4EwqZebqOHZCStqsXzs+b/OdnoXPUTmqrJvWXXPOJSFOKsq0uUzpuLM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APASt5ET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APASt5ET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC18C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768379033;
	bh=gUyb3qQJc3HsWilmUq6QxRN1CNbfHXKA8YTNKJVNQQw=;
	h=To:Subject:From:Date:From;
	b=APASt5ETngiiw90TVFvvJEnm/11Nv1gMfJRprj1smR3XJ1keotf0N0gp53RiTUaZv
	 n1GE916cRDP3bwehvFmCoMsw9FfQLryLYF8e68MtaA0BoaUnZ5sXpkFs2ZYYeNhazQ
	 X+/PUSx0kJzdkpCgYATeTY43sInuDrDqRaTTfqYcsQQl0J0kdmfu5aic4zrIML/Xdt
	 PXC7grQxtx4igT28s6tV3ja++ObcolEmC0BTV0C2NN56tgUyrB3jU/nysKtOE71nfv
	 nWA/HRhm6hy/AsoRY+2lal64M/HeWMG+QznSQt1vj5rNSsm8BFKm7G4Xsj4wK4Scuj
	 qih6ot5ygY/Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F59FD31A26
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176837903357.22852.7129856838915685131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa481162f95829bccc99496a4f2ca0ad5083b82d67990deb2f025b16838ce67f
Date: Wed, 14 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768379033
