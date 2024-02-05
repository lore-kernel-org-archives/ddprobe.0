Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125F44F5EA
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707157697; cv=none; b=eYTtq+ib4W2lglxLYzi3IcutqU98l9aNmMyPtGmQYtQpltY5m2JK+2qUYkqSzweb/Bbr9FayqAR8EY+B+NwIAgp+WSIkVozJ3r016aLsCTiLfP7NwHls2Y28liMKF6rjMDpozJtsRCNNkNdQp7DB/UHQtv4EREDPwJ9KI07LpxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707157697; c=relaxed/simple;
	bh=tKdoOW4usx9HYoyey0DLhW4uk+PEXl1F+v4YFAygvT0=;
	h=To:Subject:From:Message-Id:Date; b=RJApUcOxcC/KLTzf5Uumx5RFRlwQRytAu93S0/9+NRtQ3uL74iKGPVeetfcOkM9VEyhdXqtsuFqO0oXbcNhJAQZA/x6imZLbKf1s1IXTUjSGVLIP+SUjhY27m5jch4QJ51HjLAfRtjUwuJ75J2oyXw0ddr4dELmxkWZk7IWIjW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbJzo4fQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbJzo4fQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8102AC433C7
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707157696;
	bh=tKdoOW4usx9HYoyey0DLhW4uk+PEXl1F+v4YFAygvT0=;
	h=To:Subject:From:Date:From;
	b=EbJzo4fQRVzkX6KqI24SInxWek+HDduFdayGipRPICyCBPVL61Q2c1FTR6ZjMhHKa
	 eUp4RXwPlv8/LVYzUQpPCiwvNuOI5vghztQckoa70HzONCgr0JvQuDELTBKBwfIHZm
	 tXvtIB7FTLi4PdopiOl8E9Co1mjQExmxWHyaF2UEay65r+NVNOG/5GlaflHHm92eJX
	 mM4W1Vh2Yh0ReDil1nwt0dShy7KzLS13+trTinyOl0CFycTIqDXEALXXKCt0L4x9aL
	 jU65ukkGODgZaXvpNCbyu0/QB4j5uJoAVbVYiPa5834q0CUk0JNdJYNGKcg3YN17Sl
	 YtVVT5qwCb7ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65CA7C4828D
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170715769640.16603.13404903930268509822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5561cac8a8fd150361f5591030b0d35aea75ea705c3d900f417b1cc7686618d
Date: Mon, 05 Feb 2024 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707157696
