Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F90030F95C
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785416434; cv=none; b=W+LErzpsJofdGbP5a25mUBsEOXO4hj70Z+Q8CQhutHQ3LGulPCR+PaJXY1QO9v5gYmYjXnv0uzLcT+UnBo5zB/yPxMraBvugR48clTBru0WWxNuXzyU6j6+W7KQipT85eae69O0jxYc9GOSXkDOnB0s0mxYWQvpc8Yo9o8bMmAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785416434; c=relaxed/simple;
	bh=7eGQH3Lroi2SBt5dM2/igBBLp01Vb9ZTScS38Xwc2zo=;
	h=To:Subject:From:Message-Id:Date; b=AtM/F4tpQj7YQRtIkqKet+lcpD3qA8MFgwe2gv2ZLBhnFPxz4luh9StXXYA7/YPcgnxqp2Wr8zEZ+ZSwJFXk7bGNVkV2rzHVy65u45wff6Y8Au5OUHYyLAgb9WB+gffrZcu9S8rbFrE3waRmUUO4XJ/zDGR+hNB/C24AlkqVuBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBL6AGdL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBL6AGdL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D756EC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785416433;
	bh=7eGQH3Lroi2SBt5dM2/igBBLp01Vb9ZTScS38Xwc2zo=;
	h=To:Subject:From:Date:From;
	b=iBL6AGdLmISbujU6UGokqWHT5sjkHRW+thHuj7Eigkah2li2vveVnFfzlYhWjwsi5
	 z2Kw18xeDcVqKK0SIgSuO952AnceV+BBisXxsqL90IXlL74agqrI5PbiQM40UN60s4
	 SsDWR8cmd9jSpMLxloqmgZN5/iIDpTEaznjWHqJeegvEGddJMijEDUvXG7lq5EqKdP
	 IuHqlGW5CQoLlnM6I+3y1BKreUNQqvCFIthanwy7O7EMphpwA1fpqOVMW2jqMhXJk3
	 JHEhm+YeQKhFISqLz0BpG8/Tz3Rg7AyNJWGZMkl1X7SWBMXj5xbnC5Keip2UFVh3Qq
	 /uVKwvFr7EOzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF379C55160
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178541643370.29392.4348921308643224739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813d1c6aaffd2ac25b80e9e7638f19a695d6beebb02e0a8f4b22df4522ed9f2c
Date: Thu, 30 Jul 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785416433
