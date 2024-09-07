Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2622E18637
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725674154; cv=none; b=dqzQYhSoZkdrC2hFDsXkXe6lYjyXMyltfP+nNww0M1Jn8Eqnr4okO1gv0kjutxrVu66PRPI2Qz2E6NoK/6j0pzXD/Xq4coKwQtTiGAd1PcG4hUIjEGkHGP7scpu+8yjwQAx3O3EpQuK3DmNiVXonHirO68PySCJ38PLl53vcjWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725674154; c=relaxed/simple;
	bh=PdFmJ3nNhoqsCORZsHaKGR8afOnLekqrNPR2XtAmze8=;
	h=To:Subject:From:Message-Id:Date; b=tyMPtE5pa2GnKfrS8WOMQAFv+d5YG5p1DSF3lZxPp4cPbEUJ7U+Z5YtLrAe6q5upC5D8nmhGie6+ctKAu67i8tF1NQzpVCWYkuZem9S0t3Sk89SfD4Zjn3wkZHEja7ZC+PURZl2SLPUkbRm8b7NSkEavSTHSGJoDdlml7UvBadI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EkknZy4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EkknZy4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BBFC4CEC8
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725674153;
	bh=PdFmJ3nNhoqsCORZsHaKGR8afOnLekqrNPR2XtAmze8=;
	h=To:Subject:From:Date:From;
	b=EkknZy4p1i/KimreYeocf16iRjvk/d/1berYCrCy13/sdJJSJC38fgIL13u0/tg4C
	 5TxoW8shc3W9dNV3waIQit/68oUkfAGHPed2oUOpuTw0SZ9JYt9ERb8tCQu6iS3edh
	 FsdN8n41lDKnBBzNXGqOBGP17hMeT3X3nHyhihXaehgaHxW7RS5h5I+JR8pCBJTyoY
	 f0XoPkE0r/KutQW/3Bm+ba5+sUScf4HIXIR9pCYy/lTuNz9TBfC52HRun8nf/nuvej
	 YeMOcTLDn/ukwPnKmGw0KjF3vTMEq6Bk+1NF46IQoSb58MYIYLkZwFT/JPZ3BTiST0
	 1RIfudKpKycMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DB7E6FE49
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172567415360.31235.7160929918969036331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c76b684a750d5ec232e60f58436faf9a1ded0ce4b4e0afdef35970cb00386d2
Date: Sat, 07 Sep 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725674153
