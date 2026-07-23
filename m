Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E8253D3D00
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 06:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784789374; cv=none; b=usuPWrrLH2kNG+UhI5POdu5CqcxPB7H+veC85J/TVe5R6ypDptR6IiY5Vb4mjyBgieDILtuKMRAZCf4V4f2tY1Tu9Tqf97IgjE9221rh55uAXO7mAtNsWHxzuTzJJKwuwtBCQFnnuS6mQIAE7l/eV493iBpIdQatbf14Iao6sJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784789374; c=relaxed/simple;
	bh=FTmc6OnNByzREf/CPSOQLqxtghwFR96INbW7iQY8dqE=;
	h=To:Subject:From:Message-Id:Date; b=O2c3VNNAFYG/lYsuBAPqqGG06dLHyxfF92QewtjqJcImQwAlG/nh4dXxjBftmJQ+7T0SxPLr9/8pVd//a/INwwBwik/d1RNsbZJStNTP6snRFdw4Cr9TA4uvpRfgg8s4szljYXTj0U05QbMNVBko4z2u4jblVpsn3mC4wTscgMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkTf9PF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkTf9PF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3079C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 06:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784789374;
	bh=FTmc6OnNByzREf/CPSOQLqxtghwFR96INbW7iQY8dqE=;
	h=To:Subject:From:Date:From;
	b=AkTf9PF16dc/sQprhfiBXrGepYxf3EiA413ia8NnuqMAvacxTKMtELpXAHJTRzCe5
	 eVJ3GAfqpk/WNmgXbx2o2/pGqZZNCFzr8xt14R+76gIYh6ZA9YNPz2ZFQFf+MXU8Zz
	 oJAefpfw962H3ZECo69miNSu54b487VDxXscVwAW+DzVImDXN/T/CG2qZG7vstM+HM
	 G2enQbembezFmGDzui2pyqOP27XBJx7sXmQR4iOLZEm556f1Fn1vqVL5HpGwCPSnwk
	 Thc0Zi56XhfpWzh2RuFmBBpzgK2Q9+1edQwVtJuXXq1T3pNAwlzP96al/I/QJ0LZcu
	 UxG4LJsmvMNRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9759C531C7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 06:49:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178478937371.12478.6215688842412779106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b11a7ec5a833493350a0601a754cc9f3ff64217533fe9dcf8271036f6d73f388
Date: Thu, 23 Jul 2026 06:49:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784789373
