Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDC41D6187
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750342794; cv=none; b=n3KHcvcspLtL3uxd8QhdLuUamlp3MLtlzZdfNBqtoUIqpk//WnX9nFCI+Y7gFS+d3hrxdv9B/PGNCt+DQfAfwvKId9KeT1Yv/WK9Cxnj/uTs5Qvr/a+ZBsQVQSx++ZFlBtv9RJYbWzXOPFBq6ZxOlGLAZM+f9c3T3uyiyk37GL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750342794; c=relaxed/simple;
	bh=roWWu+mG15frDxW+Z9KNzwGWKFhPXZKBd7hHEHMLxlY=;
	h=To:Subject:From:Message-Id:Date; b=UfgkYiIZ+fXsqmsw94la8gl7z8APY16jQ+zDgKDUtNPcJhSqmrmwOFxW2F0JPIX3ys4DRlbBRTwrlk6XqTGAuu3Ztu6REUNuDMPrOiiVX1VI1DyWWFDlw80eoJ0YoO+a+znHWwCj41LdWIwdoGHPNfTkiUFDYkrkMvUrtBacgGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ki5WaXS4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ki5WaXS4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A855CC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750342793;
	bh=roWWu+mG15frDxW+Z9KNzwGWKFhPXZKBd7hHEHMLxlY=;
	h=To:Subject:From:Date:From;
	b=Ki5WaXS4xIIhjEmX75URlZdYVqFHD3ZLjorZ66LATgm9Kk7KAx8HqcIdaS+kj6Z2s
	 L6TVV4M2IZPsYioSqFh0y4GqVzf+5JQ87tJ/DhB+X9bcOTPQmIjgusuMl2i3uK9v5V
	 S2PRG1Cf2DMAdUOyY8+BOI+zyxRvIIlttR1fjpnfrKjAka2CQFlxLKWjVVyTr8l6hq
	 Is+4jJlvp8+/LdaIRQ5QZveghWg0VIb1RqBgWmONb4jd0SwV+KVDRO6mMTXstUDkW4
	 6rurukBBKb4ijAC6YdDr1FBGnrGx1fuipzGVNO0ZwLRlbryJXNWOZf4MvuywLZoOlD
	 tTg6BEpp2MDhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96045C7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175034279358.23350.12597218678163246326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54a5ccc7d880c6a8a4455c3031527f62aed39ee71baa1710d1f549363706f60c
Date: Thu, 19 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750342793
