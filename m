Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03391272E61
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768229034; cv=none; b=huMmaoogC01bh/pHObFjMCFCDx+HeqR28r7obzmWBrf7cR3Ny6oYNy8ZuZgmLA7Yb4ENJb4ssts1wSMO/TZ5/rDgscVTnyFMsHM5NFnVIDsjBSHwGgBdRlYbTgs+hlg1gFrFUbAfAcUIS8Lq59Kbm8Bt1eKVwIHFGTAJm6g/Y08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768229034; c=relaxed/simple;
	bh=FI+s9H26hIuBSN7WPofOecb/qTEDGfJVlnk9EZVggRc=;
	h=To:Subject:From:Message-Id:Date; b=Es3pQdqkYJ90JAqHblaIHOz3Iv/b2t3EcGPY6mpveWy0Gj70bS83i8FINEnaHJqOYi1hUr12SValnSUQAkHDbrDwX6nBgN/uvxFBqq0jpkE8ntvlxEpdZ2b7Qq0qSC5YNPhwdlJO2aFG3fJxphC8sYxyjm6QCKXF6TmT2V1MZTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUkvLShq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUkvLShq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EFDC19421
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768229033;
	bh=FI+s9H26hIuBSN7WPofOecb/qTEDGfJVlnk9EZVggRc=;
	h=To:Subject:From:Date:From;
	b=VUkvLShqt6+xuknz9FVNE7uaUG3huZ/YiweVKZdzNC1s3SiBWBRw5x+0d8Lmtfd45
	 f78WzVd3BzxJlwHGyWZ/E20kL/w0NiMj5Jly1TNTraMURCwF3CG6/rVHhFrnBam/ZZ
	 o9Wk83uWm/84tm1Cnjpgp1NBQV7fJYi+eV8NDF+lq5xhkcxE4BACc/U5KTg9K40KM2
	 y/2MOOkVk3VXUjdNdJVJ/aNSzkc36vI+NJ2vPPSdUO6M81v/LREt8dahjtT5/gLoE9
	 qZvNy2bff5jGAF2P+RydiVLrnr7ImnFGYttM1bMFyqcU6NVZwhrYEC0h+qwM+jUcUC
	 hJGduYsCOSERg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910DEC9EC8D
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176822903358.11475.4620706912238860282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaba572e3328eab704cc5d2b1567ccfdc6181255d817ec1411a9fc426821527b
Date: Mon, 12 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768229033
