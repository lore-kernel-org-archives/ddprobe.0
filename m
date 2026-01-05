Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217863A1E63
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767591834; cv=none; b=MjGIsai8mpGKwNCKkeajtCiBgPWw1UEHsGYNnp1kLEV0DV66GRkcRWIuBVR/ptFaQQiay/nVaLo/jOfsq1QcMARcD8GJM6RDFVGTeGvJUQ+ZBangU8XsCH7IUxC/04hNeX6qW3RCTSY6fFZG1QOndIE20jreVdJlyMO5nv+aPgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767591834; c=relaxed/simple;
	bh=QweP9DCv4dbi+/exAEGFeDLF9WpdilV8938w6Nqh9B4=;
	h=To:Subject:From:Message-Id:Date; b=KD5vyUM59KvnERbhkpS9HEyngL4mEwkCY0CBHyY5fV7kPX5QaHJDm+6UxakC0BIekSpiqdG9jJrnVYVvTJ5zNGKj5J2PuT1jdpY1bboRCecailSzugp+x8jk5vkrrBvcjklx7sDISwNS8diRgte1paGLfNOh1GTTRLKc08Q3PMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uT60Qo59; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uT60Qo59"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B18C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767591833;
	bh=QweP9DCv4dbi+/exAEGFeDLF9WpdilV8938w6Nqh9B4=;
	h=To:Subject:From:Date:From;
	b=uT60Qo59z/8jQwgheKOHjub+raPk7josgy9qhgN8F3dvUwbIDzgi77k/XPoFN5YEc
	 EPSbrW8Yb0VKvALemZ+8dY7RjjlCs8Db6v/sH9/FrFLy2LT6QXsSD5mr8v1nOI6XGb
	 MWZNAgiMmcbRtUamFeV8w2J9FbclqNSTTyA2aUw1DtOSxu+LUZ0GUWXyO/WxZCsoc5
	 ukb+9c/i/0btSYbdtHv96i6m+sV9p+ZpGyTFMXNUMPuqBUKGLmV7VYNXoAevhnTr4e
	 Q3xQ56YndtYWuneKlsgYQ4in84MwNvUTtZtj4TfxyVN+AO06cFYFphPQSpQ1X5LV/t
	 rjFgA64uYYoiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9645CC2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176759183359.9761.7614635120286783860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf37f0ed77a40ca15859a109cc53127fef263e3e4a51c7f4e34d1a3ca1b5c4a7
Date: Mon, 05 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767591833
