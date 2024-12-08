Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FB1EEB2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733644554; cv=none; b=r8118l6RU1zt7iuwEWnvELzQf5dHaEnTx896mj2CpK6/hGl8phZ77s96rJxfZTt3JKDiPkGht7l0WMxFhhTpLfwOs1SKJNKRLauWjmG5ysOIeZ0TeMpvhH3v4mvBc9/yfeodlT6TetqkQca+hoUj+kCZKqOPLSfLv1eeYUVfdoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733644554; c=relaxed/simple;
	bh=0W6IyMfsjDi1Jy4HNZBRAUvkk//lykNsTZ4tNL/HwiQ=;
	h=To:Subject:From:Message-Id:Date; b=XF2MrtSHPy1LKQu3tg8oroub/bvymd8qelU0w1ios/fpOruzszWoavMrgdxBKHREEFHe4Zp7KlsnatGgvoo2CfGZnDMrRSLVkhcsYpZrXXbJmoaTO6EBlmPwrCj/0eLsygX6x1EyJmjDC6chqKKYPqoeEnHzbglpH2UvvZVNmd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2NlgSZ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2NlgSZ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F0DC4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733644553;
	bh=0W6IyMfsjDi1Jy4HNZBRAUvkk//lykNsTZ4tNL/HwiQ=;
	h=To:Subject:From:Date:From;
	b=L2NlgSZ3RvDsipv5tb14m1+jo5GUH4V2mAEfN09w6WkKYr1aXcnycDE97sKTqrJcd
	 JjEYjPDcxIQrGrjE1lk5o9PmlFoSP081FAErXVDRtN38mKUnYlqCTtdjwnx3aQY6Us
	 p+Se/omE2JtCnuVp4r466dM3uheBtWroOZpwRFjv2z3LEg7g4QTp8aGselv9OztAhf
	 6gVGluK5xUCQvoXDvHJ3sRBs/nWfI0DnSSoqYZKQ3eyFC7wmFOhdcsu/kUKmWOPY+P
	 mEcObmqwxGTyilsyg6dwDXTiAHSCoHKC6c7Rz1RMZfA825f6i8EY+0LGz+nRtfkpuj
	 NuJUP5iRlPzaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C76FE77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173364455363.4486.9610122141517098255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fe7dfdd9ac2782a3551ceca4e342565e9e832a5d73dcd522691b5694faa6c37
Date: Sun, 08 Dec 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733644553
