Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5678C81AB5
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 10:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717409123; cv=none; b=MZa6yoXwhsmQPrUyjYWJji0JlcsAMCHcfWRhnvB5IXbaqVm05KgAdTIZ6ErcHzmEGmO/S58pFBLe4Ga/QltGjDfbKXdDmpSrYn7BbG75Ic4tSUSGUzGqxTUPlfai+XgmSCO/B12MFNTTaavOQlJWfZc1DMEL6kppJhg84B6OdUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717409123; c=relaxed/simple;
	bh=OTtN+8YANwKsjqM1RXCFrPFkZykE4zaTEoDp8BEAvS0=;
	h=To:Subject:From:Message-Id:Date; b=K/Lp9/vfMwtfaPqSMYEtzL4osjWGXHlSfhtzY36AGwbHhkafzE42EuX80u+4HtRTHg26FxlHOG//5YNgQMvLT4tFNjl/SilpXR4nl26HzA+QO0zz42AwfDqVB9qQ50deYvGF8OaJtGUB6XcnwRNCe2pr1nNKgc0STV9XriX1z6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNiJ1znU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNiJ1znU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4FADC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 10:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717409122;
	bh=OTtN+8YANwKsjqM1RXCFrPFkZykE4zaTEoDp8BEAvS0=;
	h=To:Subject:From:Date:From;
	b=RNiJ1znU8A+S7eW0unTb3bbUxi3pTt9tNGHCUhbWkV/I77kaR1STlqSWVyVPijA4O
	 U5rb3m1NgRQj66f8tSZssZmO95bsmECCgLO7vpVky0QZy5lzVGEsMeopt0esFM2tRi
	 Qu4I7YpLNCJF5y6vXrk07IPtFyyQybkNU6dRV7pl7Qp4O+R5EKAe2HPLF4yXa05srN
	 EqINabWzlb54rZPTvw8nw6wyXaCje0g7r6mWxjkiYLSzr3JoLQHRydx0kBPL7/odYh
	 mqVu6ZWDc2hqkmUPAP3gUyNYkMqjEvEyW2miBYXJoiuo/Z4ljdQMLBvtli5BSidgzr
	 X+qRXAVBCbg6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFA8C25B76
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 10:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171740912276.12833.15798984694302624887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea882de0eae3f99fa6cc9102885aa6ff0af277b3fae99b24ff7d525533175d97
Date: Mon, 03 Jun 2024 10:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717409122
