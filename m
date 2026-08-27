Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A54F3448D1F
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 12:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787835036; cv=none; b=qpFAyoEAZbZfwLGE3vQH8hhPOCxjYNhiD8hcCqEQ4yZqtrf//tWEF0MXkvPotESmVXewC6LMgo/Gxc/CX11meGN6qVxHWhGmY/AGle33GrrhH/lQuq9/tPfaeETUy12jU1Aj1cpTsazE7ttgCYi2NIZQIXzRxe9ZQW1XjcAXCpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787835036; c=relaxed/simple;
	bh=HExyM0h+74oqu932yx1he8EkoO828cQtmJxs/fRnRXE=;
	h=To:Subject:From:Message-Id:Date; b=oM04y2uI6yGB81bK5TFI/WyljxL1uDRWVMW/gGM0UJ9xfcrtXMfYOIdhuXlxZukve9GzifhO9aqcx0V75qF2uHfW6c/NTQmr5wrXdZN3K+VqKwyOnhkTovv3MRgVxRvAA0OW+SIwQ7PWjWJ5pgno2WKI/C7p1wXJutB2BE04ayk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPKxFgLu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPKxFgLu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC41AC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787835033;
	bh=HExyM0h+74oqu932yx1he8EkoO828cQtmJxs/fRnRXE=;
	h=To:Subject:From:Date:From;
	b=aPKxFgLu6qHDfvdo87Lc8fUs8Hf1Mmb08NApGi1qKok6QWs+oQi9s0szT5x/fVXDG
	 6F9rvE3AYyFw34W2Ig0mx/n7Sd8EfV17+OvAVgW6yZI10TxFogAgZjBu9kMXbl9SCu
	 CoyVcLVQ9LhBZzXTjK7g7RC09XTcj2eJjKMQY+nt3vS9YLUy77tysa1hk42OJ8Q2YQ
	 J64uZOinsPfWK5Qq8mEVLNX0AyiXbEsaXXT1Oy9w/m+g4HZJ0NgBWQcHaDn6ah9GVv
	 /8oqUyrxTnVXngDuAdo+9vPbEju2/edE7okkPAE5rpaVBtaJxe52N3Xdfya1AqsTko
	 FbmspB0/PBc0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4324C61DC2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178783503372.32483.6575241900727032824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7455d793d736d8d888b813202980881e3dd02545b2be69da56c73bafe18dee48
Date: Thu, 27 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787835033
