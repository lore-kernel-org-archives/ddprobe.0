Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBBD155759
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 19:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718825363; cv=none; b=n5REgEEIH1Bs6PjXGrmmptHPrnK6Uq5ebC3rCc2ZQvvkwhrI/iK1ad3nxVIlEbsnczlZOpiVOkrXChYVWmDr+3QGrJmuvfOvJ8eA5Qn98W97UWB1LOEUvAZ+cQln+1G98PvAjGu5+ykQ3pQ+oGcfd4y4ylYji5f2+PoRGOIxs14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718825363; c=relaxed/simple;
	bh=cIlU/3VLL55oL86Dz/2QsjBG+xTkegvE48LCoU4FTAU=;
	h=To:Subject:From:Message-Id:Date; b=JdpX7s5oznk0A8BVTZ5PGdRaVdLjdGNOqdHxCjvL6ThnY1t4QTL8YXsqRnc1AhgcgNnTzRWLABgUFS8R53CVJXsULiksbV1j0xfJ1jn5MxvPrEUWSDCiklFK+yR37R433GLqDM0JYlkANELhwJopvWlatjXYB8tgCiX/J41a2J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwuY6Ys4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwuY6Ys4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE183C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 19:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718825362;
	bh=cIlU/3VLL55oL86Dz/2QsjBG+xTkegvE48LCoU4FTAU=;
	h=To:Subject:From:Date:From;
	b=YwuY6Ys4bbAviMyzGgxdh5cQf6AIbTfXqZ82GlUDtqV1M/AW7fyp5XSXgTkTD3rrD
	 Zsax1G1wQ5dVgqzOl+MlB5608SP8TL4UREyG8rA0FVa+2RVf7yhaAxSndfurHA7fnS
	 Mky0fxUX11Lod/xKRIcnBkV1WLyejTspy41PXdQ5bVN7njp+KGNV63DIYdk10543+7
	 MQEJQ7CbIjWbOJ99R3afFFdgiJy0fdAchHM5fw3JinBsk5IpUwBKfQzibGdf+0096s
	 hytGEhmsUo7oM97mnqckLKbsBlsasrwjsrUjEV56C1ZC/fe0/uZkXNUAf39z3jDTJt
	 9VwK2GJbG4R2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7C83C27C79
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 19:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171882536280.986.6712780411094386058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c564389f30442bf6a71518afdbb90abc33ec4e5620d7156301673fddd3b685e0
Date: Wed, 19 Jun 2024 19:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718825362
