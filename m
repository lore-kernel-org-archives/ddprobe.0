Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E45A55
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755907794; cv=none; b=t5YeychUhzs77ehVv1om5Lr7N8gYFrABA2PW8MCkf8EIIi/IFp1AlsciPZWxu8gy5LmOWOCh6f9klth3WZJdGqFT3vU1CJd3J51LCewU1fvJUfJoAhigm5vy3tm0h1LebuoWBXHIYABB5ZrMfpDlHIS/PmBqAsyPVhGGTpHA+mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755907794; c=relaxed/simple;
	bh=3DgjRIx1/riOJZc3nwGz9GMkmMa3po8CyIOc8kZrpbc=;
	h=To:Subject:From:Message-Id:Date; b=tzYgHMjfDIs2FuW8ZPJ3mpOBb7+p9BEsRdKYYnrLzkLYc9Mi1BdvExz2P1QQy5DNzo0or/56DLV6lA6T+GPcTlxYTte2YvY8HVPWzhwY9RZxi4kIuv4VyiA5RhTRzUfGNHAvx7bLWtzHUQoaqeqFeCOhGcJ8rFtuEwLuXKY1b7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XmpkQ5K8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmpkQ5K8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A034AC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755907793;
	bh=3DgjRIx1/riOJZc3nwGz9GMkmMa3po8CyIOc8kZrpbc=;
	h=To:Subject:From:Date:From;
	b=XmpkQ5K8w/xB5V2o3YkZIrCWESqtnJy8Gtzy0Bin2lF0JsxlDhUMAsGL7v7c3oB1U
	 pvjeaWdsCBwAHi4iIA4+/ewwoUSJa+HVgWl4wzPkrVQKVO2iaAkRYCeDT6HplyLN3q
	 4Djlqf/nhRKZCdbV54I2e9Tp9SRy/RxDY31ggqp9yFmEnZRX97BGJqkqZ4pEK6zvXr
	 fz6exhtSzDc0N6sa4WDbpu+ezbO614WZVq0p9/rki9RLzkkGKGPt0FaEg4WtUc1HOz
	 la4JotnG0mBFKJdazsUA+GyIY04bp4JSPXAcGFZDAwebtdchUQop/VhpZtNB/F4Tox
	 7n4Kvos8XlTrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918E0CA0EEB
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175590779357.20743.9885710761078624010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1aecbf127a3c5a80e8f955fb4385c9d4c73c35f02df979bc4ee23b6ea30d5a0
Date: Sat, 23 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755907793
