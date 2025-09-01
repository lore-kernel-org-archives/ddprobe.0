Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAF1EEC0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756759794; cv=none; b=Y+GKhMlaZGdSwIMDGgUoztdah2+i7aFpdVcFFwDVVHXDhwBK5Bk4BWfafVcWhLXaRLr1advFIAJE/GR0qo5HGIuYac6HZt33WPAbvQe9d3yqv4bthV8ajP5GjMGSng2yEJsejQF1OKuQrcKQZqZh/VkY92Ad9Q0mFOoPnv0LjiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756759794; c=relaxed/simple;
	bh=Oh6eHLdhvVZ4BSia1xpXDVU9NcYxuaVJNOe92q2YGxU=;
	h=To:Subject:From:Message-Id:Date; b=tiGUbfXRfP6TOPP65pxRzus1HRRxpeIga8Ud8TOIif30LdhlkvqBFAvAhSV43eFnmPNgc0PVhmPzNl7+J0/tVpQotfs7rvbrzjOAmQHKz/nCF/Rz1GrJYLOR0CQ/rMxK3MAUt8J2HWVs7t4an6pxE+/r54qIznJjbD12LqHdBsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NisauHC8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NisauHC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A79C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756759793;
	bh=Oh6eHLdhvVZ4BSia1xpXDVU9NcYxuaVJNOe92q2YGxU=;
	h=To:Subject:From:Date:From;
	b=NisauHC81r2tLWM7/ucAdE0M3oTY8Ghpc5NSchBY/ci3tQlgvKzG0a9xK6U0fTl64
	 0Gf8yp5fP7NfA7QtIPnreDdqIoEuziJT0TXBHUDcyMGlbRth2lnYwDM1Gqp7pIkgnI
	 CLYJbpHsG46bRoSvcRVkkaDMJ0jDFGbtNwhNxrTkl6zsWb3VrYKIrJRJc+uIDMgbYG
	 N/f0bBUzipuTrURgT43ky/KRcKCThWmf5dZ0xFlzuZnuEWMsZf/Z6jN1y+Ofe+z5+7
	 lXzBOqRH3a/AdoRZeRQ1YrG5cK//V+9PS7Gwbxawyymqt8D/YAsbnqp6gC4phETpNP
	 cPGbRg0tlY5vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906D2CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175675979358.14504.8035424293591709506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e7de58fbdf217d839ef73465611b53b9f7b0ec2f463166b4bd44a8409e6f67
Date: Mon, 01 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756759793
