Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B18A3E5A38
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789541434; cv=none; b=lg74B+olJhbSorRl0XU8ifaOuJzHt/ikEb78BbCxeAwB0orNl1hHvJ6lTrYaXime82yHm1RF8G1pqQtrhQWHi7uLwofFUMd3vVC4xX6YE1Y2GjZjUMxnT50pSa9yzO/5Fs3XiZBFqUpkjKvzUaWUejBKZuF4fmq5qJ0x8YeKugg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789541434; c=relaxed/simple;
	bh=4TMQvJYDtLnIotyGctDVHXYHGtsmzjpRK0F4ovkeRMQ=;
	h=To:Subject:From:Message-Id:Date; b=mRgMOJL1irsg80CQ6rWIjrIDOW6j0XPokoMwDe2hvX/rhyHXIBuBJAot0diV0U9s83iF+rcrT87ZmLu8/VwPT4N4kosnFkWXP52A+IpEkeBl2KmtQ3Wkx3uCIyRn7dBxSTeIXEolwu3OZQ5iYPiyaGzQ3xDNl9Cq5cUxHWDWlQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tV6i4p5N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tV6i4p5N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1606C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789541433;
	bh=4TMQvJYDtLnIotyGctDVHXYHGtsmzjpRK0F4ovkeRMQ=;
	h=To:Subject:From:Date:From;
	b=tV6i4p5Nhceu6rTkbhRGhVdP1XShBcE2Kw040idR5TTbvvJUnZJMbT82m0FbpQUJ9
	 O3YT78g9DONW3ilGnJHzpGMilBPj1g+xwWA+SX/DVeSD9ZYzYjvjB6pTFPDAcV+2UO
	 DZD8NmT0AKNeD4m7i7wlgWxJ0ngHKZOLbu7l9AuVvQVhV7AsUgbhpUm4AwazovYXa4
	 ByOm247ONxQWHzK4y2jTnjMmDqESsXTusIaBZHTcPj78FmsBGD9YCPR/cBuSqUbFUN
	 ztZsn8T/OdhGGyDG1QJ1rZsaUyyJqopJxWaU281I9XrHYjViaCNhVHrY6PV0iOmFuL
	 8afsGPItixqCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC86C88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178954143369.15054.10712450642059752822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e6e5d679b653ef8fe93463affc7cae09a28b8fb377d7d7879d925587eac2999
Date: Wed, 16 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789541433
