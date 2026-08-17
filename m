Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1F412CDA5
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786938034; cv=none; b=AU4ebxJrvaaw7jZ3lUNMHY64W3FR6qfcsJ1+4XWtPD78rn0M5vcLWtRgDY/ZvcogjXnXk2h+gtHulxZr/1XKVCmJxfCNC9ooGLz7BGFiNHM/sTKH3QE6AERk3T3+qBVtldER3+G427qNE1i9Yb/Zhy0YMQ2YnWsXPQ/48avSc6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786938034; c=relaxed/simple;
	bh=aFKUiRVJfrR9tNbNeA3MHnUxroWvp9rLhSzW4NgYg+8=;
	h=To:Subject:From:Message-Id:Date; b=hSb0On0Z9sYpxGR7EF6pcaTtNTyt3mkojm9BQWIiq5CE+gJjuf6nnqd6bFCmB0uLTxl5iQJkgsdSQxOdyQQrfJjiPUEZFDJJwiff7heq63hn/TbYnQvZKaQkW7c5ftILBdQ2B6XxLLDfjqVYKIGmNMQK3BK0ckVAQpmoT8ZAaE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJgItAz2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJgItAz2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10BDC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786938033;
	bh=aFKUiRVJfrR9tNbNeA3MHnUxroWvp9rLhSzW4NgYg+8=;
	h=To:Subject:From:Date:From;
	b=pJgItAz2S8ZIPlQeBgeMwG+2wB+G5qkoJLu+HUKfno+5NPLjAtHvxFiji/Wbc0CKX
	 7fJGmtdaEdyJhun9rTvQfDKsKhV2ENorVQFgcT5B9z0i6znGkdVWanpTAoCaAogX4m
	 VYNKh1uM44Qnu1yMKdmfgHBUJgH/yZvaZ1FcQdC80QuzE7Zku2rR5X6BWBqAkBLZxD
	 kmIeWcYyF4Adktug/Hu3nsIk0lmvh0tgt7BQ2DaEiEpmOFj9Sb3Q8LxOeyu23mrZ4t
	 1PaVexA7MKkz5IPRyZZb+ZCuBMtZ0a8f9LVR05MBT+CZWWe5+smuXhGc2kf5O7eiA9
	 p0tHVpMCXTOiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC27CC5DF6D
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178693803369.30265.3223397237980560627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e063242398fb236b40333945caf6b460ab46e9e690811c06efa30204f035082f
Date: Mon, 17 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786938033
