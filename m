Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB0CD50F
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705643297; cv=none; b=YtUVyYDqlLYVMXEAyHpmr00rC3McPnG39W5mmmtP7yy4YP2HZGBqzylg8MDJlYHZb5zYkkirA5dx+XVMWpoEzGjzJfZ1tSPADHWepuYebAh0SfX88y3uRSzLrKbOPlBBCIIiGl+qziAl3nwjnLa1fgKRPSvxHKqD1EosnJo16n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705643297; c=relaxed/simple;
	bh=gFxrj9KFj5Lnny5uj3FwQDuPfLifS8c/VaZw208vvBs=;
	h=To:Subject:From:Message-Id:Date; b=AuSzD9ZVjFzsBiMTD+uo2inwL4Az5aIw517dTITnJzKAqx/YVxAGDv2PB2DhKpaA3I9IGVO8xApa2/V19noueb2pr91pirzqMqAGjaB6VLX8nEm8VzD7h93i/6WAvMTR3WI+YMHz6QaWFMo2vOxd+QBXvHLrgMb4M3HtBQlt6jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nAnjmVUK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nAnjmVUK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7452CC433F1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705643296;
	bh=gFxrj9KFj5Lnny5uj3FwQDuPfLifS8c/VaZw208vvBs=;
	h=To:Subject:From:Date:From;
	b=nAnjmVUKGGC0X/rsVZNNknW8IxOKNfLgubREfQz8sT10ljDpmw6OoMpXko0aK2Zlz
	 VEJ7fh6LGIcm7LgiqDd4fJG99tW2TqFBaHRUvh39wkVt+QXdwV55h0J+mL1FQew0my
	 b99DsEYT+crgw1+y55Me7CH5YvaEHwIZ+XJI9wc9oOGuMloG5X6veSbuxAC5sl3f42
	 3urHFb3QvZorl701IFfNau2MIQSTvuc2jQB14KuVDvtY5jB3iA6ZoNPpzdzGK1z/Nm
	 CaUHLUusSFWRVywiirbzc101fH1/ezfouye5tpOHfNohmzL9LVnJq+L2SJg7pMXaGQ
	 MhEyfxr8jOP8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DA47C47DD3
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170564329637.14178.1473794396050466962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d785fb4782c909930a0fdb1aebc93a08639054daacf7e85339ea0889f3b6f42
Date: Fri, 19 Jan 2024 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705643296
