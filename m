Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1941F16B
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742966394; cv=none; b=WNVzLa4whiO3L9y8yoUz4AxJ0H6wnD8lNo0PC+FeoscV4halJAGvk8gMY5gZyFKZCJUeudxheGsOyv/io4KkK7KQPkVyoY0Inf6K3c485RQhgr2XwObT6l9HUcSzsGkYH/tNL1A8axuYMinZtPrzhwMXZJh2nJ50j+AS4hRS3FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742966394; c=relaxed/simple;
	bh=XE/CokjMdVpNyoqqfZj8+A0TkEWDC5YO7TWLE53GTqs=;
	h=To:Subject:From:Message-Id:Date; b=iE9QXDQvzBKzdEViFld5vC3+5XY4FcFe48Sua750/jkQoAIVH5pQ/iMJlHdDX2mb7OHOYOXNOSr6jJtbkSsX8KFkW5XbZ0AnsO7Ddl/TlIfstvCmIRiE5tBsy/9IBG1sG709/OaCnf1S/jFo1TQLctEualdjgtoLYID6BxGfL/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kYHwxNir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kYHwxNir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB3CC4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742966393;
	bh=XE/CokjMdVpNyoqqfZj8+A0TkEWDC5YO7TWLE53GTqs=;
	h=To:Subject:From:Date:From;
	b=kYHwxNirohvB/Gs0I+1fMxD3uogPI+WY1wGVLOpzt4jOSIPMPKI1YNXq2fEhEd+r6
	 XQBFBybU5kTzxEdr5AH5d9ug6QJpfkEua/FVf1EPW91dauXBHZfZLNh/I2yrONG91t
	 n71M1h6wwcAM0L/4BsnzxuBMaBm8wCBj8UxkBXiIn/KT/wfUZPZieAVMwIIzW2Hc1q
	 f55cbYdFYQpSwz/vxM9RxX29UMHyuJvDWJJpt9zPSuPJUROaMY3UCe/NZiebMka1Yc
	 hgVx2XKzadCHMUsklbJv2pSQYqlOeLFBlVyfu/O2Bwzn54SonfUBcldJj6Byg8PpMK
	 CsRq85NrW80/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9661CC28B30
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174296639360.9383.16707464140171059003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30e5bfc5bd1f7a50d554b1fcbf00f7c8969cf8a20e1c7fe17b7852ef6b548b58
Date: Wed, 26 Mar 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742966393
