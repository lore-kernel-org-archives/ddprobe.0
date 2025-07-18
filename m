Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4F61EDA03
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752820794; cv=none; b=RK2SiLxYsMDZYwiEp3X9ArDMmXEEdAow9IXqVnXcTKBROxkDoJxZNVnQOqLvJnLu0pp0tioksSMHegDHZ1G1a3Ss16WTFiAo+/ALgUFNFoYY9ujzQ84JsRl7EXwaZJLlFWp7VKU9M6YzvGOXIZA8dIgGcmScmFZUzwBHn2BRACc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752820794; c=relaxed/simple;
	bh=WLSMLQNmstsBKgYBwYuqsm6Q9eE3euhvTFwiXvcTxFw=;
	h=To:Subject:From:Message-Id:Date; b=s9d7yqDhQcJBdLH9TcB7kR9/AoIGQoYLJYlBDKRE81ggcBJLzhn53IfgxDx25V+OySi57v9Ne0L81GydMsAe2EpPY7pI7mN9swF4YkHOAaSnGZJgj51G8cN2c+uwU8Rgy2RYLLM5XdPA68O7D1rrEsKn8YyQYK6b5t2IqXr3J9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTPu/JV1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTPu/JV1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21CCC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752820793;
	bh=WLSMLQNmstsBKgYBwYuqsm6Q9eE3euhvTFwiXvcTxFw=;
	h=To:Subject:From:Date:From;
	b=eTPu/JV1mfe26reqqM53SKM8ajypkrh5nH24/NhpN3GKJ5bgXTFbTngy4Y+2bgP8Z
	 a98vfM06CgxPA6He2vKpEa9/adrr+KybX4YRxOWsrCxn/t9/8sLrnGtRuRcTsiViyL
	 rrA206ja0hijNsd/em7BK0tkputH6rfvUyD5v6ny5/4Y1O9kPBEWLGpcvR5m6y+C95
	 JfI6zCs7KKjtLCXw6nkEDKAKedUrmErwjqxWxgJSl2PnL8nbYSSqTHAJxSQbjqkeAr
	 29Jm1IqgBLKKyGEvHUA+grUBX7Yi6ZQWSU27w5Qk3ZJW3U+11jb41r6569MsC16Mah
	 W5Y6xdV/27YYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB49C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175282079358.28764.11896880952235680982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7896534febc7bc5677c36ffec38452ce55011ed3e9c6882849f101c103879580
Date: Fri, 18 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752820793
