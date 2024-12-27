Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9DC11CA9
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735343154; cv=none; b=U/DpuaKUggdbNKiBLFNuQcz3Qmj2OD16qUzyxSOkU92s9NiPx3gDqNU+v5o3N8Skasb0w8O/ART2iFQLMZE5VMzNXIdRCDLbQks9aBY2kp1UOUvJJzG0q6rrgR5eQ5Hj6W81HsDkJeq68MsxzbYOfPORfXaKZvcbtweHAuHbemU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735343154; c=relaxed/simple;
	bh=waEQl5SydGB2Zm6h3z8wvJ4sjxIMki9Crql3xXrZQHI=;
	h=To:Subject:From:Message-Id:Date; b=lPBliqQpY6IyyWL1Rp0eRTrzn8dvk1gbbrd3DmWAtgfxdcoeK4JhFzm45q4KujYrH7Ygcxw53LBlBkS7eZiweMQofRJvbcK1Ddmcro78Ub8DYSkD3a9vdcfiQz3Et85EPbEMuKu03t5ZnuAUEahZzjM8YdCkq7zJdxPCMk2YDYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qULOXWcj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qULOXWcj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B49C9C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735343153;
	bh=waEQl5SydGB2Zm6h3z8wvJ4sjxIMki9Crql3xXrZQHI=;
	h=To:Subject:From:Date:From;
	b=qULOXWcjswbR6eWlZ5jpqssODg+DtaR9cub66qrTAqSu76mWTaRhBhJP29CJ3t7Un
	 OfCke7VzSngsgSJ1/gj0A8RMaRwAPWYKbzwMAt6vFki7K9RL3K6Zs8t04dElZev1K1
	 llWCQxcQRmQQ0ih0zwHBjg+BlAGns1qSirXutOUOkbx/70ajs4DQSKE4jhC1G/6J7s
	 aOzbpErHtpFgONZXH5twSQECb3KebuMoO4tLsCZIrMy5qv5et6LWHedG3Edc9fKQjZ
	 sFs1yDzKJXpPpcB0+aqXZo9sNpAcHIbsLFCasMLDFemG99xPnGzDSRpGiq3i+pcf43
	 cKPZq24kLzsJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1782E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173534315363.5925.8096773459993983065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f273cc0f6b3f4d45e6d5d7130b98e90194858b18c990d4012d9c899fae44db5
Date: Fri, 27 Dec 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735343153
