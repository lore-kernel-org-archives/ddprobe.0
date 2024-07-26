Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6A4282E5
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721971554; cv=none; b=inUlBQRuxrLXa8p1AKq0ab06gPT5YDA9mKjEgWmAgLAId/cMn54jvXH6tHrDeT56ela6vV+mZ3INTBXhRCp3+9M2LYbB0kwZ4FTF19ABFsw1rbb38GitP/3sbafkJcODrQCbJLQtq6mPRQalRlRT+VSsDP1IeCy5dxp11Ia7Qks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721971554; c=relaxed/simple;
	bh=drs7oivdVrqGaN9m24hmQAHu7zx2MWbuU25o732m0FI=;
	h=To:Subject:From:Message-Id:Date; b=gMFX/9NL9yfmpZ01UWKZUhcuDjAOFMCWrjTCKZ2G43TeTvsNqus07lwJkkSGfJAx7OpvDdrYXTQtwWecOMPthh2JM8jcxCvXbpBZpvTxXbrCMf2kOFPjkeqxTOyfAt8nuV/vEgIKhauoJxoPnnAARSpc+4btIEjd7tSAoTGEOBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeJ8DAIv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeJ8DAIv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFD7C4AF09
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721971553;
	bh=drs7oivdVrqGaN9m24hmQAHu7zx2MWbuU25o732m0FI=;
	h=To:Subject:From:Date:From;
	b=oeJ8DAIvI0GJvBdNTQJm2+z1VrjM0ghqqJFRhTEiTKZkTPK3nKedPIhpBpqPHzfXa
	 iS8vSxFhRXMikW7UM7+S3lmXFCDWk3O7H+N3JxVm1fXKv+qIFuBntZK6pAm7YHvcPk
	 A+ZrCrGXPY6f9ev/0VvJ3i9XlSKpssDF7DKva3/ZjdhAh3lfZDKw96dxif2BEmB6Y8
	 ZkeHqhouXkVgHUG9qbUspFjMpTZTK4oXBJu4s/XaquZs/peodgDSlmPz4ZnuvIqSf0
	 7wjn8e0UQ+2cv8AtbSwQvpHZpIeCEOWJdCW9sGVx4gliby6baWodIy012eovH2aE2f
	 e+0L7UW4MX7oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A41CC3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172197155361.13361.1683059707187004336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 852265d146b9ece1493d209bb2643411c02d1144975b73fbc24357941d483187
Date: Fri, 26 Jul 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721971553
