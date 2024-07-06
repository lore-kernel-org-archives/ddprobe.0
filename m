Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D61328FD
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 01:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720230323; cv=none; b=SxJoLOjM1zNQljlTHZHnRZMXsseVliMq4s2PwWEnd7kjDgkoM1vSjP56w7UNK7spx/9Z74W8bjUvSCfIg1vYfbZNRLzz6stM14Z5psxdAzDkPnCo++subTUOWM5nhCDiyk4VYdUJfLXLbn2eVAfURpkKmPcOZTjvC/IsQzZmk1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720230323; c=relaxed/simple;
	bh=q+mk1EV7FESC+nUsiFmEUuUWgq3qW70OumevUo7Ddy4=;
	h=To:Subject:From:Message-Id:Date; b=Z2J0DGtbwDAARhT1EOIirLSn41kVBWdL2ECabfz2lLxGpvE/gZ3W5RymR65+1Q/dPUhJg7WcedAjdIJJD71E52Fsip0AApzgiJodMXN1LlzMPJYLMjwA+ypJhXsFS+3cS2js5d25HdCM7QdXNKwAW7wu2EgTyrIZDvvtNQ1fBs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yz12IYkd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yz12IYkd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECC83C116B1
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 01:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720230323;
	bh=q+mk1EV7FESC+nUsiFmEUuUWgq3qW70OumevUo7Ddy4=;
	h=To:Subject:From:Date:From;
	b=Yz12IYkdmnQ5WzEBHNfNVeEI8MmzrRv9pvfQhxLaxugo0v0QjB+45ZXAHFVC3AZY6
	 Uz46kafcNl47DYMqAQET36kpf6wbC/NAmTZjerAun0LvUw6GDziCSLw+ocTR6fOMYk
	 4piuiEZ08huaQ81zd8KOxnYfLD0gRFrB1Xx5IEnBaTPSkOHGXQryBVlEzO+IzMXFmK
	 gb3BI1DPRnVGA/OxYdEO2nxYpKVCKNtBdv0w2mrJzfvIfNLRLaW0gxQ9gOQ+uWfNxz
	 fQKE+OuYoN5Kc4nfgXbbqoVHnrBsEHaWJ70xBiOJvzs5ZOJOQRvFApe7r1+QYm2Rd/
	 FksAL/duEuU3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D555BC3271E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 01:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172023032284.21953.17326582764364321953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6fef73024ebe1be04a61ed6cb1a6924aaf86551ee018606b1c05535a62a30c6
Date: Sat, 06 Jul 2024 01:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720230322
