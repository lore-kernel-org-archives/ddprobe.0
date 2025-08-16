Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F0419E992
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755358795; cv=none; b=Qw8Y1VpQ+JRv6AhRtFv2ufqyw128g3A26Hu1VKLXQuRC0JL7SdzwQJrik9Bh4whLS9LYfjguMk/kUiE58tSmu4FdWw8wMZ0yGBUK+6SNwIyXi+b5blfuLqas/Wuiqva4TnTS9r0aCN/e24citHwzba/O09of6XOXuFKTScbQ5GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755358795; c=relaxed/simple;
	bh=0f/32kkTDEuxW20oDRwIejbzM0fExmLtLloiJpPoeEM=;
	h=To:Subject:From:Message-Id:Date; b=e1egyfxP7TW8U30NkRw6BvNxLfIFmcYjFy3hReKWclK6t2597/OSFK0xVGdgN2rDmV5DpsDl0QhlC87b53ZL9jj5Wea9i8AJe8kk+BvBm2Iu82SimVfsJFAspPo5Oi/CA+iM90F+JqeE1lD3Ovvu31FBDwmaKet1Xipc8ta4Kcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LeY8Ck0f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LeY8Ck0f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98FEBC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755358793;
	bh=0f/32kkTDEuxW20oDRwIejbzM0fExmLtLloiJpPoeEM=;
	h=To:Subject:From:Date:From;
	b=LeY8Ck0fDm0LDyvFQjVOZLvlXqktSi5fVjjMXfcEguUxAYk5TgrQGw0bWrkG+5Z6A
	 tjrnLS/k/gQe5cgtosFqNO2HkHwLYsJVAwPWXZ4XR36XSjyGgHPzNsqFO61ZCbCyuC
	 Q1Ho4O7chwSnBu+Ge9y2cbrJkN2PBoMufzjLfc+0xbY1bguB3tw0gCc/83gKoY7JZ6
	 lLP1u8HJriJhRB6JZRJ2/5QzJpt0adIJ63dzWigRnWYLsNOdJaouqTmIqK5QtDxMGj
	 +PSytVVLRVhJdd7X/8NfIbeu1/YFmQhCdVJysVDavwDZSWBfJSznN1JNlmUx7Lft7e
	 VQMh9w5CVsrwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C61CA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175535879358.29256.19255959684961723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19b45c62f5245a41298a79d9083efbfd91798f3b9c8886468dc4277c338c8d83
Date: Sat, 16 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755358793
