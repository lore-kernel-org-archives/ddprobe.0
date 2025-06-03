Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317FD26ACC
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748993394; cv=none; b=sYPIpwGV/0tz14vkRo4j1A1R3s/Bj3JsiuiPWtgXYK8yv5lSufG6qH0dZCfOzy/wgHg6EzAuisVDjHvQFYSvS9CmFCOTOi8aGvNVcSXAp1asJTsz8mIKRNn2YQ1SndqGwbr/2gwW3Ng6p7O5cy+uppyYaDlT7WsnzQYErl/KyDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748993394; c=relaxed/simple;
	bh=qzSgIQjqat+j4AVs5FLWFv4Yq3xP7Ho4cv6A/sN1Y5Q=;
	h=To:Subject:From:Message-Id:Date; b=i4bhep+c7xKS8PnnF09FAJFoMhcOPBqoUFsZiWdKbZAv5MflXXdnlPuE3flU5yzQoQEKlu6p5Uie4y7vpoeSPf02kZQZrMnKbCC0L7FT4uNV0wRHkpkv9yQnPN4+t/uXffquzh9+4P32itwpJgmAF0xbsh4y6eXpbTaobJRVAdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jF/SnXn/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jF/SnXn/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6F5C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748993393;
	bh=qzSgIQjqat+j4AVs5FLWFv4Yq3xP7Ho4cv6A/sN1Y5Q=;
	h=To:Subject:From:Date:From;
	b=jF/SnXn/tihsi989nRgHT4yrygHLXCX7XsyvgAAoigImEqzYqmyJnGB7X9LQirMn4
	 t+s+5EhPqnl60jr/gmXKt4TsKCPhG3jSvJMvg1KRUe1PDZa2EqvFd9ZPZfQx9ubg//
	 pVipnvi1Cpc/RYj/FzKhCvyVewDlarP8MORhM9eiA4vwGCHa2zfU9Qom7+mDsHrbpW
	 z5Dn2OAuFqn10sgVD6wdCCwVFF14ZfkFUhJGeVOZlhzDZwU/EwSs+QkYWwANRAmYaC
	 yhXczWmoD/1rlIn8e0/S4/vG9WZP+B1PChyEoWOr8ipPcduS4nXlCcz7Ra77iVi2Iz
	 mODS4BusFq8rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F572C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174899339357.4581.16175799971675096870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee694e88481bc900ac5aa1acf4052bc4d5c06142b37f7d6bd87d4a8854e0a61c
Date: Tue, 03 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748993393
