Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E805199FC1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738915555; cv=none; b=YYRyh2iyj/L6a9Ba0P3GYVO2kWLi75y33MmYKFeUKjo7iAV1X3iTn75NhvEzn7hTg66xGBb63S7mZYqT0ve5yO2oWoPrBwoFfWtJNtela33NLj2lCD6mj8q2HhCEiwzw3ru1fer7HevBNByuEObWot7+RPtMjKYb99xu2102Ny0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738915555; c=relaxed/simple;
	bh=GuDQeVz6RvKCFvj78IyMqKg8865DJ52YGqpYX4h2jJI=;
	h=To:Subject:From:Message-Id:Date; b=frfDEvimFnzKzCAT+YukBDSvcz5DZqRU9xlmyX/eJLy9S+sn+CafSw96LP5/t1FeBBwrMYpi9HwOMoOSZc8J+ktHQf7n0Tevxb9jd95ip39u00fsQPIONEYmsblSuRj4WapZ46A8ct15yjEXHB+fp8WPsaoB7T9VhilI2PocpgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnd6XP12; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnd6XP12"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B51AAC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738915553;
	bh=GuDQeVz6RvKCFvj78IyMqKg8865DJ52YGqpYX4h2jJI=;
	h=To:Subject:From:Date:From;
	b=nnd6XP12A2b9T0nc3t7SpmT05nChnN7fLXJzyCXBhEvtOjy42WQ7faVqf67l/nAoG
	 78AGwy8EtAh8Tq3HxS25At23ZYg0e1ju4fcmUz/REsAagKZaytD2cEyqgtKuxk7QaX
	 OyhjU5gewoG8Pj1obRIKea+f3yEskj4BTgMFAPYRrkRQfwIpuKWHq0fpLaM29cgSNL
	 SL9D8wOGpH3ZPbF7eoIz4LuQPBqjf5TgEpxFPp1eeBowe3MaX/ZHouhQOu2pyCooQO
	 mH+nR1Z3PjeYKtOWLnpjDNWhDuaqiIeEmowm580kgiOzJOu+Hw0Zt9s1O3NDzBfPia
	 jOAbH5fuuJEFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D18C0219B
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173891555364.25862.2040082413810096341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e424c11e3c07e79d7b835deefb9cd90e8c90d8f5988a88567157aedf38a1554f
Date: Fri, 07 Feb 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738915553
