Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C101CAA78
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769987034; cv=none; b=DiDccooK7xIJ5cxDJ+iCJXPKnCLN7xXRFOoby4p1Fy2/cs+79pIQHmDeYvqE64fEDBH8Rk8sDB6GXQcf4AaxWTJCFPzPINIlhVbnjkMmpy8hx/uxtwOg5W5QPoUxi0DTB1CO3Y8DUWe39VPdZ2xyfkmRN34KDWM35u7GYirNE5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769987034; c=relaxed/simple;
	bh=ZCHLLAXErYUl4eoV+uXSg7N4jRU1O0dcilOUXdAbXgI=;
	h=To:Subject:From:Message-Id:Date; b=emA+dQxd775cp89tfj1QULpPwAQWMcltZ9vSPPwlfNh2FsVPhuQbWvtf9ox/LBHBXxEzDbzGWB46VUSQjG+dZvXYXrYMTKwupkgs2nfk8uxaKO3ZSye/c0TL5kH9jMwOKksKfU3BoL/y95YOa1Vtek4EGFZjc2xCeDGVDI4gpWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FU3sEFag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FU3sEFag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E33C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769987033;
	bh=ZCHLLAXErYUl4eoV+uXSg7N4jRU1O0dcilOUXdAbXgI=;
	h=To:Subject:From:Date:From;
	b=FU3sEFaguHqxwfkQqEIHL7oKQS+iPzGFzknLT1KF/2j6b+MQysrLZMPRaKdoouE5+
	 AT119IxiYq7Yt6ObaYi8/joQN+/kTGPxpSnEvzGcSi1ZKF2kabBwl6qtWcQFxC3GN+
	 Ze+cdTJSrPyIWQ/BF8+t5k+9SdCmzLjjR1cixt5eR+2iq4FSgv+huNosMTQGlNfdhu
	 PobIsoxo2jTBxdeMngCK4llnEUm1864TXgb4AMHfzGcoMLUGxIbXsloDTybw6NM59m
	 Df9XUNW9TOB9dDDv/Wju8xFlYxg9ZQ1hP33D+e3IKypIgYTW4Mmbxz7KnlPNBEllwp
	 btG/rAtRNvKQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97624E6529E
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176998703359.20011.17244883342929907270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feff32b53fec56c330ecd46d6d3c7a9878b1acf58085e07cfbc21b6346a52399
Date: Sun, 01 Feb 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769987033
