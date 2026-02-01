Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94DA233D6E9
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 13:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769951034; cv=none; b=Hubnc4y2tEV1ENu77vTqez+MH0t2o85NvZNCryfabZEInA8C/Xg8uMxii+itlD44iG0AUAyDPvbRvbJCFPghWXoEHUEEHnDTgaZa/6Gn9f7gjjr28HFRYyDnXegOtb6PR/tF8Hk18Bgh188vBXgp5CVqcPPgppRXxTAmrIffSlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769951034; c=relaxed/simple;
	bh=T6OnOpztyzgbdqmATe0KgR+Fc7HY4BOhzx6WS+54IeE=;
	h=To:Subject:From:Message-Id:Date; b=Dtx6b2M6tbJ9Dncs6B22FEGEVvE/X9Mn5AV2Yki34e9T56uRk+ECFvpn//jh+O6rUTbg9FFu39DypBPEFVz3E027OyR0ynut6ckLwC5KP1yh5Cjt4aobzkU4OlJEUUHZ6L5TNzmIqEaIq2IwzOyDRTpIiLalWnIILu0l6vfi1Fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nl5TP6Wj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nl5TP6Wj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF905C116D0
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769951033;
	bh=T6OnOpztyzgbdqmATe0KgR+Fc7HY4BOhzx6WS+54IeE=;
	h=To:Subject:From:Date:From;
	b=Nl5TP6WjPmZ9bmewrvVEeGzmcLj8cRG6g2qORKiVrn+as8+0xBgrNbbPMW7XY+Y5t
	 AUAqhItyz3cKJ2vdITNr/SR+F+d5nRG1Ro/Xnjg9Hv1fPnpALURXnnT0rP48ClY+0q
	 Qvz/y4OSrwB7euEZHhvi8q6VOOjY/LE7LDX2CpE8Pf2MUsXiN7oEUJVh83zVNVSLmZ
	 tp2YQf6p6Ii1TprZTt//aQ430dOAaenvek/hSHkUAX+/dLoIv3vF7eaG6nzZcWghf/
	 /3N9+c7w7DS4vW07tk8bjIzNvq5xEqcXeQSkBJLmZazI+ShgHFauvu+j5tMzg/Ln1v
	 yHQrfgFBN0X4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C31EE7C718
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176995103359.21165.11716944633416624248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f469526f0be715f266373c2a030bbe9fb0777c17614f14f79fda0ec3e60a68c2
Date: Sun, 01 Feb 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769951033
