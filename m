Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7537380FF8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 20:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781640394; cv=none; b=u6xLfv2lR2fVoguPw0Y6Nsb6krvd3hHnpppzG+BN69yHfGupxZ4QS5hsgDYyZaBHq2j2lN/ES5H6ccJuqqKnQ5uu4Z1+9X9gJBceRMCkUxDf+LGLr9cGYMXU6uU65Llz5Eya+XPezav2Xp0qgbiqGyUuWTXPzzGP8IrSLllGgKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781640394; c=relaxed/simple;
	bh=27gxuZXaeX8Um1w+Nxrr5SbO9Z8srqRIM2H16JG3flo=;
	h=To:Subject:From:Message-Id:Date; b=cpBpJbZ6xVaY1ltyFM/fa0GrKlYtVM/EZLgFwjmKs08np8CpqIKGqbwvnRMAY5fQRGoRK6QEU/G2fkI+CLtEyrwk1xsjmeY0UPYjp54KpAEL9u1VPrL1ySzr4E7QPTkfq9oBhZ+9jMc+jjbVRTRhrAQk5sQk979yRh1i0d/r2ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRP0DjJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRP0DjJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6334C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 20:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781640393;
	bh=27gxuZXaeX8Um1w+Nxrr5SbO9Z8srqRIM2H16JG3flo=;
	h=To:Subject:From:Date:From;
	b=tRP0DjJEjVNYKWFe44JUzJg0dntq5l3iGtXV80LTqKEs/LM7LTiCVWTjD6UiJTr2U
	 a22anYvNNrfxoZrTEOZmTeWNxmcdajexmMyQMxN4p0VfC2YeJexiYL/ANMr4//4JK+
	 9+s3gtf/15SQh0gOxiQ+C+8i9ZbuXFoUhEIPQoJw0AXkc/4KicAbyHc9Sj+tRyhFa6
	 WpsbQ0i8C2yJ9SHgRp0iPzXP4a28Apq15mX9aSHpu6p0q/xtVZSnxo09T2yT8bLeX4
	 J8+8WPlDKrYgptyYvF2xZ/5aeKff4p6inU9O1JzSpIZj91INK70KdHe57Mb/cgdfB3
	 dVMEWro8JZdzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0831CD98E4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 20:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178164039371.20627.16184461134952591689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7da17d546d2df3a52735757bf2d3156c7e4d333f32100d9ae470a3096850b105
Date: Tue, 16 Jun 2026 20:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781640393
