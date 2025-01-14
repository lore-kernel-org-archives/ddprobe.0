Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0E320AF6D
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736895354; cv=none; b=HFiWByJV+IsHcrJwc5kEmwTvfcZpyyCwg95mKSmoS9zA9OljpTnZTi9CsWoFtziJAKlahhtVqV6mRCxM412+nNz+RYlWA4jv/6DBSX54CMi+g+hL1GtEZIvcNHr60zn3R6RGpRGQIwKBnXNiv7rKCx1cdF7zuuK3ivkoCtGYzwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736895354; c=relaxed/simple;
	bh=cu/eAsLH5KBEVEezEJHP2GGn4XlhKVkHdUztyi6mozo=;
	h=To:Subject:From:Message-Id:Date; b=hgeubE9td+2iqlns+IlPVYrFaZ23aQERi+4Y+CKFbNygn5B1Kcye0gg6F3pTpC5NpT1QYlHpGoASw7HK8F5RkZWeeFIudX5m0Ak/Rz8OFHcT1gBdmQn2GYEIJb9ktTQW1TqNauA0mQBuAeT8R3HC22gbTv2emgt7y8UrwOYTpvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIv1RmXr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIv1RmXr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F3EC4CEE1
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736895353;
	bh=cu/eAsLH5KBEVEezEJHP2GGn4XlhKVkHdUztyi6mozo=;
	h=To:Subject:From:Date:From;
	b=HIv1RmXrN8NH/Kqq2g5lc9J4mXQz7CKfdzx/YGLB/vPQ92qTQkfbJg1tAznjQXnMn
	 kcZZrUks5HudqGq093wvBoy3mcgCSHRO+1568C3A8EaAdyZuIL6OCbSj+aao7OvAQZ
	 CoLHp6AL200dlRLVXuR4k0XG/ZlwxjJuLDSVT7R37l4qxtRRXRKdSaG/rHURq3n2nc
	 ME7JVRvcfl2ZNamj9DOZs3Wcrg6zGoJdEs2fw57y0FaB8fg8NrUIDIZC/IGtQMMjWi
	 Ba6ik+6lToLmUpBXXXrSzyzo+CWvbHaH5KKlFKYIP6txfE63KuYGt9+U/W7cECxpTw
	 srV7jtMQChFBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9529FE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173689535357.25158.8798204127487035431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07c7542b75379722ac3e7adfaf4b4e9093a83e821b7390c932b996c1c3632813
Date: Tue, 14 Jan 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736895353
