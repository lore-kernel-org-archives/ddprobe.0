Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC04A2D5C78
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757578193; cv=none; b=GB8iGn0jr5gIIiy87vBSteDe5/bOnyyCg1wIcHgejsGXVtVh+ueVhpYYhC66ZunsLxvu9fhTcKVhE+lML1CLRrBri9HHRU+N2tsNxG/kPs+Oa7eT8F1Kdb3+mSSIWHHPD4VlnSPYpp3/UXDdHHwtPtBqpgv/COjZh62LVGsyShU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757578193; c=relaxed/simple;
	bh=+D6K/ZAk8BolUOF8JSoSWzVv2fv+UVzKYG7pW2QQ3vE=;
	h=To:Subject:From:Message-Id:Date; b=C/uG3oSFr8x1EObejGoe8LPyczFyP8lCVFhEw9ldWqmSd5H18+ttX1uMguiDsSy9hyec8iB0q/dCY1APaS710qAa5QyXK9bGOcwdav8ZjbfbcClEz8jj0kBBGPjosiG8aJHnoRx+ca0IspM3qoMnTpq26/N6bYCTxbEIeGEaBs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFdS2CdP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFdS2CdP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F6BC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757578193;
	bh=+D6K/ZAk8BolUOF8JSoSWzVv2fv+UVzKYG7pW2QQ3vE=;
	h=To:Subject:From:Date:From;
	b=eFdS2CdPOct48kXT3mXhWZjy56q7B/JCbXxunolougWj3DHjjKF2XYp8dQ+q12wqU
	 5iRTbBmCU7YxN+OhSlw5pTw9LneNSz+ktwoXXhqMeddaKT9e4CFTeWQ1UBpFZ9/6/n
	 gxkjcv7tluvGBuLF01t2tA+LPW55v6oOMeF87ZNGumwMdOx9M08AK/ENEn4wl5kXYm
	 fv5FE7lhDl558kaTtBcRzJ6P9THGUQ005JyocZI9OsUd5rKiC4KxVYythdK+ruKN5c
	 0Cx66PEVVRYULCF+PiuDT4s2vKcj8dUWyREs+/CygIjksjcRrie53rLNFAuvwbpyv6
	 nSxZsl+ZL/thg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90192CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175757819358.3418.1254907479316755890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c15dca2c02995acffb7806bac1e84b04069af531a5f3499ace9b84c21c5c1762
Date: Thu, 11 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757578193
