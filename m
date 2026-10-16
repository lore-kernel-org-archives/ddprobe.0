Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461B9471263
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792146034; cv=none; b=Dc72GcLms/vx549Lk0jKwcIYGq8bOw70UVdwLdG5MFH1s6/fDVDvENejlypYmI5mjckNhjStEtn0Tf6WJKnjF6EJ8ktaOqxTsEzNyHkPiYuA+WVoqortgEnFhuZ2MR/iOlHM2zcwg0AHxi/4mvtzPcIbPnM2ykhR0bwJaqyEZIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792146034; c=relaxed/simple;
	bh=fM2wEGh1vy09PsDJI8XeIfUv9kOmOnpqaQREWrMIXmA=;
	h=To:Subject:From:Message-Id:Date; b=aGlpx55kiYN6p9Gm0t5XHQtXkKt/ZWT+IQ375qeJj4exCXZfB7lzrTye/QGuuTZA00JHxg+40wX26njg3ds5RVXewDLq00z3bCbplw6JOK/Vylovjf5tCDT5u5dosvNrMZLW7fKsOHghfyMUPwB8bYs2SkRdlJ3CW48/2Iww0VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPnWu2xy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPnWu2xy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0841C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792146033;
	bh=fM2wEGh1vy09PsDJI8XeIfUv9kOmOnpqaQREWrMIXmA=;
	h=To:Subject:From:Date:From;
	b=IPnWu2xyNV5fdnQmLIbebCOxRxKG0dvxk1kNP+4/U9DI2fv/AwQKPpC72QvcXVxEM
	 e6JEkE4yNzdmu/+dIW49i18XRlu+zx2GEZcQtUrF+n04hP0I2Zrq3ndNlisaGHtw+B
	 0gGGIlW8hF3tR6LqZzTurtu/d4wppkZdaQr1osf/hrFeoLwZhgeTQwOBdU4s5ldKNb
	 QasVTwaAj5LOlAgDjce0NyPqsaGtUiXnlhUY1Ew9vEwU9188xg8ksbTxhCOS5pB5Ft
	 bVjQYozn0SK1qQgq817I8fKA5nRrIXD9MJR3GUP8zgkfgxL/TG1qzpDDS6DrJ6uE1l
	 DLfx5SAeB6Xfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC4FCCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179214603369.11165.16366899441011048049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db1e8584cf19d94bd93d3510c2810443c78fe112ef3189d28b6981d77f32346b
Date: Fri, 16 Oct 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792146033
