Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C40F19AD5B
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 16:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717776443; cv=none; b=gKwGGAA5vaz/QOrJoa44deb3KGLJb+oulzeMRkx5sFy1lzHcPuIeVuqELqLvCulSohTWcEjvVGTmKVsS1QWgjO+edPsSby9C4zxyo83ro4MpeW59QBSA9dI+R7tU899NtPpWCBAggfNCJkI5Oor70moNxpbjJV2UCqEZgkE2cu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717776443; c=relaxed/simple;
	bh=CzfzrQnIbcXgWlD5/MvUbW8zyMUOoW6XLsjQ/GU6rPw=;
	h=To:Subject:From:Message-Id:Date; b=FNki28ZZ4QuMfCnkZmqEV9LK6hQ+ZftNSxRhCS7mNu8nKjLVK7RFqZYQOIxBRI5HgavZEmOzYlZMVboCg727ElTQxRnOgEV+SWktDYxSJzaaM18/ms5nj8DdCT1nDQ88n0EBBEPmP0a20WBc9w/516VBgGvfbM6C0vlKKbUE/7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSDEjQAu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSDEjQAu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53DFC4AF08
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 16:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717776442;
	bh=CzfzrQnIbcXgWlD5/MvUbW8zyMUOoW6XLsjQ/GU6rPw=;
	h=To:Subject:From:Date:From;
	b=PSDEjQAu14j79jr+V7gYBHrld3rpXq4q7S7WUVCP1E3LUK542BVY7ZM3MRhGDLf2k
	 Di1ZtA7W5axyqgtss96mNpMYdd7M4CAsGuvKlAU36rQ6Po1fpPN1Onc6aUQMEWxVwk
	 dYpMPkkZiaRlVi1YnoNDXRZI4nmvZzy8HpWlyHG1TGCSSteP4mTbmxeKRCLmJQm0k9
	 n7GCQDvOhiO6E8Y6UblBlmgVE1X2ot9iOWr2IR3W8fW/L6YF+q02r45eT4z1W/HedE
	 KXAxWg4UC0b4fgwMUzGKncT5CSy7fuxiQo564zAESBZomBUlJtMFetEuZyE4uq0PAx
	 iZDeocUi9Wy2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFEA8C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 16:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171777644277.4907.6125970059044131158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef01d78157a2f3cc56ced85939548350dab9b09a6c15ec5db0737f7145f7cc9b
Date: Fri, 07 Jun 2024 16:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717776442
