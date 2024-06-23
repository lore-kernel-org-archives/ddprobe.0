Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69179DF55
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 02:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719108143; cv=none; b=lA4yNMyRjGUaIkIXibUXQJTCYz7Fnvk5tx74EukjS9eikkkrcVU0uKNtz7ZHIUR4ZbML7/vqpQORP1KxZf58aPp5i9SPkcWmOrBhIidEuyWJiEQ9LVow8kW5B3Cn5IOe4qSBH0A0vzSIEuowuLy6oZjlmo6mNSnHe9sYDvrLGIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719108143; c=relaxed/simple;
	bh=cX2ZQNXVGF/g1I4ZFhOrNQzBLkier7P7brsInH0irNU=;
	h=To:Subject:From:Message-Id:Date; b=H04wHbm9E10H2K74NWgrHqD40V7Dm1BV1Z7L5RSeUKaQMekhoylXWSrGGlLPoQn+0VaLcooBFcKU/Uyzc6+u3IV2Ca4y4/cyqgeSn+Nbbqli/wjh96pJ7rooxD5JSbB4FhkH9LfObnM19BY0gX2Ee6h10YqN6xw9REPGIkxqo7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ucy/N3Nt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ucy/N3Nt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6836C32789
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 02:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719108142;
	bh=cX2ZQNXVGF/g1I4ZFhOrNQzBLkier7P7brsInH0irNU=;
	h=To:Subject:From:Date:From;
	b=Ucy/N3NtuXsxsav2Lw1YFnniOUypzvmKZQtTcmkpsCeHmi3DCavcFvzChFSZ+/Cl+
	 m+K4PlSkN6rmiznqH0XUY1AfFmIyvAVd79BcJ95+t/d3fQTVFfHJMlrI/bn5LKTdiC
	 G6d1uF+IpS8ADgRtd35S8HQbMWYMNHFC4mrCAOGbk6udApQPO9o0K3NdohYmuriI+w
	 w1oQHTU6eVBnu6WDy7n2sWncWyPb5JWot5IYhyJwae8KdqLQ6StlP0WS9qK2pZS/2g
	 K77qrTx0ITh4Dvkt7/e5O8p6nCPRsbYi5KvclHdYP7AAMLN4J1UGFeJlZ3Dshdb/3w
	 RJdl56KrEUugA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B0AC2BD09
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 02:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171910814277.29685.6868771528506953489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e809f2fd731ccb7d72e3e4de2ed358834450a857364e3d63c20ba32ab3acde4
Date: Sun, 23 Jun 2024 02:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719108142
