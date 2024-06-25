Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FFEE17FAA0
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 21:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719351203; cv=none; b=cPxwSvgUEzuE/NlJ5B9NQZJVa7Ug10ievdv36xmcKikIvMGZWknZoiGTqX3zr0Vwbn/tEqRBj7N0nUtc8VSmYp1xOoy1JE7TEjCbQSsu2V+L5oE5L014hOFAl9Tyr6vy556zSTXBVsr2L6RlKQG8tVyUmJ7F3TrDuscP+nFwqhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719351203; c=relaxed/simple;
	bh=SxBXI3mRgw7iU8Cgc+7OzEU/ksBGycVS0y/Dc6IwPUY=;
	h=To:Subject:From:Message-Id:Date; b=Dejca/qrpUekqWyVHo/tGUX+wW0GS0ceFAqM4vORogaqwlN/QKpqVvurtoZZ9oZeB9OtMStWSWbp1MQcTeSTAHuGcmRIgVnLBK9M0xx+OpMDBuvOVV6o9DJe5Ly/pT97ks1E0n5sEYI95rfZ5/nO7ZdkYnJIVW3pVJLE4cEPEFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+FIpkPE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+FIpkPE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D987AC32789
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 21:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719351202;
	bh=SxBXI3mRgw7iU8Cgc+7OzEU/ksBGycVS0y/Dc6IwPUY=;
	h=To:Subject:From:Date:From;
	b=M+FIpkPE2hVPu+0jIqxPaA+uYk61aWi3QtEqu63kxCw1RroQJqcdL5UDarUh4PQPb
	 1vYVg/0yEmiJeKJKNaSNLM7BgIj4w9HI/8WOpvnOCO/0V4J+Pjdsh1XI4DDalGGH21
	 12HRQlYlSOVdRe1EpHvA5IWYeFMt3EPFtPAOfpBDN3yHh6280MWnyItqiKB7UmOFbK
	 bdyVoFoQJn25NzZds/tgAJ3RBpDB/B9gLCDlPOQn1YiL3Ie8951KtrxfUGd3dJGGIk
	 jlaRuiSSShU7LHTxIluTU668MUlIosKSdfPO1HB10Uxc6VpyJqP9/ytsl57Lxpz+Rb
	 1+9DN7FyYbvYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CBFC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 21:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171935120278.2381.12575445718332375204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 655241493235d33e314c3576d15d996ae799243664116ef8681c3f7041309c2b
Date: Tue, 25 Jun 2024 21:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719351202
