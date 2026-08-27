Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DB603C4575
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787788834; cv=none; b=XtbQxBhwNDPgBdnIKXDQbWsCCLupEM8q0MY6HM0iW43HKY7Pk+uKwJMYNTXQgcGmN6xjZZjtXlNH2pGBOoig1RSXdeE8HSWvHiBGL8dIepZy2ZeKZVEm5fpxUcWW96H92fWb73zTw+Xg/wT2ZpjkyAgMjMdTUrktPw9YvIzeyFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787788834; c=relaxed/simple;
	bh=TBxLr+hsf227RyXifzg/FiALBULIjufW/0KNvU84zX4=;
	h=To:Subject:From:Message-Id:Date; b=kuAQo028Z6QpMu8lmkfHogeAlqg3a9e7lN07xkx3D+bSkl1OeTf0MBaPG6um6nOyD9bsq3s5sZt9PX74UaJ5/hCwk0SwS3GswqpWmiWVXFuITcgjvRoXOuQ8KUPjhfm9JM7f0D1e+I3sugQLmshqxmAtbtiYS5lOwZMbZoIqAXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFo+sFQf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFo+sFQf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27DBC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787788833;
	bh=TBxLr+hsf227RyXifzg/FiALBULIjufW/0KNvU84zX4=;
	h=To:Subject:From:Date:From;
	b=QFo+sFQfk98p6XiflTKWuxeNNdJF+sb/XMUZUOK10y0FGwSOZ9IDaWBZVtX01Ke0h
	 tDtegeZBuJp94YOHLz0WGRV2vmgTi9hpcOg2CnVPrXB7Uy8U370hXQTCUUjAbpQjVK
	 2op884p5BFi8bn3+qy9v0+rROssXKJfOKb2DK2Dqtyty8Wn7GwemXbJJi95mJ5HwQk
	 BTlUGKbXQsGTYLJoxV4uXHJscUoKR0Oo67//Pf1fKpymzETZYwBh8myfFuZgp4/iV+
	 JfJWyEHacLnD2deJFNrawubz7VtGu5yqbYZrt786TQgaRGSRA8UwHGQOxM3qWQaPly
	 hdnbl2hVsAoUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF57C5DF97
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178778883370.5103.13178273965637714037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c2cb0c7242b088e3c39b0815e47508027efaa0d7e7fba113e9034140081480c
Date: Thu, 27 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787788833
