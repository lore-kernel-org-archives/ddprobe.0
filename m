Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F23F1624E0
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743661794; cv=none; b=V9bZG1coP8LsJYIQ/rOK7LkF9XPVpJnsSNSz7HPS1b9cLvH9/sGLqQJUT3+vi40Jn6uZxstGIOkS2wvgD4FF8AJS5dtU0fwKdCuzzdX06jkUt31y2WAfn490Xqv/gIAWs0MbcbXPgPqiZ+gMyBf2a573DJ94qzm4zMV41pEzrhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743661794; c=relaxed/simple;
	bh=Yxk57FKe2Blh4fZhttqzIrRCnRV8Y00Kr7Xd3w9t6gU=;
	h=To:Subject:From:Message-Id:Date; b=qv2k0LFVO6qnPg8biMECaIp9DJsXsAFEZecsTM6e4cho6PT4SMVts5j91F1xgfxNFDBPEVvETBJtOl16cibpN52Mx0+aHl7zcKDNoTz/fr2R6OtacrYMPMmHlViiI/hHoMUJqKaoM+DSjVC2psrOcbqtXELZI3OfhHJnSdP7v6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDZL0azu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDZL0azu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C8CC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743661793;
	bh=Yxk57FKe2Blh4fZhttqzIrRCnRV8Y00Kr7Xd3w9t6gU=;
	h=To:Subject:From:Date:From;
	b=VDZL0azutA7d3bmiwBl6comSKg8V3BzJ7bwlmBuzWloU7Y8n+iHiKJ1BuFW/uLZcx
	 JtlQxrtNyQxWujaF912iuyLCvApCb+2s15Pa7/+NGkdVLJ8k6FNQKJtXU3HuFBfi7t
	 1X7xkdLCxS4OTbk8oC+85VGUftjtZ1QmyyOanRt2OSiJwXBZg5Nr2HAL2BADgWLQVo
	 /gg3QkFEh/HW8jRkUZpQCRdS5nIZcHnZFXP23ZQoc9atCbKJQOaD4fyCluPkgJADqC
	 +RLxR35lb+YO8r75t3bs+80zl4Z538bb8yhKLnEZ+dnTLDwbtWEWKTTqsoR75HQpbO
	 7hOfiVyDIHKOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAA5C3601B
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174366179362.29278.11553676732333727900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32fd6d5c8715ac8c0eb93ed93c276726e8713d662f0a3671d6367f2a18a71244
Date: Thu, 03 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743661793
