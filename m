Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4061F155A4E
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745853595; cv=none; b=ShHP+iGR19YmZ6BxM+jzV4EBRMfnWO7JFugAT+E3vmfiCHdvd3YJFLgeEAbDgJLy8cK83TfuPtz6p4NXAiV9ix8lmr/h1WgXaRZv0YcZcn6vEMvILSGQxPK4eHkU/wro01hZSin2Tz6ar9p4pHxeA+ciZxEWTZNnbsR+zYofTAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745853595; c=relaxed/simple;
	bh=ULYTIYpXKxLqb4ZhbQxp07dRPRvfHum+EJ6mcBKCSQk=;
	h=To:Subject:From:Message-Id:Date; b=Gz8DiMUsMkV01g9P3CGSwfLYD/1+/wDblKnPNDK/6pBn6EvE2SRD63wmUSnmsjhvPbh60/OxEjD9rsm5kJayoj6+116N+GDPTbhFn3+5DvSoPMAEq6SbjHvsvD/yQYCqiX5J0gRy1zswuETEnyBUsU75+Jc5wJb/ggsLv+KJW6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+k0BUzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+k0BUzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EFFC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745853593;
	bh=ULYTIYpXKxLqb4ZhbQxp07dRPRvfHum+EJ6mcBKCSQk=;
	h=To:Subject:From:Date:From;
	b=E+k0BUzh4ULrd2D7cBhpY2qoOiDXQF/khn+hEjwBr8DDpD2wNGFJo+Y/DnshYc3mp
	 LIPyHU06H1vIK34QHADgJ1QASCzKhJE0Mk4h+IcljMuQX2aXJhKgWJyEERlGkdPRz3
	 0ecK/EMiKNLvgswgbTZxUdwbPkVBt00HhIvADlA3BX6FcqDMM3EY/GncPN30YfaZyX
	 hfxBf+xYwD8+Ow04FHNXstOuG9FwkGzLHv+W/7wc9Zf/MBPHlu+syxpYL1R+Y8rXfb
	 A8DFRA08+EGmhboumtkSqtgbirxsvphB+gCr7x7B9SmK2RGDm1J99MlsE2sqEOlDaO
	 cbXSgg9HjstoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95798C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174585359357.22306.12212124882539691187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69da09f32c4916915af6a88e47f2e2339b07459a02b710f8708d1ce1f5dc71a8
Date: Mon, 28 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745853593
