Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268EDA41
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737436554; cv=none; b=MCntMT8p3XtugdEJlJ0b58mwlWFMqrA0Hs5OptJv6YulcyuMl1LDs0Q1dgs3qBWab0SvVvbhwSWMOfOA1m4L58DjbQTMRk3Prh5AQqCZyVoCTGeGNVpyJULW0eYruUuxFoX4KC3cF3G3QzJuyEy81jT18F6Oly7XZbB6TrcNr04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737436554; c=relaxed/simple;
	bh=ftBz2gKU9jCABEHfiQAAqo4T0gSc18L8+gE0ZCuVXs0=;
	h=To:Subject:From:Message-Id:Date; b=EYqJ+7/jbWFXzd96dFepKtE8PEGNkSJkIE0GfALFlqKyM/tLcKrUUuw6a5/u9qpGYg12Xg2q8Q/FowDFm9F+GMWQBIDolIU6wYamWTAlL3B6jdCntzX3vf/VJCIx2hms2pqCnhH9khDe0UxyybSNDC5aEayuwmOcO9xyCoQiM8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIchYpm3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIchYpm3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A688AC4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737436553;
	bh=ftBz2gKU9jCABEHfiQAAqo4T0gSc18L8+gE0ZCuVXs0=;
	h=To:Subject:From:Date:From;
	b=rIchYpm3YhQ6RViHargrgwYj9ZPBica9+1xfbKlDk+c5CLefGTwvUqbEPJDzgCYVM
	 0BmRC8q55JiStKp09KNuRbTDCWaSaA5eVG6qKK5bobCcQI5VlB+0YAEAt6SHqNtnaO
	 tXhyHvjbppkjg7x2US/ArndrT0H8kCEHTC2IRD28J4azeBK+qvqjPlQAoi1H0mVGky
	 ReZNkiG7h9eLYNCfeJHDt+f3cjQmK+NpLFrMuy89t9d1I7FH7/sgCB4Ip+6YSAcI+E
	 7tODt9DuxgNJO9ysV4hczYb1WiB5W/arHJOeIMmaRkkk9xjrdbv3iZpTlYPALG6G+5
	 96SJre7HaPYSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93018C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173743655359.25833.31963863167716052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 008d3dbf702486ff37b058865c014ed7ec81be6f95a0cd27b4bbd9b92ab96282
Date: Tue, 21 Jan 2025 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737436553
