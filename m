Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296E92C08DF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753968594; cv=none; b=I/MIZ8zbhdWBQX8hLaNP/McL+SASrYvn2qTF+/jjCS02mA0CZ0+4VNwE0EpgT3YOvNndZB003kYJ63sh5fDsp0Ohdjy3aKbAfHWdKgAV3J5jSvF+WlohaP4fskLeQd0XsPJ34MedSt+XmE9u7vtdMBIwfGLmLoNZEwnYR39Dsyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753968594; c=relaxed/simple;
	bh=LD2G3rxIE5jbWH7qFpMjT7Uj+sCbGSszcu0wIqQDLE0=;
	h=To:Subject:From:Message-Id:Date; b=nTfo0aQZHf2CVWdPWPhtijX9bvqJsUGp8GG2zOC/yJkQz1GbXtA9Bw+k9Rrqw7j0pwdXX+vAbS+5Gv6F51PrsW8gNi/KSL/CEkcb2we3zk9B5xsJPVQW0ysMHmZOw/V03yeFhoBSMEtqUrzLu7pdSD+TLw2vCs+JhpNrQk4QGiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qS8W4KQ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qS8W4KQ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D9CC4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753968593;
	bh=LD2G3rxIE5jbWH7qFpMjT7Uj+sCbGSszcu0wIqQDLE0=;
	h=To:Subject:From:Date:From;
	b=qS8W4KQ8xGKRpbu7pJretrSewGuInj6BAnyhOERKfUkwGsjEkS5In99GTFfaNdgf8
	 pHuP6vxD6asQ7VydtFXgL5ZBu2jtBxtllEnYXxU+e0paReQNlyavGHsQUH1yRvYalI
	 aZppkBmkFu0yh5vRcZlhMG9+pTvgCbfXGqIE5efBZBSCrHVtKOMHWnYWk491++WplL
	 T+4n6lxSfZdeP1CWhO7UY1XtOy2OzYanzX9c6qm6lvxH5jb5Kn+UB2jYer4vUlYQzy
	 9Lx9fiw2zFtjZMweneKxx7Z6mRYGBJG3OO78RP7M5t95dk64IgLpFQD3xeEx8nlXDF
	 9/QzHDBCR5/rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956E9C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175396859358.31015.8153338763251540485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59b969c831770c78ed9387dbdd4488b2a8bfce0c55db044298fcdc0916a36304
Date: Thu, 31 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753968593
