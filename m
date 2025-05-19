Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8B31DFD84
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747658394; cv=none; b=UkK05tkUCzCD9UfXbIrsHoJee1S1SkJykKo8rfQM3nkmEIUdvIL3y2igD5gAgywTdVENkpwN5tjclcrdlpfmn3IZwdxNqX2xwM3WdaS/pm/hX/ConsT+5Uh2agf/7FmKmm+M+J3R9uLDpHVo7u0nkfDnYV96fjclsEiTGvy036c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747658394; c=relaxed/simple;
	bh=32esdBOTjlnSVYeq84Dh8TuwPGNksk/A0OhRuSnvH9Y=;
	h=To:Subject:From:Message-Id:Date; b=an3DBxc9Wvp/DSjZF83ziGgnPAG8Flp7NIR5jLUT2BL92QRU3a/QWWL2s8Lv7udFvjdMkoShBlbJ2HXLh3j/meT0PgpRpKCH0IkjX07ol+v4usdhQfksoI/ZR9bkEE/gcKUicn+EnmWtSIjtxUto1+kBgixro0+BdehHWqtsf8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNHXaqFN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNHXaqFN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DA8C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747658393;
	bh=32esdBOTjlnSVYeq84Dh8TuwPGNksk/A0OhRuSnvH9Y=;
	h=To:Subject:From:Date:From;
	b=BNHXaqFNUUple5lSSxW9QjkjRnDPBDjWy3Uxf6g8Pfx/N7dmSWe0kurD+1U2sJEbm
	 PZ6DHta1AlKKCWo6v9BY3V8+Z+y90SVGY0ewvNdJRnByJreneIrklFMxqAMFQA2ZpC
	 B3RwahU/wDosQpfZG8tZn2cCpJzUCghrkJ92KXGKi7FHkq9mYrYuBGUCFW4OQdl7PN
	 4LbFPmd16+whtSD1ktjPEuAarAjVUxqwXro/rvCBKj6bQzDRCOsdbz1O9OjcEF/mon
	 G4p8KGTkmtsxlFmltrT7AxWfYKJuORorxINnw7yqr1rDTzx8bh5ea2tBeD9Ur8pjLN
	 2tTA6PV5LWtng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB4BC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174765839357.23752.2310328514732152399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc1e5d8f2c657bc72f244777cca128c4af77e0e1ba76bf1ec27b82a16f369546
Date: Mon, 19 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747658393
