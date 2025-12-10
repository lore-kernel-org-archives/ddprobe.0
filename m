Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127F43101C4
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 17:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765386774; cv=none; b=CWpCvVl3U3zRhBy5iQsyzxV/fd5Mm+jmpW30/nX0BkBgWnZjusrfFhQaYKUgrmChY9+v/F52fUzWx/orlU5zqLwx0IQnwGj9TmD9cUscy/0rLol+0kHRpB7RgrSk2K+9gNEWIu7IL6zfZfGEzDo7WJxSo5NJ4L2ppAPC8VGcfxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765386774; c=relaxed/simple;
	bh=dXXTlDGR57S3k6TUyM2wYC0uJZweud3pGW2hinL6F6Q=;
	h=To:Subject:From:Message-Id:Date; b=jRsk525v79vkUP9i6bbfPaA8DTUoJ+01EnUnFn8saPV6TccdnjurdG8VILPUm8Hb4KRmetpTrtesHhSswhm0DyQ0WIoD6Ten6qSLY8U4QyR8b9DBQrPdlTwNfMjrRn1KyXPB9XqFyIv9GgW2PEUz04a0M1N+iP72lueZA2rLrIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqxiLcmK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqxiLcmK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB27C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 17:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765386773;
	bh=dXXTlDGR57S3k6TUyM2wYC0uJZweud3pGW2hinL6F6Q=;
	h=To:Subject:From:Date:From;
	b=QqxiLcmKtrYxve4zLoQhBcbetwPGT1A/XdbGxxQ/h3i/+28zwnz4QSwoy4dddyUyT
	 QVqVapw57ZxWPNm3s+LYLeqfHj17oa/QRBsg7Klo9vZZyfrTPlJXgCvTCVakuntBXz
	 Z/E1O300bTc5Skhjytct9dhflL32ACVJMnktJE7DBuS6ZAFzL1VIpvia/JWAUYq+ER
	 p7FZqdWQNS8S89wT5BZu626yriqLZWmANWAnbz7hB7fAanMsbCjuLRwd6BAkMf58qv
	 0jamYJ2B23y4JpAXRj0RKywtP4vmadfvVCIM3BthtEcbDzk74OgZI/y5YSFVKp8Cid
	 55Etjn6ffOM2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CF7D3B9BE
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 17:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176538677360.10291.5457304932755033293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeee47a8c4f9c25086d3d18a477bbdcc4fbc62c7985fbd334667f1a49a34bd20
Date: Wed, 10 Dec 2025 17:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765386773
