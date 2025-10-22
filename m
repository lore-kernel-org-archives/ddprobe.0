Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3422C0277
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761149994; cv=none; b=rhnFQoBR2enumwfzkAkaaT3VlC3rE9kPpcFU61qKlejXrzxWPRpy6pgTWHI8t35wSdrntwVGTeylzCmshi61DUoMJ4boSuRqyqVXKd5bBRaKdNaZ8we4/o8AIduztllrrmZa8HBL23Lf4n2Ygex9c+CLhcKhKIF7hU6j6IybpgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761149994; c=relaxed/simple;
	bh=+1gVc1L0HfF2t8MZl9JKPPNzTXLEsdPHqhHr7O/1TLQ=;
	h=To:Subject:From:Message-Id:Date; b=NB5aNEjDONcNN/UOQmm86ocnsxVnOFa499qo/YxWI7j58WSTlM/JPqiH7wJwXl7AiZWnBhFk01YfSP1OtdDgwEsKAqlWxILZkBf+vlT39pX3ZykDf39Eu9ZejjXQcbDWb9JMnaBjjTwmmF0ducMifarc8OkMVwo5OrggMTOcohI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMD2H5bm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMD2H5bm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F89C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761149993;
	bh=+1gVc1L0HfF2t8MZl9JKPPNzTXLEsdPHqhHr7O/1TLQ=;
	h=To:Subject:From:Date:From;
	b=qMD2H5bmEKg5zKF7yLNwww/n0RiU2yOwV3cBgeMGJhn4/bdlKNQ7s47NjBJI5KuRy
	 XlCPviZR3zSVbf6YK74gmXJNAPxAi73eP+KkNy8/MMz2AbH2RVBIC6R9UI0MMqIcmu
	 7vcVB3Hm9CsruRSSkcNtbGvvDfYLL6BYQUuv2WIA3yOGVtjlta0ED/7bnfhglv9NVP
	 1PURDtrud8oQzNjgrdK1WGx8u8c6oHX2PJbNnwgjRnxa4zsldJ5mp65E1OvpzICqLr
	 kveMxwLS58OFd8e+IOyFGhYeWJGe+7XqcMKvnU5oivGmR11pWmq4VWxeokAfgfS328
	 lT3v3d94rgQEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9141FCCD1BB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176114999358.16011.11969455083166338793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 136478f2e98e28ae2d028b011684e8a4e391994a84c24af4975047d71723e54d
Date: Wed, 22 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761149993
