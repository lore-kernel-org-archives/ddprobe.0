Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBC9A80025
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707322098; cv=none; b=UIxsxl9tJ8/AuKOZ2OLx3/aHK7OSbob7bOFyAHM0ejcEymawCEkIY88lxRkNVxB0/IMF3QROAJJaipu4sCZFOWgeiYpBe/V1FAvp2PZXh2lG6gzFa50RbmEqyPzgEoZLjaCWa2/oZHTyBT/EyxtSuE4uIJkWbVZhLNtwJPrBukE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707322098; c=relaxed/simple;
	bh=8bdZIAA1sHkUG0SonKmy3lth/Gpnv46dhAVmq+tGZ9g=;
	h=To:Subject:From:Message-Id:Date; b=gw4mKiuHWP95gQ6gdTkPrX1z8TooBVzDETxP2AfXNLc1/JKtz+nvQ7Mhy1yDrWFsNc1WFBvam6FtP6U4UKimRJUq9kAoeKAOj6F4C6B5KDwl0fQel/P3VgFZOQN895bp5+M5aBkwtA6cUbpm4atTNPUwdyICBzbnDv9SvL5vyYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3WVkX2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3WVkX2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 769BDC433C7
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707322096;
	bh=8bdZIAA1sHkUG0SonKmy3lth/Gpnv46dhAVmq+tGZ9g=;
	h=To:Subject:From:Date:From;
	b=U3WVkX2I0HMkZfPWB0EEY1Z1LJf+LGGE9HEUTVtW2QZj1IdX9WluV1fnNlWpE2fOM
	 ajWr6w1QWsSpV7g+Z8jd7RAvZAGDngU5M8khdwjIN3q992bfMRlswpnMFlntaK3tEu
	 hrmuSiqW5YBKxWQvigWRNZly3Y3wwqEa8uPULbvV8LQ9z0XqpPr7WtbGqKa4UZ/3yA
	 1CEwszAtZEmW/Z/UA4zemzhDFezWqZaSILdWFShzF9wsOUEtPTVT7EZzVpNFXLbiuz
	 ddtktEUIldNcOFvDIBwRjILQWvCI/N+Zi/rYW7yPJJcIkAMa194d7PnpoLc2ZuddNF
	 tiiL4ZTxrMArQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C528C4828D
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170732209636.12503.12448276522035363423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ae77b72a083220fe45de41da5155997ae9d352b21b4ff9ed0ad556dc156a751
Date: Wed, 07 Feb 2024 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707322096
