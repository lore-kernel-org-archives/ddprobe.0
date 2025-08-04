Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352977DA6D
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754294994; cv=none; b=uY40IdS2Xcux8UzxvKPHGsu4eBtXwz3LDEN+QVt9n/TnoFAZzpelxo0N4IaebI3RedraYs1R2NGOEYzDBx1oFIuf5Hcv6ZTR1+srFKl0xGLvQ67waLLenLyLfwKbF1OlrmK3R7hCkBH8kn1GJOL0PZkw6nzgtUn+vafNtvwa6r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754294994; c=relaxed/simple;
	bh=bw7ZtqZ/UmQVU0ASA7R9qEFvxX4xbKFfkDIyhPDj8G8=;
	h=To:Subject:From:Message-Id:Date; b=MDHxZ7VEv6VTGlf9MJl4dXFc2/LaVTm/l9NSOoe5KJy58LmsV2+ISzT0kqdp6iAAtdPkqwCiyKCnobtqYWAk5mVUnTd1nHFdInWXP1ezTp7ByyiZmyiLe0J+oYXNlMWdi1/MwArGMQnQap8eKcos0IIU8K4JmdzzDlpi1z9y9HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKXET4Qa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKXET4Qa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97E3AC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754294993;
	bh=bw7ZtqZ/UmQVU0ASA7R9qEFvxX4xbKFfkDIyhPDj8G8=;
	h=To:Subject:From:Date:From;
	b=lKXET4QajUP/9V5bJd1/QTKBhxu2mDxQVVGQCNU1SMeXkdbNNmNrpetAqlFg0BWzW
	 BmpXP1gJwHWm7AG7yZZ6eF1yUFUb12AUJEQYVTdH6hm+N+nqgewV5qllxyWeGp1UEs
	 nMqasaPnOhE+doSkQ2cTQ0wRxwdQDKEYrTn/JCpjaqukg7WSRelDS1SKbl79kGdCk8
	 3Urnw/fg21krvTmLGGFQTsr3UNkMExhqLWuLrm0ZfB9dYdVwpR2tH/2rDVS7h/aTwC
	 6VDatUPN2/rc9rbntggleTwqS+pFbBbI+oGADQ59rt2Bz2mdPWyMLnT3+NBGfb5t7O
	 wk+nY1KHP0aDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F606C87FDA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175429499358.28848.9426506474735639861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07474b42e004047f7e6e62a12cf6977538075bfc83d2d1d6482b46ead9f9f038
Date: Mon, 04 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754294993
