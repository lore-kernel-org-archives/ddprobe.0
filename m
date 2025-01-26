Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B6FA59
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737870354; cv=none; b=mUJ6tYqlcgovl85/46Kb6EA29gpDTFeDPZWfVXCHCjr1Mm0TdMUVqf1x2YATRZ5u1LrsO6h504ph5iyh20kQWWRYeSW0GUckd2V5X5Q0ij9Hu2mZWq1J26moz9sYFQ9jEUtM8BJB0lpDVqYrVkeMolgWjhfH0YV89P7W9Uwtal4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737870354; c=relaxed/simple;
	bh=6C96B5DeqBIE9VTYvkRWMvDSZrhdcw5xnzuHSYXBQxA=;
	h=To:Subject:From:Message-Id:Date; b=o9NemgXDu0/dn34/1m9lgHGSmAn1CzgZvcHH0L8QQxEw/xJw6v8XcPiGezJefKAh2TJdRSt2rsA45+AP7Io7efIJmjQJnyZSDHPKF5xpnWaNXiJhurnhuW5culExTIIJ3z94HCno1Te448jAt4WOecbaqY++Vysih6swkYPN29A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SyuL4zWJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SyuL4zWJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9237C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737870353;
	bh=6C96B5DeqBIE9VTYvkRWMvDSZrhdcw5xnzuHSYXBQxA=;
	h=To:Subject:From:Date:From;
	b=SyuL4zWJvWinz+9LSbWsJfXc1kOax6xABfkpzHOs8KLw6iiI3tUHyKoRTC1qEwYzi
	 sBWD8RcRjEaYt3tiBwVgfwbp49xavTBRtCVGWkVfRTRK1Us6c8PRKQLQ2h1t02i/aR
	 ndC/sqR3+OW+ngFueaiNvZgz1NFuiBqqyR/ACuzQoNPUXnvm14tK6i8P+dUdIdsxkE
	 qkkr/vTnF6FZrro5Cr47faZaqbs028pCCFfA7L78ewQ6rrjdsDwWaq0u34JO7sC13Z
	 jFBBSvkCLl3yJVeiTFbqhdtvJIGRAjU5Y4dmFWjt8MDZko+PWI5qnZitC2YykBaGNQ
	 95XHFKcnb5o7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96256C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173787035358.27482.12331038204181841319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddd7311e53996d91dd945f64e7c41f126cd22f152bf64fa02a954a55c6ced22b
Date: Sun, 26 Jan 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737870353
