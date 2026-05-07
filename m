Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0152E414
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778116654; cv=none; b=B5xpGbaiD/V1lUBepGyq4fYsWP0uWLCqazc53gi7C0YUpYP8iZTGdHY4L4JThCxQgtBRyQDh8ljgOUVfDgoMbRvDkWn+asHBpJdyDrWWdPXhtIPKATV3Va3sXcZWARVBlUY8EXjKBQVciRsCc/keO3gQrRXGPc8NvAklSkMFLB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778116654; c=relaxed/simple;
	bh=9xJy6Jm0H7JZd8iz0OyHzqlPdQYeu+RieWErtV1cICA=;
	h=To:Subject:From:Message-Id:Date; b=d52jaroEQpjU0GrJ5EsbeI+51lunjfFfHwDrAVz2tV6OTXBYrCFU91+ajzV5wzFG+zzUzSYRPPCfTjScvcEhOdTFkeUjGigpJY+vXE6l4bapAl7VHz38uZuWGVyBrdj2OnAFffkc+vZBaOFXJ4hdSXMDOmK6bP5Aj4vEqESZZfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cz6hkxs8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cz6hkxs8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35F7C2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778116653;
	bh=9xJy6Jm0H7JZd8iz0OyHzqlPdQYeu+RieWErtV1cICA=;
	h=To:Subject:From:Date:From;
	b=cz6hkxs8q1BKo481aaNFyI6kXe15V9JSk0Y22kfH9Zm4Fb7f+s4nST40oCI2en49M
	 wx3Z4KQ7pk2CNx+b5Nu4Ciz74o1Ha9h5OOXO/e7/iGYNSSpRPPEjIlmp5COMOMW+lm
	 R8PBbY0cgI9UEe0ReMBSsQhdDtcP/KWw93/SLphCdR323656IU+MMaajkCpUJq4++k
	 WwOIoR6Cv9nw5wlgho7BoKQzRhvt4GatJZM6JzTPNb6QGTxDLpC+LmQglTrY8A/CY0
	 E7QpeZCkQuyPoL4CV8pXPB0DSR0stWAF8qVVonT5om3YU7oKp4uEguEqPegaU3a9/c
	 yBsucqXptvIlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD95FCD342C
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177811665369.16986.10966701344357186215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 424dadc068ba268836cf1d7927a4ce16ef2e3d51d652f0becfef949f574e2270
Date: Thu, 07 May 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778116653
