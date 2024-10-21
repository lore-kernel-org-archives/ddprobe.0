Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5F51E0B96
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729521354; cv=none; b=p+PTvcANhJtTVClGa4VaJG6VxL5gdDytPQ15vSVOyTlK7jdBVVejpaJUdhnDNxT49lWdea95DXVblWckAb9bmXsdnxMTBRg0S9zjL/5Ql3OgqarOJ39JHxrerXbNzhINcQZvbld7FspqCQxlxBOoYnKBgicKYs74b+VaZIXG6kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729521354; c=relaxed/simple;
	bh=Ivph86rm5nmLM6kU+kXdFgMsohzOxEbPo/GQC/Lrh5Q=;
	h=To:Subject:From:Message-Id:Date; b=JebiVbUKwBChfBdu7TtFAPWL+xUu2p7hBOQSBXi4NFLvG3lyhWOjyPg3F7/49yyNTnGTRIrW13kGPDfXyvIkjWlv62mvxIiWgTtNg2YrBybQutAgpOD0pBIdCl55ARUpFGUXFMP3S1AuDP9MkkiMcnvx9ceMwvSOTPF5i4B9IPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBJiUX6m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBJiUX6m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36D7C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729521353;
	bh=Ivph86rm5nmLM6kU+kXdFgMsohzOxEbPo/GQC/Lrh5Q=;
	h=To:Subject:From:Date:From;
	b=PBJiUX6m/EE17y8AEaHXUvE7IZ6lprWbJ0qzRGoQ6jEbREyaRYGxvgko9FFU9o6zG
	 WcRxs1zd8r8lhzNGEZtq3lQR4dHb1cqng7TR0Pxd1FVclQgHuRlJO2jVNdPUq54BLt
	 PacskDOF5HfCmnVvRBXLlKxNywqAner5pp+hmxH9g6nCqblv7CK0zCHEDvOoe1oUcT
	 MqjMT0D+93d7EYCqGWlsfquBiCY6LU6WYg8mcMppRMHiO3Oq45ZRvt+LAH5rEjIn/n
	 hznQ0/2ZwSJpauUa/w1ZKXwFi/3uDz3HJulew2rt4ax3c8hyNkNzhoy2n0+Ii13TsE
	 h/p6acVJ9Pnhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D205D15DA0
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172952135363.17497.4470248315400133392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01fe56597c881190a05acaca4aded9240d6824014505afa31070752551c75c73
Date: Mon, 21 Oct 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729521353
