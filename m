Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BBC3F9C5
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 23:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741563534; cv=none; b=sbBkLzAxzFK20SURXvBFmiQefNuZo8HwGJl8RKbOR9ORTNIur/0GkpssgMBYYIVK/rB+YCIWR2Xq5n+/Zjf61Uux/ZAusY7H4S0nnvgKXhZRxy3tQ742/liMAx8jHBl6/EijKIclq9fyZkQHyn5+4gGlWVMUDczARUpJl6rGBjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741563534; c=relaxed/simple;
	bh=R/7D/CPx6GND8BfDEkFOKUADSlbt4387nC+/MYS2gwc=;
	h=To:Subject:From:Message-Id:Date; b=ahwYeOn6QyZKt7pAiURUas36Dli+oO08nKfTRPZm0nr+ND8PIfwPcB2wrWHaz5YG1XMqZ6Ls9xvfBHD9QuWs9nh3B9FbN9LI5QPkdb+i94whLa9UeJrJb4/wrImvQx+alcaQsYFD1NpCDsz7J3jj0TBVvyhT2vMErlE8xEkAbJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyRpNboi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyRpNboi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EF5C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 23:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741563533;
	bh=R/7D/CPx6GND8BfDEkFOKUADSlbt4387nC+/MYS2gwc=;
	h=To:Subject:From:Date:From;
	b=ZyRpNboid/T+T/bxNXL97oAkDUDQFVEv8f1h04wMg71c4De8p+KMfUuxX5fvK5or+
	 wGyBr7FMXSRnKPTQBpjhKVz3hdp0kNjRrf0I5OO0LxXkJNzuFI375I5ysc/4t9hyAX
	 aswizYilmuxSFxPg4uwdaxy5JgqwOrTrJjB1MXhzvibs0bnNCeYUYel14H+TsUynM6
	 0w/4wW+oHpJRy9kuq2G7928EHJee+9ZTWhGFlQnCXzBV2jnPfpk4nWcZ1I8wcSxi2e
	 X+thNebLhMyRgOyJrsoMuhsfMhmyJ4PleobUsJDmAMKZtBKqwlvWZlKtO5mScbEh2P
	 JeTpvnvsfIvbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9446DC28B28
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 23:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174156353359.26857.6869313879071976260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef79d11a4ffc5735f5b21c49eddb49aa83bcd59401636ce5aa409068ae8fe708
Date: Sun, 09 Mar 2025 23:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741563533
