Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BC934BA35
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759674594; cv=none; b=F0bbIMDj5v6jUSjEY7F0KWXjU6cUiv6gRiyAKyR+7TthAYjMdA52G1+VeVNkGJYPY4acJb6Z/lIWyJABZyF7PjIg6f9XfoU/aO2LCytW2KE8cYzHmMYlNvToOu1wwwh7DCaYb4YRR+sQq6QWIIAjLQKIwFert3hfAisyp/TGG8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759674594; c=relaxed/simple;
	bh=DxkSw0xjGtj9G7ZmrZPt5VS5f1r4YwvnkMCuv7H3MHs=;
	h=To:Subject:From:Message-Id:Date; b=fGLDVYkRy7+Kgm8g/6kWUx8KEmGpaJmdgSIbcdl2sCSG11/hym9zEZ0qwKlPqZMeqDIJ4inrhtIV7ZFfTHjTgbfZE+BJASgp41cBsYgweHB3wTv8VwRGidbeS3vW1M+3fWFWGr5r2hVClXl8F4eWwkwcuWOxRGN6isaoMKTDgyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxRpXjfm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZxRpXjfm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B191AC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759674593;
	bh=DxkSw0xjGtj9G7ZmrZPt5VS5f1r4YwvnkMCuv7H3MHs=;
	h=To:Subject:From:Date:From;
	b=ZxRpXjfmdcyCwlX0si/NA8Sdox7p+jmYYHAZZ0edxPb/JNKmie+XdTjY5DtWCVtAZ
	 3rqZB0YnGcrfgyJy3g+BLtBmYOnE+jvHtB45VpjiNwuO0zcJjO5BT7Q+0OR5/g12s2
	 KMQk370N6kxu8VHuSl74/zSMC63KMuEqWKsh63DyU+tbnfdV6FkTMXu5sQr3zLNSzu
	 r1BqIPBfwsAr1Utfn7weOVWabjjffaEUFdhPAuUReSPv/6qW8JpClgBKxPxLF7GVza
	 +qVBo0e3wt2PBd3oW/PtQKII2ntZEpcUZcZpifN7zXMvofPxaZxx7Md+jRNIEDjEJx
	 03r0N6UWFmUqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A59CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175967459357.23613.8379433053356340066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0760b239757a66178046b7d741238b14a678fdc6e04e790f669c091646ad068c
Date: Sun, 05 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759674593
