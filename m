Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3CA18787A
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731696954; cv=none; b=g5WX2YRHbAR2COsEy0AjT32I2XSuH6sSa4dKlhxOsV268zCD66W43ATSS+wh/vFbaKnBU41e/y0M3GMWnOVWIJXTBLmEBtzmmMtbhp8vRxbJMY0mgdRiRtpCIlapMtOwUZJztijEzwISH6gidjEYV8kHTR1up2v8ifcS/M8KKfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731696954; c=relaxed/simple;
	bh=lv+K5RbtOpUgJwhztsLbGxKqJmdBxEspS/s5j1gS1QU=;
	h=To:Subject:From:Message-Id:Date; b=CQG7PIB0lETn4w3ZBxhxtOCGUor8b+JozGbfofYqTPLRJDYlCn/P5vWJl+NJFjOMibjRPcVNWOxc8/IdgfSTxvwAZerksvLckiQbEwLEHbHmiO6IKBCicbZsFJK14P3Gu+/NBPbOVVXUvEGbBSfFLwT6CVEpX3v8B2lR0SPjHRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2/3siwY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2/3siwY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC53DC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731696953;
	bh=lv+K5RbtOpUgJwhztsLbGxKqJmdBxEspS/s5j1gS1QU=;
	h=To:Subject:From:Date:From;
	b=i2/3siwYlpSnLdQFkT1XZg7pOSgBFKz2MHuevk8+HSHFGocXlJ9v7/5Q39062zdPp
	 IphDrkJQl7KKz+hrnf01xpCRQGdGWFQnHwj/5hk4d5tTzB6YDPR/vupeGpZeCzEtnB
	 FrtuGXUie7gkv7RSf/obaape7NANcM6OcZDbLm+DQmbnLqyq5yn7b+HqkWXncxj/Ck
	 1oIJ/D58kXP1S1aMjGT1T2oQnsRcfLVjwgc20HGosI47AqRwnXmE8WHImGt4nYbiWY
	 UgBcmagKXQGViEtGoclY/59YCWpxJGp7oU6THvJADjvbIcIgXCoNE0r5Pu/B8Bp9zc
	 PaSMEFtfwfKvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1DDD68BCF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173169695362.23182.6646371782973380738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d800fdd2162e41a77a679dbd629484f892f258df97420694a164effd42750b
Date: Fri, 15 Nov 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731696953
