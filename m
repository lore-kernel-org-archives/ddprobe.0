Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E196F396582
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 14:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776523054; cv=none; b=ZOTTl6rbQDIwHT47zhE4XX0OFkwr9PijwHFWeAelOcT793lpGmzHmQMmMhV3MhBFgfeSKcDjbi0upQH4FZHbJoEacZxzhXTnLJaOoReDYm7FGkw7lJuov3AyU7Hr23KjtAXdvrwqij5hgwmSFr9M2apHeh72Q8WV4wG+cQpMfII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776523054; c=relaxed/simple;
	bh=IUTxhdLfT83+ynL0bExzUGMwo+EQaoroChtIsR1ORf0=;
	h=To:Subject:From:Message-Id:Date; b=Pix6OwUINdZW4wTAjqFPrsAkLY2CiiQcHOejbymaasfBKI2/pynLnqSa6kpVNYNb7yZrnb7sPi4eLE/vua86k6PcvegxYQmlyww+8ra8ntO2ZwmqibHaaCrsemsos5xV0evDfFtQqZVCHHxr2ZXiTpkImQFU2wgfJskFhdPmhCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UN8mVkVC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UN8mVkVC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4FAC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776523053;
	bh=IUTxhdLfT83+ynL0bExzUGMwo+EQaoroChtIsR1ORf0=;
	h=To:Subject:From:Date:From;
	b=UN8mVkVCfwRZO7pB3ei3KKR5LmRTcS/lYs73SU6+OyAkYBzUKbUeYuELnl5COj0pN
	 T/gMYbnwHJscm5KXhns+Lw+oj1FIWKa7JiZZFjOMp6IZvygx3IRI2RRM1UHvAUXXwD
	 T8SvdBQPwDfkb28dTzv3gfX0iLvu/0TAMOyvjto2Vt/5eP6PydCM+Goar5Y2JIijW4
	 qXVOkMHFBEaKJsIC5hCbR0VGKoH4jQkbPU8MqYjlq+n9u+jMQY0zABlVZQCiv3vVl4
	 Mk+lRK+bk66h+2E3/oG4LYOgTHtuwNOd4lFct4MxAYHSc1PlyMkTI4QuyqHuyLHmSp
	 afWfRcSmPXYIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC52F99C88
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177652305368.11596.9407181293082619680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7231187ca850acbdcfc070c05de2bfed82e63656007bab86fed3512f1e1e3755
Date: Sat, 18 Apr 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776523053
