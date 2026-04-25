Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AB1391517
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777114654; cv=none; b=DlaKApdwn89vgEp7jWJLP8Oo2iU7ovf9ochubvrF1k2pj38XU6Pocugddm6IglR/rIzvixcrO2wM6sbEDiSA34wgaaAr9ctM5G5tchRXz23Bawz1Y4AP6o05NH5AbXyeOPjtRyYSr4BI4Ag6RuCa9LFBDRg0Ir6z+mFr9G5/Efo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777114654; c=relaxed/simple;
	bh=QPyvgXyJehL+BA4qKMlFsgan2NTl9Mlbm+ZSG5Yydrg=;
	h=To:Subject:From:Message-Id:Date; b=VU0B/UoOeZjXwxW0LuFI9jk/zk155lirUp9EqTU40cZ+9S9VZVxz/YviNEinFXVcr3bEQUDU+TNLVrffrpAeySYU/BwTgUYxWcQTKk6R9DkZSbsH6DROUz7cEmYOavUiCRzOW8mumt+USJZy5Okyk+1WzzuHi2Ki6FSafPMbuFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnvoBtgr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnvoBtgr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C609FC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777114653;
	bh=QPyvgXyJehL+BA4qKMlFsgan2NTl9Mlbm+ZSG5Yydrg=;
	h=To:Subject:From:Date:From;
	b=OnvoBtgrcRR2OVazfDYbY9kXqjYktuWBB2ju8kZyfpFlKjzOUY4eaCF1gGmU59ppt
	 f80vrO6FUQ4I3vmoanawQVF5/EIwGjDIkjfpqBOH/lHpIUhI3GYmbX2VrlOB/6E6nR
	 pV5zMrCjN1M+x4QgcfWNCfYaAO3j0qaZnddfLWAyiHpY5kDVm7oQygHcJMURDoQ8ec
	 QviKWVDFR/Cj36g984uWuHr7PhsqScVJ4JPBnKTVp/ojKvMjypR2SITlPDhA2c3ioe
	 gh6XFPwKpmG0vMo+LnIUxuuQrDVDOr0LcsWcX3iLwso8CGITB2UzQiQxKEbYd+PKn6
	 KbjJxWIFVThKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF077FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177711465368.8186.3060305802851185776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a01e373b8c36d438f1458ab07db12aa9bc9c65ada35c7beca2b0806b132e6ca
Date: Sat, 25 Apr 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777114653
