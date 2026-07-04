Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 788E6309EEC
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 05:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783144114; cv=none; b=pqh+OY7IpdXNhfo9UKSP167YlxQEH8i3HqdN+hyq4YA6fsIjNM0uvMxvpNn4DfdDaN/0FpzwPuD7ldI9aiX2sLBVhwRM5wLviVrWZ3v6uzNSGHtwSPuHCbec4g6RzIKjti7rXcEqOt0Kqdo2uYoKDGS6c48k1iyXhJ4T8mPLLV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783144114; c=relaxed/simple;
	bh=2lHhaIJm6ed59uxZTtxh5nHCJiul8mQNJAp6n7pCsCE=;
	h=To:Subject:From:Message-Id:Date; b=md91GnmOIDc2K6lhML6ED4gyvlP1E8UKMdT7G/0HERsegTcBDh59sFlFkOD9oJXFzvBd77DuO0INER93jrX+B8BDTGtprZ701Z6HArWNLpd6hDdFxQ+ELS1nbkPAzMYMucFNT3ZQIpkTc9P2tTxzguWuM84JkrCzKsCJSlBjjd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RnkatHgy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RnkatHgy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF26AC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 05:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783144113;
	bh=2lHhaIJm6ed59uxZTtxh5nHCJiul8mQNJAp6n7pCsCE=;
	h=To:Subject:From:Date:From;
	b=RnkatHgyzU4Av/kbxtgB1RCM4SYuV2DiDKSreTEhgHG84OlixVPPhc8YFQ5BbysJc
	 G5XF4DXbS+kfjgOT/+Y6aTZ9V02Jt92k3L/rzmbSSJiRe767vOGF6RY7L3TJkcALUY
	 W5woNJDkhC+fQXq616Cm0pm/3ZWXavAu2r5Bbt7ZPznvTjjctXMmwt2IILpVnITCyc
	 xfq2qHd0UJll2pmT44Ihz74ZVPSMiy+yUma0c+J9qmhhzEfch1gJ6jRv+N+K2qBIbe
	 IPs0uAPcC6Es1drsnbC9O7pZyd25s44Uuxna/Sk0daxcMGswf5T9/9vS8LcLqVEzGB
	 8CQ9DlE+gA85Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD28C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 05:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178314411368.9036.2061877073436644798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7509ee34e99fe8b2dfe3e0c7e7e07d05e4cbb5d2e994f42f338e4afbf451fb2d
Date: Sat, 04 Jul 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783144113
