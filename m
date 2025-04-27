Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38583A930
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745774994; cv=none; b=RdPXoYKPqjVZ64/ZZjM1cox1LFaV7OuRAt1dDPlXQzLl/jT9JNrRUtDwOrP3BA0IvlglYFdjDLcWNsbVg/xqKSFIyx2/KJdQypcyXeY9XkCI/l1SLiMLtPug1KtSVhYzP5B6QtfyYcKCmIiIS6PiR4a8NvY2f+hvrULTydrwuSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745774994; c=relaxed/simple;
	bh=Vi2481MuOjsohCWFMjhqfyIzwvZh8bamCsrj0lMJbm0=;
	h=To:Subject:From:Message-Id:Date; b=WditYpnHjP8Zupvk5TRM4kRApsdfBoyrAYKAHtHzICp925j/XjXjLyH2F//dPoeckeZVAVYYG0/plcAf8nXny38GJPz2KbdrdHjhcgfXT3f/shvT9zw+mLCrvysGUhO8PcZEomnDthbSIs+niOlmmnZC6FvbXzA5JRcck2K0sSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cxa55vBJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cxa55vBJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46EFC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745774993;
	bh=Vi2481MuOjsohCWFMjhqfyIzwvZh8bamCsrj0lMJbm0=;
	h=To:Subject:From:Date:From;
	b=Cxa55vBJhn1YPYR8xEhbD0UrNeLhHZV4xvoPASWLQwicIy4EWAtcBcU0wK7NLtv21
	 d2urbqJYutcs7dhxOhf3NCDkQG80xgYgxLuMJDarPTdklBN4QvO8fzWoZPs7K4q4Dw
	 bVyDhkB0LJ9sqnVQTxMXzZtFL2WvwaYz2pe89PSzU4ap0Ff+hxr0NpaqehxAJtvS11
	 v8MNR6mJzjVsJ5Vp1G2xGtE99akGNiI/K1K0j5HbLLQj+Y/D2M7w2jlOvjxfMKYm5p
	 GOdAMBnp35D4BRav/Ukw7bSOLQRlexvScP0k6FWK7SZ3BkvunQ7Xrp6bKtWywaPtnU
	 KZ89b1yYxO9cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DAEC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174577499358.8264.4509061630245726744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 176015bbc31cf1a854f4ced3a7e23d23c3780a8d0aeb08606d40df0afc14afa9
Date: Sun, 27 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745774993
