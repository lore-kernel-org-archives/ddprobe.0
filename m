Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AF910E5
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733012754; cv=none; b=GVGi2JSlaQJ3uZfIO9jf9Z8VxrJgatfmr35JIEW//iLYFYxtXkJcDqdNqMPDvelH22Mz6swZ0fcnfQJEDAiRZSApEHsVQa1VXn97YqqvszFQKgSeLgZh0RFjxCeuySZxF7+DRz4KgFyH9+FOBwqia+0uieDosgh5ZbVfwqclyBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733012754; c=relaxed/simple;
	bh=U0VdPZ/NktJy7RJWmsN6dCdd9DxZyA64J0fbXkXW3PI=;
	h=To:Subject:From:Message-Id:Date; b=SvvIJ4+Lk+7PtRaGCOg1Pd1/c0oZ53MYIFHMJPZNhjUWt1Upv6E1evTPavumYO8bjvl3R3GB4V45AZtC79/1ke1Do7/NNJ/ctgetvQeMhZBWhIWuPDvJgGCp/nRHlee8tiSgR/4JyWEnC7QsSd3JF4Lb4oDSrWx6ue5husoyoT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pV/gjaX7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pV/gjaX7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A959BC4CECC
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733012753;
	bh=U0VdPZ/NktJy7RJWmsN6dCdd9DxZyA64J0fbXkXW3PI=;
	h=To:Subject:From:Date:From;
	b=pV/gjaX77HBVWWXtcOxIFLOgYMIjCIzxxVvNhR+a2AvOR15NnRubsRQVoSiwY1Cie
	 xxwWZJ+R3mzsM043wxLh9d9jJFIcapSXjV3Je/inEgbXNaSrGevf8CAj9ANtcuqE44
	 OCIdSha2lmc2BYfiIXptSlEFUO8zVMR9hs3IUs+hQrqoxaAYIAn61v6B9RGOi3ifsP
	 O4wRud2BOye4i/ZBttDcQCubT19tb7emM0TmCIiepfdKlamc5n3RiXyrUzMXrxQmNz
	 VPb6IeIV03+iB4taI5YWu5cWzoODLSZ5uhs1tN2y2oVx2ey6hzTSgvYrTGsgkRs6No
	 hlSGihxDp2crQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C09D73619
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173301275359.14254.818413281133812488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c409feec034d92e454683b50759b07c4667d279904105bf1d150fc0422f48024
Date: Sun, 01 Dec 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733012753
