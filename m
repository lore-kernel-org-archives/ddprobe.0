Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128243BBA17
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776077854; cv=none; b=IiaQCbwBgGIHDvB+Zkbj6Q944uKokjY4IwFR+Rc/4bK/SEpXumKBVflh98q1zetTjnZe0e4eBnuluJQyQ/YlNhBSlcmF/6kvw+8VDhPCnu3XHV4QeOcV+tZ/5FSBZu667vlCoP6lSywZlpoKPsFfjF4d3SKGC09JrDgz5HKo8ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776077854; c=relaxed/simple;
	bh=02k/bSQDqYH8z0m2efVLjNqfy7Y1b1RfypvdSxpQSZU=;
	h=To:Subject:From:Message-Id:Date; b=RaoaHGKLkYYJQ8VPlvefGr86cR0yQ4VvytHbEMLNEFubQeSAZmNTPALbXP2v8jmn63FvmQdz4H93hvihNwjkFHulzKvRphDdtO6dHKNxCV+e/eZp2UR8P4KaAGcZuXXsTbM5BDycprYyURNhOtxxqqLoBfKzy1/G0UPNHlze1Vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c68PrOHg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c68PrOHg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB869C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776077853;
	bh=02k/bSQDqYH8z0m2efVLjNqfy7Y1b1RfypvdSxpQSZU=;
	h=To:Subject:From:Date:From;
	b=c68PrOHg+Qq1mzs+yLmtCgoHoGZov0jFZMh1s/UYCNOT4xmjy8UFxWh0oi+9jHoRF
	 f/TVAiAq/EKVIahvyp6EKrGWJYlSBKPr0l3fT982UD0j6vLucXadAfs84m2eCYIpJC
	 JOkrXjLuRPovfScblrZS4jYoz/34wMXKwowRJBYEZ8qKQTPTgt9HWzcosQNLO/pnhw
	 es9CF05QAoLJJd1qoob+oQydMvBpTG8ywW9UnNQhRpKW0OAyg98oHSUk0CfRhFTvMr
	 yG6Tp4UevWkHB3r3QFKErGWx/aWUpEFgeDcKRE56TBD+9wY9+co6BhwoG2bl/RiqN2
	 1WkvSZyTnDj9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB6A6EBFD38
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177607785375.23565.3920728057936079373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30eaecd7c70c752b66025d5ca1a4fec569ec901b39cb3e800e27d354381b13d5
Date: Mon, 13 Apr 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776077853
