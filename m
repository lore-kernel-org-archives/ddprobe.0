Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB0023EA84
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788409834; cv=none; b=XxkOMco/1EphGmWAO/Fb5aWGH052Ay86627ib1zmU/s9ScKueWkfCCSsxU/YZI2krab97P5gzaG1RrIcV3t6xdq9rYhWaZD4GPE/Nv2DaGdcoZ7/p30Fs5B1snmIMeB/EMwq4HFQPrmZGdWad4NyD6XnsHjsDjFyK9CtSUz0KH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788409834; c=relaxed/simple;
	bh=M8ROdm81aj1v8j1MDTOIvD5ZDw5FQE6Iz9bHi7Tk0QQ=;
	h=To:Subject:From:Message-Id:Date; b=ETqmrB4PXMKCzFZ5KqEAp76GeqFKdD6RNHZnPSzsYGXGLLzfqWwieOCZWWtluMlLGGytsnKIL6iY5aWGHwBsvNZ5ZkDI2yR9Sx4uBakH9CVywEbBs5w6dkl1dAwGMihIsQAxOB4hLV3LeGj44dVhVXXSQlgTR0MxJI4hsZMhnQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvH04uW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvH04uW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD074C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788409833;
	bh=M8ROdm81aj1v8j1MDTOIvD5ZDw5FQE6Iz9bHi7Tk0QQ=;
	h=To:Subject:From:Date:From;
	b=hvH04uW/3xz9dX4NQBNEqClgQmDqRY1Yd3tZXoxuclj4fkRNPxp8rMHjSlvNbSQCn
	 L6k82jxHnzxvaDLv1qKB75OeC++y+atVkT7v+BD/7F5tgjN3vBntv7GIl+AbEebdq7
	 IoloseBPlp6WumI9fmI9UKzS+2SpjcXWFwQPtBUuJ/vykLFgFx05zUbM9zv4qpNzgY
	 RtzVypOupnjDGzUAGCKQPXaSbEWkrevraX8ii4MsOaYTAM+9hVdBc7n8paeikz7jUd
	 W9yqzC7VbiiabGWMg8xohmRqgbRntUElGi+JuTWoKBejrSO6Gb9Wa43prHcU7Up8jA
	 +evzLFjJzcKlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2CD4C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178840983370.5105.1068486547378680344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b0dd62a25f9ab75039504a40effe3ae56866c899d10b2089eea0394576c3810
Date: Thu, 03 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788409833
