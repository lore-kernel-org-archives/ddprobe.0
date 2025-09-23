Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C90247299
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758604194; cv=none; b=kFX5xGmxBe6HhJy8XKtv8Bze44zXRqedF0Mg6uKohCh9GQH1iwS6bYV9BfzhFpG7wsXuPU5xvxZTPhWy/+mQU9Mc0eMDtPzjDqjGvb8eeqw5eLFwKtlF98vMeXQDeEoq7wTxjrdwy4Ov52iE+5Jjj+PqZIokr7NqQcylg6CSpFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758604194; c=relaxed/simple;
	bh=o4fmK56LpJQf+YDMbCKyhd+Iteu5jPWAUs5J7/AKg3A=;
	h=To:Subject:From:Message-Id:Date; b=KmiN5IJYDA+lfg+tRl4nK0/FLLCIT9ldalExTtKNGG0DixKS2s85L4aY22oXEB7XH3B75eFDukwRliPPgsVmVpi+yOeJq4MvCp5U5s+84oJ3O7CJb1E+1AE5EI3AiFxvWFpq92JZBocbumFJw1EVsq8P2FxV987p136RH8Rs1pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QBiBGoIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBiBGoIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75C1C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758604193;
	bh=o4fmK56LpJQf+YDMbCKyhd+Iteu5jPWAUs5J7/AKg3A=;
	h=To:Subject:From:Date:From;
	b=QBiBGoIU4xo9BzKC7k64G6krv6Sy98SUTw8X/ugEe5IAJJWw1Io+Ogmqc2rLYiou2
	 wTnY+8rShJ7pWi4WB5LsgX31ezOt8soZk92zlV/BkRZJntXdiYKrNL4sHrlluORHvf
	 CnryKI0ndD3w3duYU5Xf6hszSGuVg8yoVMLpEX36D8TdnJlsZTD5Gu7fY80Un06BrC
	 Dys+I220B5aewD20vwM3KYQL1TBVY4XPw/fEwQOSDL9iG3tDusz6lf34mJoDIyR3M0
	 Ec8mnetpVfWy6eUvfsguALoHifwTe9GaHUpL1KDWQrKfqUrMlVPl5aOhV1vIpY0xBf
	 MXV7CbTQP9O0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FDFCAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175860419358.19787.12826561698062334534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b118bb81d4b88f0c63a46a096072ca4624e0f81caec4bab47efeaa153b6b8a35
Date: Tue, 23 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758604193
