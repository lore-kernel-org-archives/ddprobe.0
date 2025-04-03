Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E5B24336B
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743673794; cv=none; b=L/YR45LZolyvO+OxGDlDf6QGk4aFMk/8ZjiAH4VZmI3Pp/xJSlJ/8UbQxVHkrtkiAFGSnNxizz4HHbH9zisw+OQQoncbFv5pXP664PxL7QzcCzNTtw8UdpuN7cQP24b2SG8Zxwkrr+siKO6iz68bLMMqNFl1VserItjxJ0W829E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743673794; c=relaxed/simple;
	bh=Em1WHLEZuzU27dYLk8x0ztA8jlgFts6kdVGXOnno9tM=;
	h=To:Subject:From:Message-Id:Date; b=rWrs9/mbQHJ8jisQFRQkmnjgayHYKSyAHbIAtXQnwZ961tCNK5t2Wb2i8BZOtP+m7f+r2KHWdO0tQd2eTUF6L0JF60lJDv36VOE32K9h7t9ptPrOvqwyRLJ7OVvWyjlJaf4LX2cfb3QagDyBhEqV9pbiebPPMEWMpQGhlVI89no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qY+IIfkD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qY+IIfkD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD70C4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743673793;
	bh=Em1WHLEZuzU27dYLk8x0ztA8jlgFts6kdVGXOnno9tM=;
	h=To:Subject:From:Date:From;
	b=qY+IIfkDzPSzlRFw1rjtNL8zAz+PYxWen6xCz8Xbyyu6ymkZeeGoXWc+hF79gFW2G
	 6XTvonxJyX3t/oOpSO/SCDMmFDPwDkAYcs1jLZlVh563TDnHexk/uFl21bNwv3AjAY
	 2J9I0DhcMiZo6HpaR17Z2iW6WrPslU+0vSC/0g8MjWf/4Up8AokHcp1nY9G6vR77uv
	 R5W1Sb3P/ZjTvzx3/Cev/wtUlIuVxeUC6FD7/b0EQyCMhpt7J4a2pmhigJHbOK4Fzm
	 yV4ix14U+Hin3piJFhz/jxF+9neCzZGHj6qYsl86bl77VByvYmcqE5SZ/MhowROD2X
	 F34sdn/S3x7iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF29C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174367379357.21921.5470435828792111322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8088786baaa386b42efa5411d7377aca4a433d2e97e49ff221dabec93a0d6e0a
Date: Thu, 03 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743673793
