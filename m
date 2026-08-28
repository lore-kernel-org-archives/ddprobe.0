Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69EA435A397
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787895634; cv=none; b=lwrD3eyKoUani9wnken3jGI2ohRyDYeqa00OkwDqAcRWDZE9k1d+jX4E2JYAu0vKs4IsplhkEOIcurSMM8E9YCFR22tVmufNkJphnRYXabVb4SRhBx6BDbpEIcKIP/rguPU5xCkhlhyDrDJx+g0OnkqtAcFQBTHeBtQf89YB21o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787895634; c=relaxed/simple;
	bh=cTFGx67UwX3tuZfwm2orR5ieVa78UibomYG8x32y1cQ=;
	h=To:Subject:From:Message-Id:Date; b=BhTEayYwF8cDVJg7t3abXIHp+idmLADqR8mUGETqfG79ByG9Ns0+iTYrnLx6ZJb0rJKV2LCV20352F/wQv2UTlJ1G/a6adL5M5WbtQo1SfSnb2wmUfSdlvrI/gU/joWRV5Q7EVG7XHAH/7fq6JjYz3prd+pCjssVdX2Z0H8wynM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N3muryXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N3muryXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30AAC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787895633;
	bh=cTFGx67UwX3tuZfwm2orR5ieVa78UibomYG8x32y1cQ=;
	h=To:Subject:From:Date:From;
	b=N3muryXGT9spBbw1MHDF0+Fj9z582HxZoeDDUrlyS4EMoDxE22H4nv+gb1ZfhDNFj
	 mI9iWSYOI2iHvh9UDTTM/S7gV+8igdRIGx2KX1cPnpq24IZ1BhComJHFbyCcXBvdsz
	 zqkmuqKawTdQHUvBaF5KwoQc81D2K0cVhCTeyCXWQIvpt/kv6+tTtszLBOryELHGqo
	 jRmYOmCRPFMVOkf72PP1FnaG1QaV608ZwOXCiMIW5XqRbKQ04Wrh7r4V97fkolRo5m
	 qQOr7dHtSK6HEpdzV12DtR5qgQzX61eyLR7weYnGdVH0BYH+KX+hkx/9SXol7gcUcn
	 6eCw5NKQGjFyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFDCC61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178789563368.24659.17805684699088238664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 411c3e318599856efea5662b6e99c19d1338ba31188a521efce50b72796fefea
Date: Fri, 28 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787895633
