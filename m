Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA89EED8
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751819394; cv=none; b=dPsuoW7ICYzdZVEIwmRqgg4y1sKUnstiNunLErkMa/Mh4GFZVsANQmXR5ZKyn9aSRoaX18dEK+sH040MGin7gEqhEQilbqCBrrTgbEGBfZsQTYXkmpolPWf0aeJvxXmXo1r2mYgBT2Ayd4GPncTXDITk2+t07bwbxTjqsnH4Nwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751819394; c=relaxed/simple;
	bh=2dnPHlKCsEFZ5e9VITuOBNi4++dZbbfIAUVLBMdcDWQ=;
	h=To:Subject:From:Message-Id:Date; b=THcDVkkWpk5wTMdF+mQK7NFFa9vO/XMqjdHDksBogJvs7liOVnKiOblnQjP/JeWTs5+aZoIBkHvHslKlIF+4mgxNtpPTJf3fAfhML6wwVibMWzxFEtL5EExjHj2m8BJAJjumpY9SaR1mztb/VbF/YfvR9TSMLszHWd/5mBuDF40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fqolp1Tz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fqolp1Tz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D352C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751819393;
	bh=2dnPHlKCsEFZ5e9VITuOBNi4++dZbbfIAUVLBMdcDWQ=;
	h=To:Subject:From:Date:From;
	b=Fqolp1Tza875oaOfAwvbRcQgaPUo93dGMypfem+hZ/DnWVo/MIGI0QinP5nUQfWpQ
	 /lwYxN5oVTSPY3CR/ofMeW7yEKYD/xoKlh/TEbmpt9ZtoI2OVIJ8QaARW+xaC6Abcf
	 MpqP5zpkaH9IZcWQM91eAGsFoqJZwpEQFNrpwmA9OiL/ZpJ/mLJLQSiiIyWIKcWGWp
	 vlcDlBlpcKs4s0+Lge9vJMC0ed/ZZtlVfP9q0BLupqf+s9N9vuOLTc9E9FUBdbVQ0q
	 7A0INPbwKEiXj+QBHB/mc9VzenM49uveG+WGzn/yoFbMbRdm8CJXFBD7nJnyUvcj+D
	 h3DRX88ex55XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5C1C83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175181939357.24250.8743209896787550105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c7408599a5e2fe031da4bf5751955300c5bfc42ca73264741ca58b407f2a92
Date: Sun, 06 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751819393
