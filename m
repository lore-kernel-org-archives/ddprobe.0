Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D266D4C9566
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 14:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784817635; cv=none; b=snOwjy0VSRmNsttHQLyJuS8TJ10UCDLBhiVjLSf2r+1QBD++kt6WoKzTdZcpdfQGyyc7zY5YoAAAe49L79WhsOjXo6qZoNwYdlK5gjEaBmoQtcJkdEPfpzNgmTmUQYeRqOxCiBgqmlMQFP7HmK8zmTrRlYs+YOwKZZI1eGBtX6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784817635; c=relaxed/simple;
	bh=w4YN2Kxmmme7RnF1KpdPOWDHVEk87hE7Kl4YzT0K4KY=;
	h=To:Subject:From:Message-Id:Date; b=H+TS26kFGEusYzUMpPtkOQ9XilLbMsrtCAiwIYdpHicnf10GhTODcodzOE0TV6Ls3IkvCneqZX29iCQTeNoRU/7kaJsl0LARAZRoPgrQ7qOXEM3bkp/JNDXC6+dVBu9UMYkKRuKliXEZrtcs8xUfbi/MGA2MBU1mkwAE3Z4wf+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9UTAXpQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9UTAXpQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF06C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784817633;
	bh=w4YN2Kxmmme7RnF1KpdPOWDHVEk87hE7Kl4YzT0K4KY=;
	h=To:Subject:From:Date:From;
	b=V9UTAXpQ7cNGJMRqz7y+l2CXLurYff0DElxSHC8CU0aAE6jyVRqE5vL5x/RYS60L3
	 Vy6mMuIh/ZZNOeA9+fdzBdDs92BjaRxJ9rOKfl61Tr8rP7YLa0ZMneWViSZQBdyM/L
	 dzewaDoKCTroBH8ezeLdMuqGA2hDkxPpaWLE1UMsxWAQjDmQyyEUWv30t3kwVHDG5X
	 gC5zOZABVCX/8YgezvDASX/VKLvGxdmp9b/oXa2iPPgS+jBHf7swZsxwHmCBvEq/bh
	 RYRAKTUzLPNxPpclxDzlBPTevNDldUytywDQx7103E6fGJ25YrAHPJMFAuzgI3UJGO
	 M5gv/mlwODuqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA37CC531D4
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178481763368.22248.6043351176034880612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d72599b3b173476285658afecc1fcc99218d8f26bfca22f0e7714b4e9978512
Date: Thu, 23 Jul 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784817633
