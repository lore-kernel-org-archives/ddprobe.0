Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1F3184E
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736598954; cv=none; b=nHjq8+MP/hdfRL/6OdCvmVoxu59aKseKys8mOi1WhTtcvIanbuqZY/1W4CUQHgUplWJGuSV1IshxrOVyOHTcU0VPCjKaVbx2i5O5w+lbF8pkjyfTMfFtneCi1Ko8fX+5JjoY2K8vaPxPIqwYFy5jLA2Dev8Jqppkf72aAJht6LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736598954; c=relaxed/simple;
	bh=+0OM9UBWTnkwoqZomcu39nF9iwHcgNOlsJcLoV3w2To=;
	h=To:Subject:From:Message-Id:Date; b=bzldB2Hy7vAWNxlPskThf+CiZtVk02YuQDFfdQ77c6PvWwOrkRPVv4YOJ5Q3On20wmuKYpUhR6Z79iZFdna89yakjh0utUAlZp66acErHBwUbePkfLiSmldyVDvDKDdfGzCHyCBRCbJR91ciE1h6kiQLmxmLsPLPG3TtM7g6LuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JfouxjMB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JfouxjMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AA8C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736598953;
	bh=+0OM9UBWTnkwoqZomcu39nF9iwHcgNOlsJcLoV3w2To=;
	h=To:Subject:From:Date:From;
	b=JfouxjMBMk+xaeunKzDWQqfbJPhJicOtLeEYgAHQln2BeHZwVw3oDBSvZk3u0V26z
	 1I0SWgIXa8BhXKxdZJpeHnOy8vUtBiv2+7E+oj5afKfiLKLw1Pawhbg66SF9QTE/Ls
	 ppxmzaaGBwoC0CaoGMh8/iSNlCIlWv4IcFtbddnyyej/uO9kbl6DiZhNNIqb9CVEmD
	 d+QdRGIt8q9c1h4UUPS40c7jtEw+JDO3Grt6ibj8SX1aALB8tMFNq5nMw7995dGOqP
	 zEflvxnC2ijDGAMBV2uKfFLfdkTsYS8ItRd4Toe3Lqfib6rK1Goh95anwwHoGsapqN
	 3A566x/OPgmPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95656E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173659895358.10242.1747405874625752404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb3129a55f9eb9197321d825a5b24d4f9499faab3d7a1a67af9e9eead27dd006
Date: Sat, 11 Jan 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736598953
