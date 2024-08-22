Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F74C26AF6
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 12:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724329555; cv=none; b=Tjv1t5sD05+drhVq5D4MJ2GLE2l5+8CRADrqibBz75sn5WAk6F5EgWHLBnEL5OCVW08z9Wx8HVZUPW7ayjfhV/mczctvyUo5BGeFGoHIRykraAHE2DVJHFZWBPu0zXdlHI35XXG1aOmSThzjDZH90bTn+r+RY4lGxh+bqzydisc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724329555; c=relaxed/simple;
	bh=zA3+JOePHP7BytMNUnvM2zGmOqUlYT3yN+IGwpvzGOE=;
	h=To:Subject:From:Message-Id:Date; b=FzVjrX9c9TFTK3elZVMh/VKlswg8xxn3YSlFRzTtPgS2zFZue5EKsswQJMdyoBKIGdYiP1VT0aUyYWwt405xbEZ79i8Jk+fPHzvL3z1VfumFMSfgNyIlFxAchuP4PiERsDLKOaViv83/f18wN5q8Q2gXmN7S6UW7bWmynexZY1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwklfdrD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwklfdrD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DECC32782
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724329554;
	bh=zA3+JOePHP7BytMNUnvM2zGmOqUlYT3yN+IGwpvzGOE=;
	h=To:Subject:From:Date:From;
	b=TwklfdrDref3qRvQMbihGar2NMrn4Ahcs6Rh4wgQ1LINIO1T2D+O2iT7fwAJvENKJ
	 2+kIiK/QR1PtTutqZkjBGYLJM/3U62aU5jGGVAyD5TiZqjgRDYGxJX3CFQZ4QYRDVP
	 BNAjx409H27+OWiR5W69C8bsXK/ssUC2MY8E2ei1L/xwGHRX9DOn4OEhMWXTyas23N
	 TpKkaxbLuZYWfDeBtT83pMbnRvgQOSEwOryXWIK8+tojdCkYem0voP9+yFTSxp6u/f
	 x1tvi8zHdcY8eaW3rgNIFRUp3EE19shd2fzqfIi8GsvV1VdChUcCIQp4yEBbD/rwwx
	 CX3LpAjtNNcOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96631C3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172432955360.18317.12462797393712041815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac7e41dcaf42cfaae44f2834ab21e075d779a7921c241f720d84e37b1ae64293
Date: Thu, 22 Aug 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724329553
