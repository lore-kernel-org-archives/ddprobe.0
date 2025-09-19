Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F852D592C
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758319195; cv=none; b=RIPuqvKjbERppjRWVpTFZop0/22waxgHTkNltnaBFwgDJC0/2GlQifdX0vC1Rmcotl+qaqfAdv163MBEtgFSxyVW1ibfCgw7DMXM46VDvd6bAnr06IGvmSJPLocH1PzP4EkYFc9OiDG9z40L9gmP04PGpNBGiq1ls1zrfHsKvuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758319195; c=relaxed/simple;
	bh=qrFqUhhw5yj6ePWSonGqjFUO0geG6z9OHXjRLrrMGKM=;
	h=To:Subject:From:Message-Id:Date; b=JzuOMOrGgVmLi+VM3Rz9Si9az2kJjtQB84k6yvB5OtlIqHBjtdkeEjSqfIwUh5ndtTimCK8xw2TgX90H/Y7ZWxkU7DPRlUFUieE2DonWTrZjDUDTe/H0I8bXM+sl5Z1snAPrQnB76HEkwitV8y0bDoEhlYDWyjbk/dDh9LtMX4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2FnqT+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2FnqT+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BB3C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758319193;
	bh=qrFqUhhw5yj6ePWSonGqjFUO0geG6z9OHXjRLrrMGKM=;
	h=To:Subject:From:Date:From;
	b=r2FnqT+S7BUzm7Cq7G6FZiRg1mhS7un+h31NCSQvCOiOOvDWZl8B2WLmXe6ytto1X
	 m2ujcQglGoAH6Piie/xfsUAfiIaY05W9CBHPpr02PQapzO8zz6AGg6u7UmArokhhfL
	 u2nymJ+kb1giJE93A5v8s/D+N7qyGg7sx1V8wZv+0tNebiSv8wN20aGgD7Qlqg9UwG
	 UJQ/y37z7MtlCqIMDTMh6no1I1HJ7W+CSvmG60j9kwcESA9JpM0B7zDENcwTJhZVe3
	 uOrbKEV2pY/tRk8n5SLWk8w9JaQzWwll6FIrNsIMpYTdTAJiDKbUKOAfBVziT//UjI
	 q4C4CXCKfjAbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EE6CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175831919359.10710.11422081848051642280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba6027d2f8f22e5aef897fb4422e4c89200c7bf24f8ee05f71e2a0c909161e6f
Date: Fri, 19 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758319193
