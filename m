Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5046B4084E
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 19:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719950123; cv=none; b=kvBopNFoe2njTUWV0MKuwh7WL1/L1dSGBnCecHwBE76obhFcKpE6yhokuMyb7yfATDCnW48/bWPMLNY3PSppKh1EnTNv1lOHYXwXRfjj6/gzHESIXFFP22QtAGZqziz86mkMQWMmC6VDz2C7vKMIw/ideGo30+XEADyAfi4xtho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719950123; c=relaxed/simple;
	bh=Ayv500UjcVjU8UVvHwYkBs+HPQ3EUIZ5QEYndzPR1x4=;
	h=To:Subject:From:Message-Id:Date; b=GC4OTVfSui/P8bTPZXKvKPsebyYLqRZEkPtJh7r9NL0CyNksfB5kQkWtF2ndzQMofzCUs4zrXDu5ZVidI5Uz//qlhtgT4ntrdTohDkj4SeqsZL8XiG6auwriLdCo+U/eBnfecpOC7rdhuxMmMPcAj2POOcioivz8v32rnF3/6xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWAYyCj4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWAYyCj4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3821C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 19:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719950122;
	bh=Ayv500UjcVjU8UVvHwYkBs+HPQ3EUIZ5QEYndzPR1x4=;
	h=To:Subject:From:Date:From;
	b=AWAYyCj4zbjrp0QI0w0qyMJd3lq/8R73ACPNqyZzf/FwtuR2s24TiHajPlKoTMaig
	 UwV95FPwbucIpuP65ts9r4v4r6CgNb+YXt//Oiw1bJbXGyzj3UB9eB4nZPQk1LbMV+
	 +z43x/SWepKQ2BcZucwECqHzdHA3VAbKgcpRbHICHWHWh6Qy0g2yAzfyxlwiabRoEN
	 Iw7cFkrjPm32dpeUo9qbAR1Cys2GwM+Kj5MVCxQazQzRLlKI98ug2IXA61tDafE+9H
	 sZSSDsHCW4XK4mLqPwmFEio0P6/nD46uuWx4iQOo0dHQiI/YT2+owlqzKWK4yaJK8j
	 UKeyYES8O4nSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C246CC30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 19:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171995012278.8872.3842205801856234523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6510486c8f1819c9e86891eb47df7aeead0bb15155dc174deeed23da7bb5f982
Date: Tue, 02 Jul 2024 19:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719950122
