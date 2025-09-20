Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443461862A
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758363594; cv=none; b=shg2eJkhZvkvHEFiUkaxh2QwR2rVjA6Iy8WY2opAyzh8ffgjCAjGV70ZP/cJG8bujgjRUN20qhCZgR6BZmwb5pI+A4R8d0XPIa/b2PMskQgMFMEvWaAYTvhKXnsAicYhm9PdG9mnCJpA25KCsQyES3wkVu0OxxqcB0nBZ2RsLq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758363594; c=relaxed/simple;
	bh=hPqfpDYrDJPnRhulLtTsYPmX4nShnpYxpRQMygN+zBY=;
	h=To:Subject:From:Message-Id:Date; b=kehIcoqnmPd/k1KQdc0memTlLq5RO/jbiFGqKmoi9FJkZeJT8xqH2YAlo+f1G9+1eNODlHz7+cr+iLP/nw032WsfNinxjIOpHkOWXwwN/NVlw0n0JwehsphvcByvrZP4bPMgfr+AYImiHZ8TVNxYqpSdezrkU0Q5BqcQPw2OjJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNvaCOf0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNvaCOf0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8980C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758363593;
	bh=hPqfpDYrDJPnRhulLtTsYPmX4nShnpYxpRQMygN+zBY=;
	h=To:Subject:From:Date:From;
	b=BNvaCOf0C5s26+By0/ezyzBbXTmAjSD0+bP3GqW5miV+DVdmNDwfjffkWBos7sAya
	 0+JEecSU5Dn1l04HdfBqwTPY35+bAZ9lZV0ky4Tj+BJ4ctgoBVczZfBOFe2Jm/T40C
	 yLrQ/cjrToupBwHp2QrRt3vVnsCxCt095EsMAaijURssaIZAKpE1RuLl1+CyJkr3tN
	 v8aNPyqPu2KSeyqkTFX7kVDOCu1zb5FEHpzvJM7NhWoECdzu4xUVbSKKCI6md3sVsD
	 uzz+X/hPxZyYzHNzeOU7EkFi0XqkhTi3ShO2QEWVP9UXX4be5xPcOlANZ2r8oBIXQg
	 vSjE2g6t0YW/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93682CAC5A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175836359358.15187.13973074593356753130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df4b1276cc1409bf4e94480b8409a1f4f5b193feb4d4658144e14b87f23c9ec
Date: Sat, 20 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758363593
