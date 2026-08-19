Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62070442FC0
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787133034; cv=none; b=KgA9/mDnbwV0ghBUFj5pZAhuEHwEMeL/Vsm61TxfEZxoRWLo66qZR0Mp1MsYuzcpK0LMTwn3M9UIAUVzKfjq5pnmqKtEuv4g1P6ILvDk5ZSySpnIVuIsl3Zht4N1JycE7kAr9Rl2ooo0ZjMXlLeFgcP4J851PmHhcLCSp3WEtiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787133034; c=relaxed/simple;
	bh=qA+0DAA2Wbw7h3mzeF0cE2eb9NlYsV0HL9RoyAb/AOg=;
	h=To:Subject:From:Message-Id:Date; b=f7dALDYiYaI8O89B3TDvjZhOQU88Fb+TLwXBR5zDZ7eKtyeya1TidH7ouughfioDUIYNL35US6HTjM0UxRTT5DfeY81I4PDEJOMKqqE6AjSz/kK0FCW5eQBhoPWYovFX2HOTnOjVjpD3izRy/llNcBdUOUdbFthwrbV9f4qM1fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mh+yfrX1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mh+yfrX1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7CEAC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787133033;
	bh=qA+0DAA2Wbw7h3mzeF0cE2eb9NlYsV0HL9RoyAb/AOg=;
	h=To:Subject:From:Date:From;
	b=Mh+yfrX12lfnZQ1fE8lMiyS2A1vZHfYxcJIYgvbUQOaHYnTaiP9T6L2Pu2YBtBfXo
	 GFKlRoxFtcm4aoJqgV95e79MNz+VnwpHshcuxQizsO5+jO9vPW/qQg1i/Ej8aZY5kL
	 uj/oKAnIqe7xDeGS2yCnuAoKkDvbLPAaR/pB5l3difqi2kRX3GCvFoZz47Wt7fYfec
	 j3AcfjbimxHhZ5eOrkDdLODpr7Ktqx/Wu6PLy+UY/WI66PWbzbbDVGyaQcGnJKOaSW
	 1gnb2VD0HDeIdyZy17oI4FSUeIoXDU3hAQAR+UZrm/MYbM9GH8jvj6W7EFj4zfPGmI
	 5zoTWLCbAmulA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B10C5DF86
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178713303374.22161.4949261981249386799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 256737528ea078811addb9d06dfedf386ef8bf4dc117994a11ea63a013dba227
Date: Wed, 19 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787133033
