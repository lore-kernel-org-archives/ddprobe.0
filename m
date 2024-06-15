Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7874F16426
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 19:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718479703; cv=none; b=uIttP3RnaIpPm9DDIA+CARhBX03dH3zzChhUiS4c2dU9ZVe2ntrVPd77LYNMCDa0ahQs/e0ZGv58QPWOIeCUuK1NRV6IAOP+xYciFTO4B/cIHt9CZwnDmw94T6F5kpyrAyBjl4a3RPbxxCHn+lyw2PzUutgzMZUae9aQ0Izq3HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718479703; c=relaxed/simple;
	bh=kso0Dmr93saDhlhzmXZV4cIvG4Bc9vJoQyH65z15J0A=;
	h=To:Subject:From:Message-Id:Date; b=XCr3QIsLcZd0gSJKmf5ucqvAbhhZG74hIlxjGk/n/DXEo1a//LsBmcTAxQcQ8AaG4QQNf/MoN56vbzMffY/FJUz57AFgTOFt+p5HeY4QNar6rHPn7RwmpjRnGzljkKa8z1xHoXGPykopIOY98vHWOylJHCJ/dVSCbZE9Zck7m9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQgmfeIg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQgmfeIg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E724BC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 19:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718479702;
	bh=kso0Dmr93saDhlhzmXZV4cIvG4Bc9vJoQyH65z15J0A=;
	h=To:Subject:From:Date:From;
	b=jQgmfeIgTP0wz0H+nwc3NPMvhuVb6BmUYFO3o1eCYUWREL15q35iXVuJgpUCUgR5r
	 qemWB2wcZR8JnFAF3xlEGqq0xxz7v8d5ZBzXK0s+/u0lM6DDoHxwgGazy+q2zdGC3S
	 UsbY0cGp6c21RquO6h3yORAkVl5syzSbiOIZGiIzOoBiAd0kdmDzrdtOWLuaOMFgZK
	 hGqUFlEId66xrX/Vb818ITzHy0SYmKgDn4nSD5wh0jTsyCK7YcXwRI2i4o8Hi4jtoI
	 KprQ0RJlSFrsftcDhWPD1JTqkQGW9lvwQbQbtf0m/E9zXRh5MyFABPCDGmqp4B+PjQ
	 v/WltlGSRbzdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1582C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 19:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171847970284.32700.13138350602498087138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25cd3c19f28a0ef3b0fa45c0af4a087357d3647b95f31647167be0d0c7f8dce0
Date: Sat, 15 Jun 2024 19:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718479702
