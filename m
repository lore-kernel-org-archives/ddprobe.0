Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383801D90B3
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743185994; cv=none; b=BYi+aS/SEMG/vNXXQXrJNnt93tWhbrHuL7f+5Iscj4V6xK0q40o/0moPpv6YVp6ynOyn6P89VVqUbm/DEV9c7ERf3HMQ62RMea7uPLJ5mR0548qD8Yrvt6cdlZUaDnGc9fvG6ysVlr5N+gF9eAt6uQ9lcq6VFcrLeJYH35diR9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743185994; c=relaxed/simple;
	bh=3dBfb+h0GBteKfeRqp4+iTY2JXjagxesbfOOV+OgbJ0=;
	h=To:Subject:From:Message-Id:Date; b=OiuBtaW+Ev+/qYKT9EFSJPE6SgW4448Z7rIy8haeibE2biP+DYC/qDlykiyYW/0FoJHKFx2u28KjMPof27dfWkbLcSzUcu9wrWird0L8Y5toHjUET1FKQwmpbQUNL9XrfMeUKhRei568KtT5XyOdTac8RqGhuAwYY3+fdgYNgBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xq+SMTRM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xq+SMTRM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDCCC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743185993;
	bh=3dBfb+h0GBteKfeRqp4+iTY2JXjagxesbfOOV+OgbJ0=;
	h=To:Subject:From:Date:From;
	b=Xq+SMTRM7+6M6B1fd5UxRmWPNZvCNri0qHfpSFIHaacMzAXYTZzMy7VChxexBHY8u
	 +8TWw8iwFVhkttyXu1G84DywwVoQ8hb9vf95F0eeCKl1Id2Vf6Y2PLVisUNzeo4eKd
	 aLCmVmt+P98+7GL3p+ZAvdQEAyDTnUFUdaEJAjSWM8kyz4lpq/ANs1H4yQnJguR3vf
	 wx95fsPslomu/1tLFtjdhnLCV0ooynvBDsjVdwQRBBO43JuI5SYUmBtrRTz9Qou+lU
	 fhg5jmGJfQxSMO+rHK1Zdwruo6cq/S/D0IvgX0Lad9Dzlda1ZXACMF2u2FNVTqefgS
	 3kaKdDbtHEmtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8A8C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174318599362.19144.7397197325894041762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc58698feade3ac0d27ab2268b43c4f4fcc76da0e356a6c145da8604817b60f2
Date: Fri, 28 Mar 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743185993
