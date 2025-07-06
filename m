Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E137081C
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751770795; cv=none; b=VdIQGX6ZGSUl8Z+BAM1NQi8nSQWgHYyBAE+h2S3UD4qM/PfhT53tEZDlNyZF19Lxuo9PSzU9SaRzsowm1IKouhETWRK4hW+3UfPEYr2XYkgOBaJT4HGgeIuNoJk/6hML9P17lf4Cqfa3RFMD6oPRHfVmSQ4q5hfo7UvdZXzXzwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751770795; c=relaxed/simple;
	bh=PleogBjCKO3GM9SAkwLA93LJIY030ORyED+CgGt2Nqc=;
	h=To:Subject:From:Message-Id:Date; b=KFE9jWut97YsxkBD5bygOGR3ocxtOsAtTo7ttlW8nQWhZGPSDMZXIXLtR8NTYW/jBjCnOUHk4uS4x2bwH804YMPsppELLdtHxjdbeqMfjAUopxNUBM3csOCUYNrQUQDH4zQvHemfAxbCE1CQ5516TcK+niBjfu7eZSuID5t7fB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZuTfgZ8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZuTfgZ8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10A1C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751770793;
	bh=PleogBjCKO3GM9SAkwLA93LJIY030ORyED+CgGt2Nqc=;
	h=To:Subject:From:Date:From;
	b=ZuTfgZ8M0q1l1nb0vK2FfFL/GuQyuARh+uLIs2zQiVJGF2rTiit7t86OW6gf5mq+/
	 mftaWcR0mQ55ZEy0Fgmgwoe9t3IbU4GJte+5a01w7wcmLky2deJPkHvIb1TMulqlYw
	 KPNEOR9KstRiKHj+ugydRvO8GGwDwVcz/B6/pZ4f7TUq/3ylrc1g0ci92HGBQTUhe0
	 cYToCYYxpyX6LInkIJMNVH3+Xw/QYMiyLkgjWCZdI2Ub5i9d8DH78uKUtM+SvrkGSk
	 aXN6crwCdiAmLTfArVVir0anP2Orn4q16RSegd3Vx8LgjBrg0XwmyNcMxFcSAZDv/O
	 IVbk037DWNuhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBE0C8303C
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175177079357.4162.18119988503487045874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bcb8bfddabc7cb53195ef16be2edc9ed38ce2e0db63654f6a295768e7efe748
Date: Sun, 06 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751770793
