Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE2E58FD29
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788988234; cv=none; b=kGtMntAko8DWki7gD0uyn6NyoeXiDNIF3mc96efABv1RGvlp5Sm0ltsDh8J6VHuBwY2PnctmQjNZIX4qEb+XXOTPdW7OuAN67fr7XCplilzfc4XC4ACbvjOFPDCK02MfzS7JGiNgdzY2JNNYE0rL+S48JaV7RqwfkXALnSUJD4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788988234; c=relaxed/simple;
	bh=ePCkw8byFBl1gkxA39flFop8KjHnkvZorTH8gmPVxD8=;
	h=To:Subject:From:Message-Id:Date; b=Z0UMPtdkux9Cei9ShoQ1XQ8sD5OfsIVfxIqLhoT/fyflW3KeS4UEGL6tYcatcHAdj3F8480l6bWIDIJJKX8krKIVCFTap5ffz6yvKlA9KR194br5i1lgFhcDZg/xx//s7+Qq5uaTyjqjHPujcGaFXaYthVjxX97oAFg9sYmjnc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F18SiRy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F18SiRy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2980C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788988233;
	bh=ePCkw8byFBl1gkxA39flFop8KjHnkvZorTH8gmPVxD8=;
	h=To:Subject:From:Date:From;
	b=F18SiRy/MgM7AadOBP6YtYXDjGncfftFspCtM9nyMnUtKZYnzNp3n9L4AGCgJmdxJ
	 Fhd44mpGDDOp/6PqifAr5LhOdHi+sm891++RSicJmTecvWfVt1Kv/JnYCQcYcZT6sR
	 wLEkPjgmbYIL9ENjQq+mDi9BSIxm6Hr8XiC5Io+SH+K+uN4ecj5fBi5mFDxP8C9Zyz
	 +S/fI9opcZDgnOmri4cHH9nU/G/qPHo+j779KTKGLRbhnWV/rkg0TrBUxC6mSVSzW5
	 JiZbkC3Ce/mfsST5KDCbrS4FlLyMAqYeYRRH3h4djEIq3k2WdNILnCc+7FWjcP1+yg
	 j8IwdtC3MA1WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B7CC79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178898823374.22636.40738228047942367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 311b69dd569831dc8788275f79ddf1b0a3892b9e12a0f466d42ff2f82988a06e
Date: Wed, 09 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788988233
