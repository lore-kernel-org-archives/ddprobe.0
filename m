Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEB9335064
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771964094; cv=none; b=JH64NrV4YHIjV2YOwjijflAVQKvpFX3QOrRzhn5n60qjRvBieAZi1+loGwFvSvBd80NFralMQXms47WL5w+p8tPDLqhECYDiXjDkfBpWqbHkICJTcLY/uk51Xw+KEDh5ZsVJ6Da1pACIfdxTzWxQgcFo+KMqMmScayHFMXbmLyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771964094; c=relaxed/simple;
	bh=/EURHVO8sFENUDhzFz2yPJXC79VpiiynEuNWAKRT3pQ=;
	h=To:Subject:From:Message-Id:Date; b=YTcyskHsGJwfuHpn3drqITCcX+n2mOS0z/JIq1Je8dQBisnwxQ5k+U0aet3hLjcaTx7f1OMuwhzKvTnXnl5WKUsJgAQFBCX+iwfrQG9RKaek2mxNzqE8JE8O1CGTRORQj+1oujzY6l/rKTOqaWFhUKxEI4xB3Z/9Qdpi+8L4VbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISNd8Y52; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISNd8Y52"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5886C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771964093;
	bh=/EURHVO8sFENUDhzFz2yPJXC79VpiiynEuNWAKRT3pQ=;
	h=To:Subject:From:Date:From;
	b=ISNd8Y52YuRGp5wR9f6yP9BnMr2mbnNAGFugQ+gufLFp6t/TLoMKGe9d4lGjTkGaI
	 onem5vUqGkdLK6St8MTV26GMTCDaf13Zhc8IpOTJWKI0DW0b1nUl/tGFo3S7tmHchP
	 HrDB+dfWk3KKVt4wTWLTMd4BXhAi7WdTHfCxiWu/y3F+AHtgDlNxk+dnfEIF5GwUf4
	 TihMTWBWx8rUBElaDRhgzZ0ZgVoxRbiDTL0aJjsMX97lyP0cjiXQmlLbm0LFA33Ipj
	 IvXndG4FBC2Q59jIa2W/zE6TWlpjPKTVIyEXqXF9hJKmE3//RMms7k47hHFab0XOpi
	 2v7DGGvuTC8ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B04F4BB86
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177196409358.23502.11062815535235302693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf14fc8598adb932becff2cfd7b1e57cd42be21c3a46e0874ed571e0abaa8581
Date: Tue, 24 Feb 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771964093
