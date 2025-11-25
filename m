Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5EB328B46
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 16:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764088374; cv=none; b=Osxe8fUovAcRkfMpomvCoAeCz6QgWhHJSMXDjPUeQYbjzWvjIYkblkvobkjXoBxS8jD38TG3fKd91zHJ9ZJcOCx8PgoP6s8hNEaJdI9vpCtFPx6snc7lXMnI1ckZiZS0WMiOekoUszaHm/WYFTxK/rosTzJnf3p8Aj49Vy4N5dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764088374; c=relaxed/simple;
	bh=DJ9DdTGXpVlQ14q2npqvMGigJo0hito0Qiv44e4t7pA=;
	h=To:Subject:From:Message-Id:Date; b=NdCiaMFutkE2wLhEgegWiAQZO28uSmKb6JaBjLxmmCGIKYh0C9z09H4PVrMB4DRDqGmfHdjV0AD7RHXUE+SirjoGuVWqpkkarI2MjFXhw5AnqOZF/phyZZGCgfHYNE93rHFItZhnufVSJ4lnZEUv45npbe+t9cfnX84V7HBuzac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJC3ZTAx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJC3ZTAx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B2DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 16:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764088373;
	bh=DJ9DdTGXpVlQ14q2npqvMGigJo0hito0Qiv44e4t7pA=;
	h=To:Subject:From:Date:From;
	b=NJC3ZTAxfzHeYc1XPoO/PCOHpMX6pgPbjC07+9Emz4xLqPgij4+6BYHmrg7g13pfY
	 TJlhf5QvaY8Z0k0LI8yQxG+lNcSMjd77D7NgYYwlIL/iCdkE49j0XvkCS20j0JD9W4
	 mGSKpX0JCA/CqWzce0afA60eLsR03uRBY7sIFb4HwR99nxqOb0CcM7aX21WClyRJji
	 2tu97jUwezT0axbs5gcRGt5VXaaxnm1ug/AsYCWaYGHC0vG60CoBzKWjsGixucThG4
	 u39scA3V00idWzh46g9/R+wjX8dcoexCjeGMbFxZNbcfaBCflSqXfFPrGKx5CdQuFz
	 ISAe5V6VU1r+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907C3D0E6F5
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 16:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176408837358.3522.13458662386528462435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9601aa7f0285906155afa25bc98e5802d0b9f0981fdf6778d7646daadf7ee848
Date: Tue, 25 Nov 2025 16:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764088373
