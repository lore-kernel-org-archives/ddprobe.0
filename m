Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBCB26B95B
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777367254; cv=none; b=GsfPeCTrldoN7brNHOmWJVK92sFkQAgjh3yYsHdcjlA/Mv6AM4ZcMnW9JQ72tUX7Vnq9HmztSokFO8EDE8X/0jprID+3vvT9lgODUDe2z3gnY3EsYsBoB8CQOMOvhjvc2S0AA6XFJy+F6APMuUODQgCmHcFlKSRf2Bg8AUbjRTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777367254; c=relaxed/simple;
	bh=4+hJv5TmlBVe5iiKHHBDD5VK9VYCCzugULEGDe42rls=;
	h=To:Subject:From:Message-Id:Date; b=SSfDJHkVKrvBLR3gbrKiqD3c97+/sr1l0KITVXx4FZ3itehQDCVVNroqtXoVx6qsCxjRwfVTXg7BoV9Bjo8qRdp1pIlgoWLh6WpM7jUrx39sIhC48zsyEh2ELgsFhejBJTv0fwriAWHfa67+rXvHZstvSwGSzyqcUWbS52+VqIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkNN3Zjm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkNN3Zjm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9952C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777367253;
	bh=4+hJv5TmlBVe5iiKHHBDD5VK9VYCCzugULEGDe42rls=;
	h=To:Subject:From:Date:From;
	b=fkNN3ZjmyRh9WgugV5yLAn0ZQlaeKSxIBC1wNaAQrHv/LuV/CMZarK8djXCnGpj2N
	 9p3m3bS76Kj161FhSjcMrM0xu5zjZiBVRISeYHqx/T4qHJ0xVLvQRj8dqVgZ95SHqb
	 VCS892Oz9NryNHaGmKWtUMtmvEZ0NndD3WZDfK2QdOtq13tKiqBQquTh4/Y8Wo87/R
	 XxR/YJSCttDhi9SHs1OIBazMFZC0hWxGmvJDxz9i2zvtTgjKKDusWFUttF6O5E+n+A
	 5YgKso8TD1FtIBPeoofmp+0pnboQ29KjAw+AhwHpONabrrDKlBK4RiAEQDNdha+sr5
	 lSeVo2U7hcZNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A85FF885D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177736725368.13112.1373195681974721153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1718c126ccd53205e561e47948be16186edf022bd09e71b88e82814ecd46fd85
Date: Tue, 28 Apr 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777367253
