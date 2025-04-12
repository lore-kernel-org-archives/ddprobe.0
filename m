Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6468B17A586
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744482595; cv=none; b=JdmPIkd2ZnKtR3XJtdhxapK2u6Sn053dgJ20jV6fmM6K7YlEYzRNIdivc06HM0fXqQz5vTlJCiwprzcZl1hqCexRQKqF5D5Q8SdruapsL0iEK8yAmVCYdELfJvgNzENKriMs3ijzzHx9/OWlMd8dmYtWrik3OEr1YRjEjGLyq6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744482595; c=relaxed/simple;
	bh=vXz++cqmeRS55UOXr3fI4GxsnOwSP+VPhvhTWMkXukw=;
	h=To:Subject:From:Message-Id:Date; b=cyDBo/fVEW3997thRwbn62z5UbeEfy5Qr0v0hrzLtNRPPnYNuh0X/16TUlTf57vomJNEJlINBPG1JVZ8Jnbt0Dq8co9FjmdzpoljEJoHwl3LNHB8e8A1me3V+1aHh6qwraQGoYUTtL5DxtztWXvEaOW0xi9HJMnmi2p9UQKVBoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSbcVg3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSbcVg3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35BEC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744482593;
	bh=vXz++cqmeRS55UOXr3fI4GxsnOwSP+VPhvhTWMkXukw=;
	h=To:Subject:From:Date:From;
	b=gSbcVg3PP1gXd5Ub5bc9RKVJSfXHbEJzIu4ljVdfbKxqhC5LGslIKsqaL4T5Mst4F
	 0ska5kqO1htO/QoP12RfygMnYBnMOa2tPVNYhf7lOajQps3IsuuOHwaIZc2kpPDfuX
	 WGqdiw+HqLKwREon6on+G40hnWhWwv8rGhzZVsScLyXIfUAqAL4l44DbGyYpDGCZQ2
	 9+4E/N/Hb5uHZaVAVOMMb6XYe0GX31ZLJP14iXyRKRiT9CZXTWr/nzIuMAeb37bPdI
	 gIbrObyaFqIHKdM1QribNe2Xjc01Cp5+ABc9J4j7oNJLOnDQPWYX9QO/En/CW06S1x
	 f4UeqAu15B7nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97A6C369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174448259366.2188.2507621855401151879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e44480ebc27d0f1341b48cb079cd459e4f055f2b74fcbc1fd3c938b026bbfe5
Date: Sat, 12 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744482593
