Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEC426E165
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768635834; cv=none; b=Z46FsjYiof9ElOt0dAdYNCgsZ5Ook6ZenOBO7xPMSrVM4g43kDF2m3ehTrhAbATEZErmhaZSK4J8PvPKcILpTM01qfkNTLORPapczKV1RpGr5zckM9rcf6E6hJZK1NUP33blwylj2TTzGYiJ9mu3mwIDWcE/trcU5TrnzQDe610=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768635834; c=relaxed/simple;
	bh=3IRcIDjLhd43XaSrGD+Z4KxsFiqwUgiK6x+MEnEJKN4=;
	h=To:Subject:From:Message-Id:Date; b=IA9T17xuedFZdbIKxYVZooISQSxrS2g5AGZCm+aoNRnIpXcFIhdu6aAxi0egSc61hTifsRnV3f3GOMTw4C4UHshD8/WjvbZzJnEh/16/AdjNWeiJq6cdQUv6JoddttuLHENZN+uRFFc75wj4WpwJiiy7/5rMgomxKVBneJR7OII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vg/wluOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vg/wluOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7124C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768635833;
	bh=3IRcIDjLhd43XaSrGD+Z4KxsFiqwUgiK6x+MEnEJKN4=;
	h=To:Subject:From:Date:From;
	b=Vg/wluOV77n4HmMDnrPcqZSqQboOomD+XH99w3pb3GaZyRzRDTpP9yflPVlCV8bGg
	 VP7SxUN6Kfhb+9S4Vtoo7ukdehm2zrLZQpx7aIOKcqtqjX4QjfXc/jIyqYTBBtZHKs
	 bQ3D1KPauRB0XnzhLCN485eAFqxKVhvsr79bOHdbYJY/Q9Tr8JZ+BEPNAEz3+gvcxi
	 U2p2Lwl1ltdMVR/UQqT/Tx7CmKlPGP0E1dAcgam81rmM4jUysXb5Hi0at4wWyqhDjj
	 jZx/IIuERgXmc/+LVHZOtEkovJNALzk7OkKRfyehlbcQVcJseClZDBZiypef2zZf+f
	 YeC1hMMjor5AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95908C9830E
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176863583358.14253.12582282428205292329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e6747dedd7aafd976fc7d4c3ffc4591fa6281697e7afda350a56f3ec8637ac1
Date: Sat, 17 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768635833
