Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677F6436361
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788040234; cv=none; b=Uyogo5tyivD0tJYVgyFIjlYppDTXZhS7AjfT9iM4DOKmyZ7TK7nAOLWNSAROqvHhruKSQTZCwOn5CJzWzwi3xKCZtM6l5JWL5Qr+qurEeZzdv+10ydKh1N6S4mRLCFUHliInnEmsHkLVLGAyiyry1zO32j7SDyfKns3EZIclCZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788040234; c=relaxed/simple;
	bh=Ca+7ABRuR/FoVN/QtitAdcATGPsBdVhWssN30aoXHGw=;
	h=To:Subject:From:Message-Id:Date; b=XfPkC/Qe5zC1LymtoT/9dC/HC9rcV67k8rZjdOTIqiKF8dQVArYEoB5RQZZLbdHVLrayhhtd8QXI36c77GFHEdZKpJ7XDTpE/5U9PyF9IPRkpkMOb+7yP7tOeqSujQ64KIRRZszw4XqYQAqCXwcajgPdDM53jYEiEAYVFmGIWGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DN3oCmss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DN3oCmss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EEAC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788040233;
	bh=Ca+7ABRuR/FoVN/QtitAdcATGPsBdVhWssN30aoXHGw=;
	h=To:Subject:From:Date:From;
	b=DN3oCmssvZpCLf282t+kXtRhjV5Q7Hf9upRLw5OH73KYOJkqWoEhgTSe8fD4vjrUM
	 Btz2CADxKBbAE3GLUKn2tbI/WZ9+gYpyb7MvtvxSuQD18fWPACy871es/BwOqI8t2H
	 KP+K7s67//vSYIzOgTIGrlNEFjU5QBXAw2yBML/i7ftesbq+YTuu/9SGUBT2sRaUtJ
	 k+6KUXZMqeGN6Dc1Qjv2F1NdvrfR7O43GlXpJenv00RRn+t6Z/H/cIReBPOT51X9j0
	 hhHM3d9Q3ZkK9ARNiVBfbvJI7lCNQe5NrQSrbTvNsH9dvRB4K4xoZpMabx0+kE1/tw
	 75hp+xeiKwIsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DC5C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178804023369.23896.10836908551004354992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a5054a4b4943dd244e18cbf77862bc1aede57756ea6302671bb65bd6af968a7
Date: Sat, 29 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788040233
