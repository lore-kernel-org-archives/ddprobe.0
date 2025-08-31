Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD941F3FEC
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756652394; cv=none; b=ssB4ivHQQa7rL3lEgs11Ofe2zdXMDzOUGXZAJ0TEI4y8+a2BWHNuax5Q9P+JqrbYVKuzf0o7CfV9PTXH31Ue4qC+12jAHUe0IQquatY7F0cwAf72odX90m4b6hDZ22iP5+rxOjrstJjmyYy+2368r20+PuizGOnf6+JHlL+UrVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756652394; c=relaxed/simple;
	bh=n9OSlvb5aS2G+/O1fYrB04rHo5/NWqmYpdRRO1JOuQM=;
	h=To:Subject:From:Message-Id:Date; b=cii+kMv820ZjpWdtLFCt/x9zaeiqWcl6Hftvb6DlcHHUlxnajdLMcGc7kTwm2YOwoNYIJN+yFyjSaofra2RbeuTjfGbUWJm/InFMIoDIkvIj7dDVdbC4G058quDzpUh/+3Pe+DlHs4NHero7et/xT4Ggav4IELIYOcJ1cPqNTzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qZZKdavr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZZKdavr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A168BC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756652393;
	bh=n9OSlvb5aS2G+/O1fYrB04rHo5/NWqmYpdRRO1JOuQM=;
	h=To:Subject:From:Date:From;
	b=qZZKdavrbaMOaxggAK4a++xwjB0Ha2HvpxQSlcSAmx0e6ekudkheKPK8GEHteaKl7
	 /XPRsBch4gBxaIOLDemZs+QYOzbIg5qaLrBdLoPQ0eBpHrRYnJM2KLo58uX3OYWOhU
	 GM5eJrm0FEbY92Qn18lCDh584dcgOVdq8L1KBL8csWlMRkGTejnJ1DeiabqqCChenB
	 0jKcj7g/IiEgn/JZRDQBVsQbuEWwL8n4BbDZs1biGJIvp4H+HJyjRVh07bih15lwWe
	 k3Ml9Mk30Th/1KDsM6AKdAjAzYYxvRmzSiWhpDdqR6E+89F3PSgeKRXIE/okWrrxOG
	 S/WNBsuXxoeAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB19CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175665239357.17645.6911566397586298632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 844e66a44974255a1c491a680e98d9a33aae2d1db5b361a247568ece614c84ea
Date: Sun, 31 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756652393
