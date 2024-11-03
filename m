Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7933FC2
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730604954; cv=none; b=OtvjixmIrdyMG4O5W15IajhRTq68BTYxb3zs0jkZqy3K01TyeiLskQIOgiP0xh2HEV3dxpMEKEXhzeurHJLGBJq7ajxr6uTc+6IbjiS4djUcmXHrXKOYPTsiu678rN5lsN9T4rbnaXZkuvFbQ2BM331bLm0xtLKGqkbQjplh1lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730604954; c=relaxed/simple;
	bh=YIUzYZb/HlUYb3Je01CqzKy58DIaUV8XSieFCYQ4dyI=;
	h=To:Subject:From:Message-Id:Date; b=ZFjEA0Qy/4KyGQunIusjJCGEC+bGHL5yYMiojbhQTbw2HIZ0hPZXOJKj050Nfih7fLkmy9Tsfp0f30VXMTYvCe/JAWfW/DEAP5F0iMU6mH9+OmIpSTfZ2xioTYUJB6mpWcItLVDpoGTRx0WOV4Vgjl113oumATdq3Lsbei1jyJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBgNA9VG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBgNA9VG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EF1C4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730604953;
	bh=YIUzYZb/HlUYb3Je01CqzKy58DIaUV8XSieFCYQ4dyI=;
	h=To:Subject:From:Date:From;
	b=HBgNA9VG4oNj+ebgDKavx+LxkXI/XSBUAgC6r6/7OloIoZb+0txFlNaT+DXYLYqN8
	 YHSCPW3lOLf2tkNoX0hu8YcoIls09NQuhCrPXrs0jrZz6KYx4iTqYiX7twKxu4nycv
	 riLfC+eZjd60VmmJEAVBSciz11b7I9Qkw7OicJJ0x8FE1J5Et2DwwOBXWzVlAf2cpp
	 7Vbu2H7+bbhb1qlC4ZpKydBbIaXaRIwxV9NOjIrjt5OnqCTi3L7Zjy8ZoKtocnltGr
	 iTjgVAs53YyIgYV+vG39Lu8T1s5/6oRmIPWM9VaAe0kluzeZbozDny5iPz4fidH/53
	 L7tfQxgW8CjaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91894D10C0D
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173060495358.21182.17100880866065682459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef62f22fc87aa7c257cf901ce57ffb1c5f1c9e3e5a20d122b9a2c19c53235a73
Date: Sun, 03 Nov 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730604953
