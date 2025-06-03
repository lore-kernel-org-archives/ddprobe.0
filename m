Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427EBBE4E
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748921994; cv=none; b=XzazfgreFiGxIi1t9ojJTp3I0om1lR0l/KSu/Lr7Cst2Gp/K0J3h4neA5pKHLXq+8zf2K9DZMjVgAcVkd1vdUnE08c0G6ZMXRatl+WuL0jpfUbLChxdNBTAFy6IuzJCoc/cNyBVlYof4hAnMZLyCAqcad3tMCzEOjYOEg1sYLws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748921994; c=relaxed/simple;
	bh=gD/SxE3/OAnQ4JuHsoEP8zf2cicaZk/OUABMU9wRr0A=;
	h=To:Subject:From:Message-Id:Date; b=Qy8X8iPtBmCZA7ekllQDN6khLX7VIQS31hK1ZNzwPSA2g2FAzNm+7tl87W9LN2pPW2OZytPWIN1SXS+96ll9sZvB2Ngei8GKA+khyKpPENMVtp5Ahp6s9ATid9HUUS0A5CEM4+e6L95xGP2BphsPJtLO9xxwc5/VoO2XzmMDUw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iPX47FcD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPX47FcD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2756C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748921993;
	bh=gD/SxE3/OAnQ4JuHsoEP8zf2cicaZk/OUABMU9wRr0A=;
	h=To:Subject:From:Date:From;
	b=iPX47FcD7U189/qIRRwHQyhrAiH7i6WhGnwuUzHhSKjJhdYtBzyThgO678rrW7gd8
	 US98CH0vUHiiqwcr6UUwHbGqGEi3NtkckblHfv19sk7crdQjNjJSGChWEsYf7/T6gW
	 EO2sBC8dwnMEy7fXrgYyqXmdYA6mcmQvn9rRYjn+n9CM7+zr5RCLK/H9ROs8eu2brK
	 M+z61s5QI4Y6Ee5h/mn4QAoC89IVGKcXBglHTHtfbnfFfFNreOQtto8berL052Fe9X
	 Ex4AF7215TnWvKYdMp90QCTnq5//XF+DQe1mkCA1T5odrsP6TqPGLMVFDHVZpmvxQ3
	 LCXi+XGRpHH4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE3DC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174892199357.7113.1804771468817146491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1568b05f59d41c5d3eb82d4960186293d61b14646ed8a3e8d74c01048a8f8737
Date: Tue, 03 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748921993
