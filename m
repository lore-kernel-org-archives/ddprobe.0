Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FD38836
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754209794; cv=none; b=r+8ptcLS8Aro+cpprbQNYE4WfLla4nsj2y87ooYmruZV7wmMgBlYS5408qlK32eDXTqqqk2W6Vy8PEezFw2elEcKYrH2s4pH/mVF4oThtOTfo3KhR+Ga1QYo3UfulcSA+7SAnSyQGk1lcF9I2NzA1mNON7XHxs59kbWSz3XLzv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754209794; c=relaxed/simple;
	bh=ooucggsHJgsQP1eRkVMWLpJdgialTJUE+dBhbdP/qgg=;
	h=To:Subject:From:Message-Id:Date; b=DMLVIZLLTeznrdEZ0hjNHKdgCe3w69Bd+d7uVaJMF/KJyhcECP5dgXD1tkUdVgsSj/ZHrLRW1Aqxzt6trh3WcY7Qb7TxTnP98wUlFs2oCsVsOoegDunSsJXF6Wkq74j7nqTG2aICq0QXK/4Yj82qSA/XnRPllwDt1LRx8obtsOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOkV+Uiw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOkV+Uiw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DFFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754209793;
	bh=ooucggsHJgsQP1eRkVMWLpJdgialTJUE+dBhbdP/qgg=;
	h=To:Subject:From:Date:From;
	b=rOkV+UiwtRxWxG3DnQa3H31erWDWFS3OJC1RfUNoovr+w3eYV0GzQ56axudU6mPE4
	 pZuMEoD/Z6rcUxitXn8rouFDb19w83shq9Vj3tO8gUK+HpFuqHjX6t3VIwfEijVFv6
	 /lRy5ixcIF3FMSTRMlmJymoPVWJSR2pui0ZMMVqX82K5wYoAdeU+tI57uvgYLbgvx9
	 3j59VBdbOU68GQj6/naec3OZQtOS6YzS+Qo6RIjHzpKygFyPsqh+9sgBEY/o6p4c42
	 6lgAK/Plk/4KquSy3+Zr+B9dfYadr6CSZo09UOzS9Y7Xb87qLlFhmQ8xGSIBgU+12C
	 6vGzUbLXx0oXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95588C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175420979358.14664.12627989575768217800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c1427c45f386dfa5dd7c881e7358bd3667ff3250a700282d4033c465f7f61e2
Date: Sun, 03 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754209793
