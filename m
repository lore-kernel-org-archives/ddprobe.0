Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D2F3624AB
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776016053; cv=none; b=RfnY5m2+KzCBVLOUVGhgYGsiPU3q0CWjNa1t9mceoHyDoD2oTLeD+4EjH7d6wmd6bP1WDj3RKmChIhGyLoz0qUCUnss+Qmm0H8SmTJ3uFp9KrL1zFZW1fr5dDGEzI4Psuu551AXLCqGPSgcpmPne5bVGKxAeGyMyLhVtKYyKmZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776016053; c=relaxed/simple;
	bh=sYjK8Ne4j1LUpkbiNSWlo9v4OtY82h4Q73Cyk8Ws1TI=;
	h=To:Subject:From:Message-Id:Date; b=RMwWUi/LqUX9geewR0IZwxqiYGw4RB6XfV2Sz2cSkcslAlnKhGkIP/BAuYxm0VEm/zYYOZEAXqhPCqrXUg8Kc/6eCDTkp5Ri5bUhiIEd69L1Et7pIDVqPb+fO5N6vYMvQI2PUU8yfiENM++EoG9GfRFZIZBR1b67xzCUM+DyDrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5M2ErrL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5M2ErrL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB7B1C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776016053;
	bh=sYjK8Ne4j1LUpkbiNSWlo9v4OtY82h4Q73Cyk8Ws1TI=;
	h=To:Subject:From:Date:From;
	b=s5M2ErrLzp2e6zFbdwB83KkY6J6Md64Vh1HROonSeLib+fZivaDtyKOEO/3y7SL7n
	 nEqYtghSqq9qyAmGjzDzIJhhas9Nk1x2tZJdlQNy9jNFXEHHNmNO7Uiwz5+VveGJiz
	 1vSxtS5Scw8XypNkfmUj96R4zMj+62JKsBOwCuI4vSeYxGgR4DxLnjswepx32F2o+Y
	 ytamLtdcDoRc5kEdNKxnGiWXJpNu5zQKk6H6pW7omPbHuBalyv3synQtO6fzrxB3zs
	 lFVzQAVl1j5oTKpodtcAoafgT4MWGt017XuFGkdav6S+xpiMRqw0RdQ/iO5zYKHt0v
	 jyjbVzPona40A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD28CE937F2
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177601605368.9228.3261044736049553026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e6e8e0199c04864ca62b1cae741a2b30bbab86bf0311ce831216682de4b8b28
Date: Sun, 12 Apr 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776016053
