Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC891AB6C0
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727195754; cv=none; b=rvems0gPR3ExbB1P2mhAmj66P21cWsedMZrPKKTVmFezqvfwcPR/gIZCNieyyz+lsP5kUIErez7B6xFh4jFsDCg0TCdJr5irv4JAy7VK89DN0nWXc5J/BwuuMRRiiwPxhqetCYEU8RLjdgt73ad7QiYu4RrKO7zTNSxJwdVL6L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727195754; c=relaxed/simple;
	bh=32r9jSz8+f96PapZE6znmJAE4KjrQ6bV01pE7smjybg=;
	h=To:Subject:From:Message-Id:Date; b=rEp5YPmLYPk610gpw1JOvxqRcclMIY6ImGoa6VHu7NaIbwQ5FZtYPpsxAZK28W8Ss2YLYr2szVR4zPyTtWNR9obpNen6nGtJhUWSQykna0zgT/zOsZCobuZR6jwyXW569tmKp4Lu/DHs+4NJDOP1hxNdZIhTqgqPR1ZlsD5kV+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqOG6aDp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqOG6aDp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A457EC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727195753;
	bh=32r9jSz8+f96PapZE6znmJAE4KjrQ6bV01pE7smjybg=;
	h=To:Subject:From:Date:From;
	b=OqOG6aDpebdki1FDm/hrG/qY4jo4UfaLzvr0djDl3WkNOK7n9z04ahsiIebRx8yGn
	 HfBXfa8jbwC4ZM6jfeRjsKbtg0F9wuiS2uPL2MsnOMag/hYDDPmztjKwAf4ArmsO+Y
	 xQNp0FEOV+Mj6JNQlPiyz4dXD7gS+u0x9Tv6fxDKH0EOl1zDKLMV+HUgF5YKRzE4wi
	 a066Le/kXz4/h3pYAf2IOifg4G8F3Ida4D3jtUB0d+8nSChSV7Psx6R4miUA3ZWfKR
	 MX7p10lh3KxpR/Oyphn5CCbSbXTabqUfRBMnN1yMJjZ4K6eoJior/TcjTGH4VL2JnO
	 l3wGhBREozgEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907ECCF9C6F
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172719575358.16299.10929215952454568004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc05bf1c2fc63df83cf600a015861a05fa7ff6e1499ecb548ccf573afddbe676
Date: Tue, 24 Sep 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727195753
