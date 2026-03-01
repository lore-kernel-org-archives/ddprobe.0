Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E9E27AC48
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772347494; cv=none; b=YELaY90Wiv1erBYN0FCjmitFTpMTw6ylXDNbkIdXzkp46m8OdMc2ivnE7Kx5BPrLAh3/fmeQg7opvVwGKUqL8PWqygPhXe3mErKllYuwn2QMoUNY7v/bqK8WxYOwXSuuHilMxY9V4jVo61davCIyCjxWfMI5//3BO4N/V0T8fHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772347494; c=relaxed/simple;
	bh=wo8guVkaSd/J4p9beDF1EROr40FQI9O5PgqJNC2xr6I=;
	h=To:Subject:From:Message-Id:Date; b=dwv8bQq/o1fKPUz7NekhhgWK/ej4LyFjQYO/LY9walMgXzM5MfkO34yRwXImHy6iEGUlbliPZt4zbVk/ur0qibdaFAgq9ksr4PJzwlsbbTJVUX3nlBZSYMmWKI+M7QnclP+Za00sfHOv6WK6fgPMI7JXwBaaTF6QchmF3uTO6fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bpOFfPjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpOFfPjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE62AC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772347493;
	bh=wo8guVkaSd/J4p9beDF1EROr40FQI9O5PgqJNC2xr6I=;
	h=To:Subject:From:Date:From;
	b=bpOFfPjYYraM73iWTT18r4u4QvbP7ZMsLrcnMiTJToxj0MBCGibWoEY8OCHG/QYu5
	 oO8aMWDqhGd+lEbPj6NcM/JCWE7FAisYN7er7UtWxPfeH0mddpK3oiXfQXoNOAAK9c
	 AUZY1bnYmN+AWXRHLWaZ8YHMTglxz7wsRlq0AIEk8ARrty1vIOuZkf0vFCt32TSGVr
	 L8ILiYuvcJpzshhuolWTzS7irge9yqWwP45i9Ubx7N4174MG9leimFMd9py8JxIDnK
	 IdnivfFMXrS8uTFYYrd9GFALtpGAUfLO2GjBnX7BTro1E6g9rX8/grME2b9lgFvrbf
	 zEwg0RpxkdLKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC10FD0056
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177234749360.32098.1569131900930898858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb535743a6b6f6732665616fe22fffab18b8bcbe0ebf49a281df61893e1abfb3
Date: Sun, 01 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772347493
