Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0E9346FD0
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772526294; cv=none; b=jVVF+A143bZDdYqbCCRaXI5fmWUPwFNanQuwuiUhTD8zFOzsgxC3FcKouvTy8d6QiB+Kyilys8Pyskro5xt/rfnrIwG25JfxxF1U5J8hvmr2AEJjnTOvqIPNcwfwYtDbjb4VHUfNjxuPZQknXhZBkL7LYGMGYS9SlhZO2OHekxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772526294; c=relaxed/simple;
	bh=5hVvs1nq03c4t51X8kl1iQ4xj5jFdJqmjVvZ3cb4Qf0=;
	h=To:Subject:From:Message-Id:Date; b=m6ZS/Q3xEcZvlWXPGx6d3e3jcBr/yAQVkGIIzovWenoLlvgk/5GFwR1b1udJsm5anMu2a5Pk2lgnF3e8TIoE5QJ5vjMIjsj9G+gGlkiOvt/SAIRk9fyJTaU+LWavQhs+HhwDYF7DeHtc7ppz9NPiyPiqhPZDhg3XgYefTvIF4vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWPBarPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWPBarPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB75AC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772526293;
	bh=5hVvs1nq03c4t51X8kl1iQ4xj5jFdJqmjVvZ3cb4Qf0=;
	h=To:Subject:From:Date:From;
	b=mWPBarPjcQFTNL9JAVf/F7cFM+xnuATAXtgvQNFikXdQElUlt3gGaHfiP/ELXHsfN
	 +fC44qyctHtQH7Co4iaSIQf4ua+Fa2zd9FScmsgNl/TH9C9X3Ccbb6o3AB8rtkvLjK
	 B5I9FHA66yK+p7ioDL702Xnv3zgrj8HHaNwZe1gXXvNBBGqtJcVlQ3zGgZLKtjOsXK
	 4Kr017DukUsB2KFZZuFDVNkLl8lNsClfvDChK6Y8L81x26+gcuYg/koWXOCcEJxD4z
	 uwnhCxQASLFfYxs6wy+DugQZ52R6vM8UDUxOoeQLmSkEWGJAQHrC3/neBnOgVsgU0C
	 X9KCi/UXGqcEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938E2E67A8D
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177252629359.11825.11629293495643743590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f962051fadfc5f27b28060a8759b9e932bfab6e93180f5ae9850d687ec8f5cc0
Date: Tue, 03 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772526293
