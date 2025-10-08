Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057FF2F6168
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759921794; cv=none; b=OAho1TKhTUe5+KMEOMW07CmvD+0KBFZJhmPAEAvEke/mhlVYpPQLZNSOGVmlXKvxQiQq7ZVnuD2bOxcuAr8/3HdO4tcWcWZ+dQVu8Xq31Q9a1MoUpZeiXK91cEsmIHiHXXnLLk8/O6k9YhgsTDuhKmLoLYO95TK4FF+MNBEkH8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759921794; c=relaxed/simple;
	bh=LVNUWWs/5His930/cBVT7wbZ2Wfi2PnGd73Hrg7dJdE=;
	h=To:Subject:From:Message-Id:Date; b=JJcXhe6+4vOoVmaijnK4Q0PSEVSc2u/+vC+sqc+r4jz6cvaOssSLw6xPKxA2EsgXw09v6uswZk3pWql8o2jYqFHeXQcNjep7BQTKCPdHlkP5Cg6rlMaVXOHVDY+EuEq4Us4mcKg3s080Sq5tkEd4m6az8nJFH2+oVSlGPe7iIz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eesfdIYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eesfdIYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A088EC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759921793;
	bh=LVNUWWs/5His930/cBVT7wbZ2Wfi2PnGd73Hrg7dJdE=;
	h=To:Subject:From:Date:From;
	b=eesfdIYo4w7egVCaQLNZv0uPPtUe538Xs8Drtvj0OXVLG5Qe6zELnQC5e1RglyXWG
	 shXESRC6e4ORZLp2GoGsjNXZ5graqX2tTsynP8z7BGZfmjpSJAUaX2rfCOmmN9CyvQ
	 v2+CKSeu0BBNpaITl6kFPrzxn8RZJGzwxub84W7gKcwXcJwlokgYwgpmAJDlo96UNZ
	 6kMhmJnCjImvH7HO32id19MrKJ8z0XX33GuwxQFB+TwIGhe1D7hQShuCo19yEVOiq8
	 oN8AtwBIST9H6iWPWw1ElztLSUM8nGVy+8IP0oeuYJxKKufPPsVOfYas8fGPiYTgx4
	 UbjHma1Jca4qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EC8CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175992179358.24677.12803946320221764312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 923472be3e2052c1ae48c1c81f0398b80a6dd94bed0b5586a8d724aa97633318
Date: Wed, 08 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759921793
