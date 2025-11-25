Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D9A27B34F
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 22:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764108774; cv=none; b=GeSjB9gB0wymdS9ID/Nafw9NTp4nkw9647BAOaV06lhjj/Y6bI6P4JcH6LId4yUdQ0lIP7XzbWiL36kpSXPBRX+XDNfxz7NyKGqy9qwZuEXdm9iKDIhHBdAyVLm+XdtCsjSGJzQ778qyl3Rch8QHmHIILchFUuNfX3/6BUH/Vfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764108774; c=relaxed/simple;
	bh=8fs80e/1diHv6mfmaPxyhDR1kq4gamgmGbdoZFR3D+k=;
	h=To:Subject:From:Message-Id:Date; b=EwcW2pWXkHdG+0z+jXCTncIG6mh6XGAz6g+l3S6HE88tGbDfumB/v8mhYNPj2ACSyKVkyokdrLmN2Hdb+7VB+ruhhsKqtZFQKGhhua6jmb2knikkuzLo9VI8OokDOgaPYF9l2ebVrrP8POWX89OfC17z/ZIxkX6BqtpbhOZvyxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwYzOynk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwYzOynk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E72C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 22:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764108773;
	bh=8fs80e/1diHv6mfmaPxyhDR1kq4gamgmGbdoZFR3D+k=;
	h=To:Subject:From:Date:From;
	b=mwYzOynkRiBmVJHw4tao8MUYyUoG1nL1/bvkRbpwuys3IiADhwTDnQK4xtRee7WdR
	 CnOsk914uUc0izFhuvZVHqqCjsdHTOlrbQM4uLJzMs1zSv3ywoN17+eoyFPk6+BMLW
	 r0huHclSB5I6i8kgFiIC4RnVcB6IRHWRyg7uGHqm5YtzDSdoXrwaurKVoL8izTL7RB
	 IrczqEPWgJBIi/Zu/wIO59bawa9DnvJeQCALeAgCHyfUli+1vwS7zcieU+97es1a9g
	 63tEPBfFVfexWVbJ5htFI+Pc/BbvIHYncVPRCOYUT9+Fk60zf0/TTgQ9hFY6w5dTEn
	 AbP0t/ynbiiBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CE1D10362
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 22:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176410877360.19837.16563830049979891310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1249a2cc3914404b2634ffd30623110bd3ab50b80da6da4d41e9571602161bb1
Date: Tue, 25 Nov 2025 22:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764108773
