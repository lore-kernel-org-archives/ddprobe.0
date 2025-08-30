Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194DF25CC4D
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756570794; cv=none; b=Ly2hW67myoKTOyOrS8uTmLuL6IZ1MVuzOpBh44X+Wt6H2R/4Vl9lqcWCkfQPNvBEwAwyYgbvDgHEbK2uJfYYyu6lruRLrf26GVsYTx/vo/QYw3weIuQ4Fv2JizBetrndRU3qOvXFHR82th76bE9+iGoZm2svhatc9cuXjmf9BqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756570794; c=relaxed/simple;
	bh=xVRzjdXSGsvx5e8L1hW4i/pJZFEkw7hESu5/AWStc7I=;
	h=To:Subject:From:Message-Id:Date; b=OVbOFNHBLtx6+iWG8xr8jvbBsuM5Rfj7En6ljOIkqTyj8o68rkTQPlNvdRSeUUWSucMcR34e5/u4NR8nOYPSghY8Ozy2OXFjRd7lw6cEq5vpit9mi1hyB2cRrsqjM85fqIbYApskp23h+Gr+7UTEhKX2E6A9yE1UKCYke9kLzTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXnPM83k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXnPM83k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2243C4CEF6
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756570793;
	bh=xVRzjdXSGsvx5e8L1hW4i/pJZFEkw7hESu5/AWStc7I=;
	h=To:Subject:From:Date:From;
	b=ZXnPM83kNdh4ioE4G5tjSUcnqLF6DZTgfflhongWxRKQJ06j2T6hNkqUv2xmy1r87
	 3I0MKkd7OeeNObiTpqWX04RMm82OQ+Gladtt4zAJUhaZ6HKzJtiwZgofW/zAp6EZjE
	 w8NbPYilLW9UCqpVECDZ6r/PYvRu/Q5evArLvaNPPAxnl2lxZ5cotJ4zGQoD5VdcDB
	 U5Tyxab0hwevYNG1GDL6by1CrvG1Eya+GxNXkZTh2lzBy04FggML0fFJsQIDo+scdh
	 UQYeZQwm7MS1y7xlWnB+19LyYt1Y57P2Pa4uo+cwkELlfqfbOx0I9l3wiSD+UiLROY
	 FPr3mQZk3sKpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93659CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175657079359.26999.2140153086612071328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5b8cb46089bb07ff307c5c01be34c82c2693f20df29212851bf49655b0f3a5
Date: Sat, 30 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756570793
