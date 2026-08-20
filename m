Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CA1137750
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787202034; cv=none; b=HUQMlrrf5mjBM9WpMyn7d/8GxvIVJZLa/h7IazpqS+t3PJzuefVJYdfVogM7D8fbt+JFGSYssD0vbtZm0ZootgGuYMNzkzAUDJV7hfb3tzKgcq3JdubpVpavIpbUAjF0d/gQhgsJ9p1d+U9nt0lAwwVgAPgXbnJI3BhlBl4eTBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787202034; c=relaxed/simple;
	bh=oSQv7xTcH6sfi9ZPEeR3mvcvBVwl/G7OilXOyOFTOhs=;
	h=To:Subject:From:Message-Id:Date; b=ngovENjSx69o81tmIj/kIypfNRbupKNuuNY6QtFPl5s+px4tL81PQQz7+nU/a3Oe/eaKeqMuGdQWTo0bNyQn1PTYali0phSOj0MHjppsTbeFB16TfXS74HktDCe/kEM8NQltUWdTdEvDI1M69cPi9O2N2541CrZtqmu1qkK/ZBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drN2zHn8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drN2zHn8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A58C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787202033;
	bh=oSQv7xTcH6sfi9ZPEeR3mvcvBVwl/G7OilXOyOFTOhs=;
	h=To:Subject:From:Date:From;
	b=drN2zHn8IxpIheYpGqzA/2G2GEItbZe0f3pGYYJh/pmvT5nPHkZZbsTRj7JdH/w8I
	 mq7Eyo0I9rVAfflVSyF67IZNhBa2TJdHdl0aQZChRTvHOE16EKMCN78t6EjzqT03Gb
	 YvUKx+WtAew+4q0uaBQb8odaCxbbuZI6vFj2TAJH/JTbrPAu5ji6kYBNGAH8jmeXV/
	 sruXsI61SkgPLd8I+D3cR0UwF0jDtYJPVLrxGdR3gyTg2fiFWbCdKTxiSG+JH0Qcuc
	 2jhBCQ8uh1uSwJ8l3xak4MuveYoi0oQAHwwYKVe8VDDxVDEX49LOqwbTChNmnUPIk+
	 1CEbIBeoYTx1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA975C5DF85
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178720203369.4766.2133713499754998623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99b491748e47fd351fa0b6902ed0d8390fb6b3a61e4872dcc39a86ec96268be9
Date: Thu, 20 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787202033
