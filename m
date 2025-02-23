Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507481FDA
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 01:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740272934; cv=none; b=utEUC4NNrdaEbzMb0uc6w4CVadKzxd1lQt5CCRB6O+JHlj1CaDWsWP1xgUH2SGn4Zo9DLjzw6dW8xSfdX7uqtLp0WJZqq2KLBkqrHaMfdCSsIe/CTrXQFD3xcb2DLILk63qrAQ1a7NafoLDjAAO/Jva86Jh4YV4JBynITzzOxn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740272934; c=relaxed/simple;
	bh=v/tnnK/hLT30EWGOL0foDVAcWZeFHIWTvzijSFasjVc=;
	h=To:Subject:From:Message-Id:Date; b=eQJZ4cYcbsq0nN3qZoGURdlNXl9OFRYVhZVDouoZa+Rch7TQqCHUV2hSSDP/Sm6iwQE1zsVHuLrkOYXdnC+GNqehyCdJN9w+Pf8Treda1B6R+5BS/GeAvRzoNZijZSO3EYoi8dJek9XQPFD6Zs9f5OLo6QmULLfriHK/noBS2AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAodp7AA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAodp7AA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5495C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 01:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740272933;
	bh=v/tnnK/hLT30EWGOL0foDVAcWZeFHIWTvzijSFasjVc=;
	h=To:Subject:From:Date:From;
	b=OAodp7AAUGvFS8tJnTbMEH4e2WOUZU2cRkU4l15EeaWfIQeRYiIyBJEtEBYARfmWt
	 5SMNaKpdEbBLbQ4HDcaxy6++M0Zjy0Fr6bC7bx33uQrSaF4NrjrmrwMry9abr4AjVx
	 LJRh3hgqm00sjtEAYSU31A1Rsg7pxLcmZHbCKvYUmrNW+ElOHtYO97T9srjk3pnC7f
	 Tq5ZO7JirXCQAoxE74/c2P4qJPcQXJXjiHfocsdlND/c714utbhC+tzg8o/y1n+NIL
	 kJfbk1N1MTmAVyTPZb8zx+wg7jaejw6OB55Q3k0O/Z14U8UqMmrRnuNFiRuI1pZ/EN
	 RZE25XiYPSGqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A08EDC021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 01:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174027293362.7768.13498820335218828745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2fcc79836fcf2f93abfa63473a068104d3756e64db48b429dfc36ce7592ce35
Date: Sun, 23 Feb 2025 01:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740272933
