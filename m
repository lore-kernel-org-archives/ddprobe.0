Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECD18479
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722282354; cv=none; b=PB94Lh+L+xBkX+fTAwln1AmXfuR4fdhmZPGeMupM7bZgsnrnnHfusqGAU5IfUH8uJoVqFFaD82gf7MNY+NAwgFeijvPWbughG/FuFFtqmzRfn8fcidaLew1O9i1MBqlStZxcLWfRZm/kLMWsBZQP/8ah2DsW5MVuBWpWHx3t7GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722282354; c=relaxed/simple;
	bh=Aa6903f3gz0IM2oE9F+HUrnzrnxvqDrJ3dlJutfuvV0=;
	h=To:Subject:From:Message-Id:Date; b=Z9MbiL0n/OcBnsveucM0VG6LwuL3iMPy39N7tSuTgOqjNNI9b2Kf/o4dyP5jtJGkvj1oLJ3zaJpJQYpOg2d7QUqOv5lxtF8q1p7r9JHsxNpRL0erXMo4+IjX2eecNXeAxXPH7OuAVt36nl21i0aVFs6SfJbB0uo52+qglifHFFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KglflTiG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KglflTiG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B429AC32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722282353;
	bh=Aa6903f3gz0IM2oE9F+HUrnzrnxvqDrJ3dlJutfuvV0=;
	h=To:Subject:From:Date:From;
	b=KglflTiG6O9e4k+nSEKpODr5AGO+vTsR+dxG/fa7/T4DtSZ21oulTHVYy5ZG0emfU
	 6LU+HErBa+pS3+Vk53qsy93+tg+qjMa+FBGbuhsKq714vxZKRQA7pVLCA8zYwOxH+p
	 xDJTDcMuDyJtT4ik1PvbrBfPkTpyQQv66yAA37K4vcur2ak/RhP6FFObG9TtZmWluz
	 u/Q3/At91eXVguBLLv7X1689Xrk71aFpmNIVHUmddi1IDc7Sf7KEocq8iX6SdwT01A
	 kNkqZZ+ZuHCpTuin/WZevcEHLoeVUCcgN6y5si4USCWqNW8hwM+HCuJhCbki6fjmk3
	 XldvaSoglKFow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BBFC3DA61
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172228235360.6735.6917733623234947847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d28cc76b17aea315ddd9b0a816cdf45e3b2f64ddad4ce558b0f85a799fc639f
Date: Mon, 29 Jul 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722282353
