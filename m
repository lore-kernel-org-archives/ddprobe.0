Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CAD23A9
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724133354; cv=none; b=j4DdJ1sxMsokwY0IhRE38z6bVNt46r44UWGooKsGeCi5Nm3u63G6wzPZaxst5ERE5/uHDa0R38rxQXpbdAtv5MNFPY7gq07nWBrbPXj/UR9g2tdsConVqHdAjfO4axoyMliWLBAm2RmsGaYuHuwc8W1aGTnEGMkAEQ5pet2HBqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724133354; c=relaxed/simple;
	bh=YzIcRAR6lq0ZjCqx8iJAGvzViIFFZDFDeWJ9HfX5LBI=;
	h=To:Subject:From:Message-Id:Date; b=LVtprT0r42kn6lgxYTdEAhE4gYRFzD6crTMIQKFZMIvyPmHnN1ypX4hCbBYSS1dknpKQpJgmTvv4KgJhWvcELlswD7dv1Y32klhGnT7hYmtZUd15vcXTI+nqbyJSRexk3eha+mH8fX5yz7RR10NpI3Iqo6Tv1p0cqQkXazV8mug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aasv/0V/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aasv/0V/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A75C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724133353;
	bh=YzIcRAR6lq0ZjCqx8iJAGvzViIFFZDFDeWJ9HfX5LBI=;
	h=To:Subject:From:Date:From;
	b=Aasv/0V/Vm/TaRMNne6tp5WUYGqNZdYMKs26vQVYaiUomrCobzP8alxHsXpFeUsY+
	 cj6cfgu4Uth1+JSNaPafOXaArt14XnEg99iwewQHf2/2QZov9XIdMDCt3ERxh2gG/y
	 ZqcLOcef7on1zVI74iA3cuxfeSXrpkqpofOhyqQV588mVXZyVG6Qqur0+46kQUkyXk
	 0Fo4jEj/mZiyy0KPdWy1eYexETM8Uw1Or69jPnU1ilCI1az5ElgeglyuV/9mtQMess
	 nUUHL+9X7iAmRHmFd/GZip5vl1o5kCnjNQOBCyJcv2FHOgdWbFCvAzt+V8wzVcOAsC
	 8ONYWtNguT2pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5957C3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172413335362.26067.3778933521573336321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 882dc240e10259289ae0423236943aee561490a635f0efd8a0c2484d5b648a50
Date: Tue, 20 Aug 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724133353
