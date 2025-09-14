Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3185B221721
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757860795; cv=none; b=RlUh1tG0yhNQJvGI8p4Xm+6ggziXbA7jGaJxufLKIP8/vJVm34onE8NaoA1C1NT/Rtln2AgpsqPi5HcnvVX8ARtUnaOJ6qilBaTNoD01JfdUHWEvrYnOVPwBE4xq9FEnTJGR8MzV4aHI0Ez2SpNxhRj1Hk1PP2Yq2SJHnrskkog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757860795; c=relaxed/simple;
	bh=Tq+TJWM/23zEmvIFIrb3wjyt2wlQ9xJsNhzhUY1tyV4=;
	h=To:Subject:From:Message-Id:Date; b=IK4Ob2MljrAq6VYHyt7rAl1oBGtpfqWjFS6B3ET26GtHAepqMq0OFVE/wRrh/Enpz7ANg3OTe4a2WwCMAmSpiXbfqlJL+z+L4OC9dbLaSiiFyCctfsUJU8Uu9OIVM7+QiXexCu1wAZcbr2pejTAuInFHpP0wqnz5nWSdCZPp0Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1PHV3Ro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1PHV3Ro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFE3C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757860793;
	bh=Tq+TJWM/23zEmvIFIrb3wjyt2wlQ9xJsNhzhUY1tyV4=;
	h=To:Subject:From:Date:From;
	b=E1PHV3RoHDUX7uF9uPtViKbf6337xzunMfuqE5966kzHJhgyhWIcV+yiDjqe11DAZ
	 I20lntNJODE23uVPdsZOYJeER3lY8XZDL/nzj55REMNQ4dmAS/bN3Ijg2Waq/QMxo3
	 tToGxZ7so0vJfWIS/7edoP/RUA5rv7yQ/C58c1OJ3EnvTVyNYyIENCZbz6BZkcoJ3V
	 svFI6xZiPEUW/Y6L6nXtm5wk1iSvCwMV2Uu1Phq2vX3XTdjpCYOptXI4L8Slv/Qfiv
	 yirvntoAWBuDWVqU2c2Ik1fqTBcY/DTjnfNwG/AhRnwwaCeGRAWbDuwgfoTD2CTuwr
	 Y19f/4rvclPag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4E2CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175786079357.31474.8187824760519131876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b1e836068d5c316864cc05cd21c9cb26dfaca3a12cdf2e9be7ffd6cc9797ae6
Date: Sun, 14 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757860793
