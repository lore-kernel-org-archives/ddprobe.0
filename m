Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445C821638D
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760872194; cv=none; b=eg4Dbanu5V9hwsylWlseNKmuw9l2ytdM9s94LYv6VeX5CDVvPYbZt+3LafozFICO5NWShP99oPSD9EZ/pTWAMExOEJHdppYnys281pbZlsNmyFjYNRuX3UaZI04QqKZkd7ucdxSX9UY/5u3yS2u7bLKfVgW4Sy0Zn4QrQRzmX/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760872194; c=relaxed/simple;
	bh=LIrCCIozxmnHVbfudHQihSDLHYMsJTTGnNCk+oncGZ8=;
	h=To:Subject:From:Message-Id:Date; b=gVkpK22HkLzsnNLq1IUP7cmHqDRkq26cN/VMXJ5bp02uhS+EMCYs+jo67J/lnyMk1udR9j/c86XSPpPks8Jt6ACL5Ol3bTphBuXc/KUctQsAOPBpM8ZyIrc54ub/lvRRCRQ99ykF1Wrys4hAD0BkJ5wRuUT+oU7Ow+7F268s5fE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EgHHk79v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EgHHk79v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AE2C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760872193;
	bh=LIrCCIozxmnHVbfudHQihSDLHYMsJTTGnNCk+oncGZ8=;
	h=To:Subject:From:Date:From;
	b=EgHHk79vt5pLd9yMsCzlJ42icxduoYb5iu1Lw1+rVwt9T6QV08K0+VA/5/EMZtWqZ
	 TTeJAkqcB4yOMZYlx46PnQH7nCDhWqJrSDu9XWluiG5L8EnrlzLcn10r2N725zJobm
	 H/K9sOhO+TTVhEH1s4ohkDxDF812JEGTEtzC3gk8+2erh7xvwjcXZDdNDACLKEm6mY
	 qmeW6oB9CulD9RkUzruPcavug+kVFutjF0y7NOyBZRY3Y5GMoq97PQg/vMb1oKz4p5
	 EnYG95t3BbPEmcgWxKkBwD9iP49411d0qztmomMzHaUnLsEMpcNkvnWy1AfAC+GCUZ
	 c6qtT5UKg+s4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E80CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176087219358.25495.12335710689540802364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 536c5c59f29eb2a54aee0dfdfed441c8228ad8df1b4c35290b8fc6bb73e27999
Date: Sun, 19 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760872193
