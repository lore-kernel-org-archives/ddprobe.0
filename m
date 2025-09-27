Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299D48834
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758937194; cv=none; b=TZt8UgR53zkevfkAUBf11ANmblkKIFpVAJp1FIR51bZJi0Px35ctt4jSvBIn1MNladfJr7l48BlAwrOuIKm0MMXEa2SEdHb6YaIY6rZjiuqnNyt0Zf3LtY0cy7iFYy9OchHE7o6ga0gOnpE5vLbdyulyQvaEFHozCCFYB89RDqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758937194; c=relaxed/simple;
	bh=pQxpetaac6a4RMAGTpwZHughjfFDeZTQbgsLVHMhTe8=;
	h=To:Subject:From:Message-Id:Date; b=Wz3ldhSHv+7/wUFJtrCxxMYNMN/zGrpT8DsmngOrOYFlMhLZNlsJiXloWNLZPZxyFtyn4cUA2Xfgr245Mt1KCSenDYsU6Mf1BFw2pv64o8BwvgaYwcLZSbkYTwOh4YDPLLpnk+reQqWD/M2VRACzJZBcBwN3Vy+Sbm+v7QfVqbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8igqLQq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8igqLQq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC51BC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758937193;
	bh=pQxpetaac6a4RMAGTpwZHughjfFDeZTQbgsLVHMhTe8=;
	h=To:Subject:From:Date:From;
	b=X8igqLQqF4o9TGDgeuxICUEZkrwRPm9LUVwNGzGnyxWRL+sxZAr/qP5JbYrpM8UQa
	 nPQMekWQYPys7nt7cRnNxTUOSM12PiPZfgMUv0I9+V/GBGaTUsSUvQJ2suOkZ1TnB5
	 XaJxWo0ovrvYMYNg9gXJM5kLE/yA17rK3rD4tg1BS3LYLd83u3iDt6LC8j84St5puq
	 X6RNzcn8H+o9Zl4AOzGn97VHpV4wbTzHAZNNZqOouPUU/OuKgqqx4fxQdw+66OM/KP
	 EWFmzY8BaAPEkT46pRLCQJGm9c/4F5DNRQw70dfBCp7ehPXrzs5M44Rxzu/MwA02rZ
	 PG3g2teRiKc2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95730CAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175893719358.1747.4078689365199459615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b4fa21b96267b05c5de36eed15a27428450ffcee68261ce8e581a68bf1ddb3
Date: Sat, 27 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758937193
