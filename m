Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAC72F363D
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757167194; cv=none; b=glQuAMLbVvvIRsdZCJ3bu5ZUU/hKtw4cq8r+kVSH+ALy7NjwVQDn7GyDwELmSsl1o3hxlFIrCJ3NkziIpdwW6pJsI2MYfJNk6UlV4JmYI/qUrPscQ0PfTk7pME3W6XgJIftnf5gLf+YK90OTX4WsHdL1NFQQkF0SUVJM5WCqbns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757167194; c=relaxed/simple;
	bh=UQ+U2VV3Q75alAqmoNQPP+rBCZ5yk8txpVRfjflKxV8=;
	h=To:Subject:From:Message-Id:Date; b=sF6XDUyWwcGUjbkMnJir4g0wPsBcSvhtaCSRO6s+f8gc9pH7ce8AHw+e9jCQloF9uhQLlbeWKOvNOHCQzhuJxcloCNxObZgMCDf65U2rCPBXE+GWBcSQy52eRNDyuJuhZf1AxdIal2fbdoB/eGNtirQYBPFUovZsvnJA7Pl+kXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ghl6eOpD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ghl6eOpD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F35FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757167193;
	bh=UQ+U2VV3Q75alAqmoNQPP+rBCZ5yk8txpVRfjflKxV8=;
	h=To:Subject:From:Date:From;
	b=Ghl6eOpDZPRSkU2gAAhdJx/OPm6YY6BD0wyNAfADWphqqpbk7aBSZuN9IYnKfN+++
	 JcvzFDR1DjwRJ/uDNuYUjF4FAWEaDbzc1VaVpArlmQBwui7MDX0+pZDtWdBk3yHY4T
	 b8yRnu1GiuaBzwpuUHhxEIvEzUR6boac2xxzhpWL1Q/3YnZC5N6VlU00Gt7eg3vObo
	 58XLBQAejgpb3AuB2izJC9ZNER38HCUI3Af+KGsUJ/AnOWpZP5SZXs0BsOgxlZ2iJB
	 3Ut4eY3FWH0roDShg3HqOQMk3mwTH4ZyCGBglFxX97GVGq3MBbRXhp5zfLYl1lLDJx
	 iFEOFslkxWsJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91566CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175716719358.13116.3311157521629753580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a20eb68fe3d1f54b76bde84404e6d1de6a82f41e6f5929b50220cb2d4ef1e04
Date: Sat, 06 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757167193
