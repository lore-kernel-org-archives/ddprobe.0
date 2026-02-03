Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355CA321F54
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770087234; cv=none; b=dyCbE2rndFXGbSaN9HehjBp+rHzFBi3rknNNrG1cjt42Og1djt9MnJkYHNtegG2gFFrzKojokLEH0PrTfWq2OhUMoLQvmO2d4NT5u27UAojL5GaiYh6fMWN9La5ZSBaTJ7DkZDQSnRwItfKSdnQT87S8bHNiXT651ZXP2B5/IKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770087234; c=relaxed/simple;
	bh=a4P6UyAOtBNJb+Kixb6W33e7uS+PP+H4A4nBswQF/qg=;
	h=To:Subject:From:Message-Id:Date; b=uQ7O5RjWnPa5M4csYmEWuAYWHVo42vM2rqwd7sh1v2DjSAHYrlL6LIWIS1Uyic8VWUlevSx2laXswOOB3HPCuUHyHnVSUDbBlWO03et1zSOQs059phWeImZuQ/JZb2cASHtlkF9fjfFSFR0L87ty17lnkTqOxlmGaqb2AhWnCZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9hYG9qQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9hYG9qQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86D3C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770087233;
	bh=a4P6UyAOtBNJb+Kixb6W33e7uS+PP+H4A4nBswQF/qg=;
	h=To:Subject:From:Date:From;
	b=b9hYG9qQxszCFgkL8ZxJNc4fc2eeWapSeSWnE6d1YMZKsk4n+qEDSDq72OGiBmtGC
	 dUDaG75smFBLHHhXZxZoFFcnD8YwxZMYywphJxjDw0AdUCzZKNv4EQ0tCxK4z5kXVG
	 C9DgTw6sjUMQXP819HylrgrmtYGhe8db4oUpvJUh90v1Nl2RGb/2qPl7jFEAHTTyIv
	 T/y5k+xmUuUjaVxClCSZCbfHa+zltJ9wKnJhLDXhjeY/LQr1eINMePcSBo1imvkvRX
	 oROlrTpUgZoVqFT2qVMQqb2ObS/s6NoP9OfGgMWBSURA60NEwINM7C6WHz1VgH2mBL
	 Zy2pwkGdCC4eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CFDE83043
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177008723360.27069.16789025292971822294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3662ec4334d039ec5248e2b3192aec496a205a4f53187f3da58bf541a4ef4f4
Date: Tue, 03 Feb 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770087233
