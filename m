Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D23227599
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773549894; cv=none; b=m57tsdMGZalTE2Oh/1gIOA/5FPlVyA6MQ42hvx9jmpWc3sscepGf9X3cAmhdtBFMKeVIlVhE2TIgEK25d4H9MRZA0OjSQIXoyItV23SgtBp19UZ4FP//RBFvHv31p3+jVbQrglAo0DqurVKmbi7sLaCpoW0N+EX562H4krPgZ6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773549894; c=relaxed/simple;
	bh=0z1SggcO5IzVxPE1y36gVX6vEtSrhJ0Zn0dm9qwxF5o=;
	h=To:Subject:From:Message-Id:Date; b=uHIQa0NhGmrCo/OqxEhNw3SBa4wqVqwN8eYM5TWerRaVKXblR3/3Gr8293GdcKIbmrHFpgmGmcpdi4sQ61FpJLi5eIS4CXOL2gv8n/PUnt5fAvjytRv1Onv2u2tpRkxaXVJEOHNIXur7N7tx+R+rmlw8Uv87ZaNroehaRmDNbjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZQGlBuB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZQGlBuB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF283C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773549893;
	bh=0z1SggcO5IzVxPE1y36gVX6vEtSrhJ0Zn0dm9qwxF5o=;
	h=To:Subject:From:Date:From;
	b=bZQGlBuBbcpmrV8DlsoFs925D2v1n7nZjNKnYiKXMSTSZkvdy+HBs4sZA9S2/8jhq
	 zFpT2i28B/exXfvskGvb8TrcjhpvirnTxS0lHx7f/EMfC6V9Si7bxSRwtHa0sux5fA
	 FU4lZ4TQw6nC8q8jEhfYs20S3W2pfRXp5KlsgTvRIXCj3c3Ri/m4szu+0ew+efAuDG
	 WVLwgFY6AX05N49v1s2DuLJZcrqKIXzQdjMfwIaGP4UVc4RyTRcYHt8mdEorbtjnBA
	 +JtCs9qoKTaCQtJGlLek+soMvHheiFxWHargRpVKlqXdlEZlXUyeI+mo7LZoDVTBJZ
	 paG9pw+m4804Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E8FDD58B0E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177354989361.32640.5180781866789122582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de0427004cdf798dfe5f84f1b5c2dbb84169699bcd1f8c8db81ee5e889fcd5bb
Date: Sun, 15 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773549893
