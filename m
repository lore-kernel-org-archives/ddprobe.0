Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DABE29D28F
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 10:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771064094; cv=none; b=AMU6H19kW1uK4ulFvl9AuvwCiFHEzde6JrCHoNTjKQqIfvbnYKb/hYmSRmqkYzWxWFTAL9xYEUR8gmFdHK0L85M94UIyrCumCmqVmM2zl0g8NIQC7i2WyRQxurhGFz268avr/pPieQXyKgXDKGIgsa9qfUdsi5jcs3nnI9fmuI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771064094; c=relaxed/simple;
	bh=KvNjKZtRIly4zlG1dUCYJ79m9bg09vEhqHcgWtvnuI4=;
	h=To:Subject:From:Message-Id:Date; b=DkUa4Z0Ybirpzw1kR3WUKVwwbGSzwb7ahZNL6/0n9T3ebKo4iS1o9lIV/+L0ZSacZQrULgPQMbU9hGZofIzos1Jy2KNZp/BUGMibJGAeOL38uQujazOxfzwvzQpKZmb8ZuAFktE7lN79EMIjqqEQNs2yJhuKKdn4WU0re2mWvKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UM09ywWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UM09ywWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35BFC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771064093;
	bh=KvNjKZtRIly4zlG1dUCYJ79m9bg09vEhqHcgWtvnuI4=;
	h=To:Subject:From:Date:From;
	b=UM09ywWPr9pX9/25ijs6CB8KXF8VctVpcyDisaqfpqoj1f7xOCHY0/1SKFCrNy/ir
	 +qariSpzqFQEFC42TOv/UWlOd3snTQjIC0t0gMHcMNJ9Gqed1rMfAmMal5EIgtO5+x
	 /8DLqRKgYac7eLoOtvyLpuGwBHrzC8bNZyykr2NPJX2mBAMUXBrjAs+4JK7y7PhSIh
	 +Yb4dL0QPwwWnlM4UCdD1Ct0kBfWL39vVpd5mMvrahBijpOmGdRIKDFbXUP005pSbU
	 S+LXOaL/gBCQMKfR/vKGpxyksS1jczjpOiLyPMdbrJKwugSn8aeKi3Sot7OZNk2K+r
	 Ex/juiGjMc/DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ED4EF48C4
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177106409363.24616.13647356910095346051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7960640298c4498a53c59432077f37db8f56c6509a85bcb2f2004bd8580aa9e
Date: Sat, 14 Feb 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771064093
