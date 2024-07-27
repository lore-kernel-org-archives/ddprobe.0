Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0FFE18643
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722112554; cv=none; b=Nuyl+58T1EHVPp0YIsdQ6khTCcpDafesoh1RfqFWPsvbLO3SFkJoWoY+l0ybIYAnc0cr/Qcb2SsakXP2QoLjPbLCe4sRndNt9Yx629MRQ9Q64lCJmBYQIVoYc9u+qUtSSJaf6md7DmCXjzHeqh9VijyOOCWaVyiYzG12OO2z5tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722112554; c=relaxed/simple;
	bh=TmM7jg8qqfMa2hMMdyyt61OKw+u/GU7oIIo7Vo2v/Jg=;
	h=To:Subject:From:Message-Id:Date; b=HTWURQ6/TDLAJKlp5qtGmS6LgEa+sYbHSvX3N0AA5Mrb1d0LJHsOzEBlucI7zAdoo7ay9TRVlFiJrhdpxLoDe9B+raUSL2QkTLsRuuwwUYg3hyZ6QXBJ76T17cg5/u5sFCVLS7DSWhCUx6+F5naFYxBqvvtLtZw43S2543INHTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJrF0PpN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJrF0PpN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4098C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722112553;
	bh=TmM7jg8qqfMa2hMMdyyt61OKw+u/GU7oIIo7Vo2v/Jg=;
	h=To:Subject:From:Date:From;
	b=EJrF0PpNb2JsTMqtZC+cxI/hDPimj5MR/HGiMnnUecL1T4/7LrV5nVWQax+09Ps8V
	 NX+PDe4XOZs4wRbJkBZtoTiGUzUPK5Bji1k6X32X2naaVKcRxGtSFHvAgegdK9r1C/
	 N5b3cPEYR2i2AXbK3UYIJpCUtlz20XBpYAOlny2o17pGH8iHChmqvrtehFMF7Jd0Gw
	 u8DOWYOp6nC6Yyf6zIlfFfB4kCQj3ss+z8LXSmsZnn0FMwHW+bJpxfj2QqO4b/hfC0
	 aJJkLyPTlzyFWxDEkWzVIevpJhxMZ2SG0TzAfsjo10LdBzuGnd/i5jv5lf07ANd7vg
	 jzElh5bx97M8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED85C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172211255359.11592.14120265483859777464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f248cc5a6ca8288b3f57320781174b92266236e1b4a615910193ebb37539dde
Date: Sat, 27 Jul 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722112553
