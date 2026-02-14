Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3227C23741
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771052094; cv=none; b=n1pCUBy2pBfzbJsIki4PfB4C45QKSESHyGkTT62nUeKFna4TbCRW0GGMad8k3BkQKlWeuvFYu/rBffBvQkRpXnrpNq0xOvXYKEA3wyw81XL5m5h7qr4srLMZCyHPD4MjEycqvShHDFuwuGJK019Lwi+t9rqC7rHcvBRXvx9Troo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771052094; c=relaxed/simple;
	bh=YwfziaaSa4rFN32XOOc3K+jnOz5jSoGajPJKMq1ZSeo=;
	h=To:Subject:From:Message-Id:Date; b=lIciZ6TSUewvtCcRzADBw9YP3EQ1nSVAYzph6HMoZSVjujHsjKQanOveOpnfvbUWdTvmZBNxsOqtFCcyw2ypNypZWrBbKiCNT4l5h/9HooLheDzAdVffXEypv6U69b3vIH8H8FQ8mA8ftPr0hd28r3lg3i/wpHxaESBEXrGAYuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ppy5DyKu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ppy5DyKu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95B2C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771052093;
	bh=YwfziaaSa4rFN32XOOc3K+jnOz5jSoGajPJKMq1ZSeo=;
	h=To:Subject:From:Date:From;
	b=Ppy5DyKufTCtvS7PxtAuyhQeguPAO3JXbJqSmGWB9pzd+tZa/x6Xcu/c/we05S3AT
	 ZAz/PWowLaXabFHsWDtXSHpUfD2qIOGbLGbdhUl0yah90Sc8QvziLu0sZaxCG/cLw/
	 KOscD4287ef90I9IIdtlC5VlBkxOBkTycsiG29g4m7sk5Ej+Bt1eZxU4fVDozJNQ0t
	 jTBar7hXCV3fjexdfR2JL7U+YbeSzNGti5IHwYKQUktI295b2SQJR3KrWBu5pHDrdK
	 rPTz1QOpAI+XXzzADeoXPYmT/72xEGYSC1kjDC1LxxIFCAAPP8AvuIP7zqzO9JTnTG
	 afLL0q0ToIECA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0347EF99E1
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177105209361.13872.14787936866901765385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5c3f1855d2979b1eddf076b5f5df7cef5d67c64d9ccec9b9b9cb4821d960f86
Date: Sat, 14 Feb 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771052093
