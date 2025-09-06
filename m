Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD57A86334
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757190593; cv=none; b=fSG1ixL1kZn2znocIKM+4qQqKgdVoukShaD0V3MAdhKKDfWIbRW2KQlbjJTwwb1O26Lkc40qFUJoYHfWRKDtja9J16WqyM4pKdbXHR66t8II1voPOdJApA94MMqF4/7QhbDgUtXrKeaW/kcNm6QX+jXi17ZQv5LNUlBsXUTi+X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757190593; c=relaxed/simple;
	bh=0dXaleyerkxd4ts0YUb3hE/alolYuCJ3KJfCpxEE99s=;
	h=To:Subject:From:Message-Id:Date; b=XDRGwmEtGe1YBhtyOTwBoil3jmzKwL5idc2zVOSoTG/geVmXJts8T5Scdwa+oxOvFFMKV3shWXiA0KFVgrRO4T5AC71TDUsFCR/jCCB0NT+k23xwOe6Fs6doLgYUW4uAlT1oWgS+OxWnf1XaXMcE25PgBy3HDVsW7ZRpxSRSo8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXbGynf0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXbGynf0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD31C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757190593;
	bh=0dXaleyerkxd4ts0YUb3hE/alolYuCJ3KJfCpxEE99s=;
	h=To:Subject:From:Date:From;
	b=AXbGynf0kLGBP8wCEXPk+sgsEx0a6oVGb+WS4OxqChaMF+/ULLdTP/BvSck5OClFq
	 IUd2fkgJo0H5XPjslDdXNJPQMt89W+GpmQLWXXeNv/KsNMiPtJObRb4h7GWmxPJEbs
	 eifgj5nY0x/ln5C+RWsir9B534ahPx8oBhX5BayEikJpZ/b32O8FcJKZOVfTgAZjOJ
	 NFwkw0UNuo9AGpE9cO49qM3ERDYcShgisC3Vprxka/g+lDm2lkRjoX1RXuR+cwG6Bi
	 Ct2bzg6WsMIcbq1UQfYYMOgHBVSCpbQJojBPyHHvQ4xJO6WmFYj7uRMQSWrjmycDft
	 jP0MJDXye1q/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E387CA0FED
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175719059357.19853.14975346366917892544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 301cfa76b5542ffed9862702d6f2a5680d38e65af6275bc7fff9e997548278ba
Date: Sat, 06 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757190593
