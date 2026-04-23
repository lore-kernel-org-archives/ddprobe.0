Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A8732142B
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776960454; cv=none; b=ldYRNOevf7vt1kHdYDN9zeVVO59lV4jo90RfM5xKM4ybpc1RHRJkBL33wvCaO+IE0+A4q6YNh3xqQKD0j2lQFsfLgBkmqInBdS6WupWeJWwH6zokqXBsAzoIJX3vYvC/8MKAWx+JljoX4GIqUpqPMUDjiVHC/rZnWF10Gug/Ylg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776960454; c=relaxed/simple;
	bh=8Q8EcWr9RpS8vD+0jXf2CdSGHTsx8wJZURrYnUhvWuU=;
	h=To:Subject:From:Message-Id:Date; b=f8V45CkTCR7allif5V69jfFFvT9x0TanVO1YfMNLx34jeJEH+JurOj5io61z+SHjYv6hieTftMVqu7RU+X506fehdzA18OOuS7nTnWa4Qt6P57caypTR9YHzWWDCRRw4KWxAuMEdXjFbp5Vhrx37xaSg840W01u3up7Vj07bVqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fnqte2an; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fnqte2an"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0D7C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776960453;
	bh=8Q8EcWr9RpS8vD+0jXf2CdSGHTsx8wJZURrYnUhvWuU=;
	h=To:Subject:From:Date:From;
	b=fnqte2angk5s8rvvqHu7+tjeL+osDU9/6qAvV4xcmaU73qWZSYts4xBRdERxBthdx
	 boQ5OlwnHyv6EyhtOmORQQX0BTgQFfbt5yyMwbxDFoxy5e/d3bFbILMbgFFhBs4fBF
	 x7FtpI6rEL1QSeC9SEHqJMO/6/h2StKpGXm20h9DMhggw7YmKuKv7FBubkBlEw+Smh
	 ucQk+yOoYFua4lQgS0elmQPnPKGdb1mbhXQ+BobeOL/etmRfQsHcqM64uhZwQ5GX9B
	 S2KfHS7A8xj8dkFC+wcSMkO63Wxiblv7g5i74gGhJNobKG3OAmEv4Ak3M0SHxRLJNL
	 EYkgcoUiNN7ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD3AFC0379
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177696045368.7048.1439365433367062218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e489787c369a49b648e496ea81759d5404a87b28c65063ebd01c2649f272d64c
Date: Thu, 23 Apr 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776960453
