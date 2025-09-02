Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E9A631A564
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756819794; cv=none; b=BANX93P6mgy2Ao4MBFf9uF+SIks3QA643oiUJDaSE9hevHiKeLNOsifSYNa0nuQ163vdGECtKbrlpndcw7A9TwvoE9U2q1m9hnfeU9a4mI43rnSQ/JaidAbUj/rVqQ2CJ+of4c1IlF0maYf96ROLGnJoTcUxfRRCvtBdNNDfbnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756819794; c=relaxed/simple;
	bh=hXpDMGQc7sJY/Yt1mukr4qWRpyZw7xPD4nWEAhywXK4=;
	h=To:Subject:From:Message-Id:Date; b=LowcFvfeNS7og7kLtWVAgX5S/LzuJ92Wc34SZcYqDT30sOaJL4iKo8P2CQddleflqVaV7kVnIk9hLn5pjsIhgeGoaZzRB0cNzvnl8hOmpQ7rnIgLm0G7npC2AqAyYhTgxHfl9wvAzme4Zx1YO4xxTqdpRgIxDp5Vw6AAMzXTgXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdjEB9Yd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdjEB9Yd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A321DC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756819793;
	bh=hXpDMGQc7sJY/Yt1mukr4qWRpyZw7xPD4nWEAhywXK4=;
	h=To:Subject:From:Date:From;
	b=kdjEB9YdJniLyXutJZsxoWRsdZVA8JIWI7fRl8TVgiTvxTQcecvHab6MnSdBh4xdr
	 vFbVtWB3JN4CyNVQOHxLIx5B7HDRfbCU2UqZe+MT8aDGEOVAGfBztkFRbB5PjvGgRa
	 0GrIqp2MGBltNetKy0leesiNHEHPrUNEpKeZAb/YAuUZ1Ye1j8emO8LkncWauEDeWw
	 fNpTmNsDtirUfWTV+tgT5Hwjq6BE0xa73RdCzM6Yw5+1zF+SmdobHlteN20AfrmyPw
	 Xap6sO70AqoFrytZqcKWY5nTz6m6nRGyZmauKYA0lZsK0XYEkx+tVciZIr2m6/7oVr
	 RloKlt5sFw4DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906A1CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175681979358.10228.5281559449449924478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6fddd071e8f7ab5b7001281c83330e1202a7f0a1eea1100943df236f4318de
Date: Tue, 02 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756819793
