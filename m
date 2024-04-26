Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571ED13B298
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 07:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714116143; cv=none; b=ShLw5OTdTUqszws/rNJIQVu37qoI+JHXVZZ1rPtNdKv8ONKFfnyjr3ZN4ce+VaDVwIfp45Y5qy9dO4JDWYFpixi70G99mNtJgWHsohMKGm5JdLngJN2ouqVdZTre0o4jEb7VnwM7GccjSIOtd8Brc5CLVtbkORmGyt5x1lrgw+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714116143; c=relaxed/simple;
	bh=/vgjuWntxeFv0duZYvYFk2/EyTOj9xPA8280NV+4T0M=;
	h=To:Subject:From:Message-Id:Date; b=VfOkX+AcRTcn4oVPrFI+8LtDfWsIl/8FwEykXclElK28qoW2wGW2XA0/3gd71Ce0Uix+JLrWrQKpTjWX0E3Ex9wa7qspRADH4GBT8u4jWH44IGNUlYFSZUkKZheC82vfNJMt7uHNVp/pQnNktaLqe2re6G3lMspO1JrFs0W4ZnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8SJ3HXN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8SJ3HXN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE2CAC113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 07:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714116142;
	bh=/vgjuWntxeFv0duZYvYFk2/EyTOj9xPA8280NV+4T0M=;
	h=To:Subject:From:Date:From;
	b=H8SJ3HXNjRcrFgiOZ89iLgVqUWSkWh0QNvMqlP/ZafMhSvOREyEyM9njywjnnScRf
	 ftXlQ97qNiNLtOsLYmM290Nnjd7cM3BywO2HVBD9CeOBQyhVuw38mxCB8hh2dpNr7t
	 jcvFlR+zXzE0nEF+dlRRP872y3M6RAUGIjdZrEYfceN3pm5vWJNHdizdm10FMrGeAz
	 +ZDTbEUVQBG2wQQVn66WWQBOajwGkvniQAuArG6CxWeCUt5/eDi4pyO4FxM1/fUmjj
	 xcQCIsmJ7urib0RVFFnxp9SCPgjXGg7unATtcPY91vqCwFCrSyIiGy2qdbyTlpbWwL
	 6WPGdGwIss1Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C755BC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 07:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171411614280.7070.2191019238270825759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 221003e570c3c8ff9b8ed04cf4c2d8931f06ecf0c571973c632ea02e3ea5dfa7
Date: Fri, 26 Apr 2024 07:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714116142
