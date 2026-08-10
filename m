Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39734268690
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786326634; cv=none; b=Ey+a5eyr8aVCMmjUAU84LxNuw2eLnyz1uBhyAr9JuyuHMBf43QuNxYOyaLSOrcqY3DnYiQV7qUbXRE5Uw8Tnr4+UubS41mXRy2l2ds8RtUlqin7A4N01IM3NXS7uSd3zYvVyczuczeLlJIOYwMtRM6LsaOsBWzY38bhnj1QFlU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786326634; c=relaxed/simple;
	bh=xKAOFhEJ3L0H6jSyNJqhzLJDYyvcLrnbuBHKUw5V8Po=;
	h=To:Subject:From:Message-Id:Date; b=J8YKCIOVaIyWnP9fd7j2jjEbescErhtc8ZQzww2r2D7PiMV3UeX/I6mY55Gw+GmVkiQEpzpwjIbV7QWfQZ96SjPj0dKWTPZsR7Wbl1MHzZlu2NZu11gJQX+gCb4p2Ojm7JFCV0IWuM3YaY8FeGL8xzRaymi1msKdB7B9hfkpNW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PMsOGNA2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PMsOGNA2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF182C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786326633;
	bh=xKAOFhEJ3L0H6jSyNJqhzLJDYyvcLrnbuBHKUw5V8Po=;
	h=To:Subject:From:Date:From;
	b=PMsOGNA2O3QziBWLaxTx3MgSZBdvIwg1dE66zzA3UHTRbxGhSA3TPNDDlfzDn0FFX
	 UxDIkR7VYgdgDGBBtWpAujgX3Ht8s+YY2GxmXVSSmnbNBm00D0bXk63Dc6aWGeLu8R
	 UAv4lAS0fD9fUtWNzwRtnNixf1Vyr9/yHQbs6Zc1cXjKbnf+BLbXLbUjQLytFlWiWs
	 TmU2PAtpHdoS2aYOWfBrLvWBPx/fCUnkPd3EjFprMmqYL5Hrerts+zpnLUcFc2nRFM
	 d6PNoateB8HazTYZNrOTi1/b8FJo5vS64r4rDyN2Nk1QTqyaqvR0zeAUo+n7QXs7VU
	 kOZFxPGLqdqhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2D6C5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178632663368.15061.2812894321573238571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d2133f463924d15846033290bd92e451a2e8c29bf2dd41a17ac0dfd3ef925bd
Date: Mon, 10 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786326633
