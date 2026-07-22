Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D7E33374F
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 06:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784700514; cv=none; b=e5vMYC97OiNv8ATN1M8H0zIzL7UlgQLJSBbP68ZIDjpJ3JF8LRH9cyq+za4gdp5x6fK7WWNvXY9UqG4sIDLCVPSvtIsyfPvlO7qGoXngfJgY3/ua1Ycz/5crMxRIWfLxrdZLPgb36pHvIDc6lhX3iplhgP6x6LMzx3QYL3H2D6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784700514; c=relaxed/simple;
	bh=ErDJUs+kmzCRBaqfYJU6YRsQA7/sKDywo6ReMs3kvH0=;
	h=To:Subject:From:Message-Id:Date; b=M2O40Tqy8Vm4tMq/BwtGtHJrk7E/P5364Aytl8WCYHZK4XMYeEcA36MZIbXzcProY0Xs/EZb56LiVRL5hXudbbCcxiYhcDq4sSp4VwoJAjtD/MZels/Yj8uBTlsGCPsXM/I0TqYK4hyrTuw93Ba4efucl0alsUABDg9pBeAxey0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grYLo4n9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grYLo4n9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE5F1C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784700513;
	bh=ErDJUs+kmzCRBaqfYJU6YRsQA7/sKDywo6ReMs3kvH0=;
	h=To:Subject:From:Date:From;
	b=grYLo4n9nqgMH1O0vDjY25B4LsJhREQ9sKBoWL5Du6tc8TTFL1v3qa8azN06anFTd
	 zfKW6uu0c1MBoiCu58GjJKPT7Iw+bu5Fr+FLXGcwxoZoeXwHRExtek5pjAlITV3kQc
	 UEigt6LNQ/OLpUTneFZ5wASMgCoR0rPkCWvr/tdu/7aKOPp/Wp82we/PbF41QjxECh
	 lTIhbetXBXbUSpGDQm1jsOS7bT3IZkckt8zkcrXsGDeQDqT2Thm92jVfIPuRmd6MvQ
	 edHN4Rny9MTC+hAlgEQJs/KBuANKe3NDx+A44fxw54eRfL0+MlSeFFuaQLKeCZIjdU
	 K0jtbp8KiZjHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8472C44512
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178470051374.3470.17524114891148290399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f69d07b2950cd1014b28ab19f6c0cbf7c8b3d07cb2c1839ee5248dc9c17084b0
Date: Wed, 22 Jul 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784700513
