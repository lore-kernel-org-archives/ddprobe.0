Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E682222D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759607994; cv=none; b=AnryDsEzqXWgimSpDObpbckkpx4ekB2LPxhJQ41ScQkrVjOfM1ex13fBSZuL5gWkqrMQFNVfybnP/+5ptj6U5qgWirK7Ek5MxFOtuwGNfOS5oeGDGx48L0Wea5Jmz/lpvN8x2ew16SXE1ZZQdZFzTMl8KHIXySesuxZGtb1aGrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759607994; c=relaxed/simple;
	bh=lgRvUbrBUsA59RAwnFR/XOXefann8xSQa1a4002fJ2I=;
	h=To:Subject:From:Message-Id:Date; b=qYTcj7fApnA4FG17tozO5Ni6fme5Iwzmubzy7LpgwZr/9QWUlzELqteu7GSXKMP1eK9TMIrVU9+famJMiUdl4cdG089yokVI0GCJrygWJQRTgC4VTzrcMXcqWPmwfTbH9/2dcLOiV+i0iS8NrtL9/RlwZmwjSLQC6fDVKigGgK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RD1iV1Dt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RD1iV1Dt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E1BC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759607993;
	bh=lgRvUbrBUsA59RAwnFR/XOXefann8xSQa1a4002fJ2I=;
	h=To:Subject:From:Date:From;
	b=RD1iV1DthToeQTmyRzAvg4TMLoyR8ndSD06/Qf29QzMsTshGBTjpoeLR4XXVEB1P6
	 utcL8Njg2UMHJ7bfwdJM7N09Uhp2lMMBcQ/8tjUEBw+C7sW/QjGeHRRtcRr2vbblio
	 l/fe+DV5aFWsQkmuTZOmKGcKz8aDgvAkoj9eQHunJ0tNNONcFwPgMbng88V4bxVbZa
	 Sv7h4iZ0KqKT3JGZRyyGyMjyK6XDx3MyKMT5Z+eXe8t7wm1MWRK37/hCs5i5sgQoY8
	 gv6nEtoWCmhgICp964G8S5DMuURtpkVpqg5VUAYurvRxiS7K7zt8c7i4TSKAOLk/Aa
	 YTvyfwoGOHIjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F004CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175960799357.25776.14733890078109574832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da64c2072ea51b77c55e30c6b05b4673d37ee8ccfb18b74055c3fcac93b91abe
Date: Sat, 04 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759607993
