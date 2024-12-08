Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4180376410
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733687754; cv=none; b=iyI6olVA+sC4BpVhFrqQfkhlQNsmVprKhz9OrRAjF3ZbGooQUx8ikoJQs2ARF+S+9fJxEHmGrGIhDnnoMA+EUtehhlQqzluIVxsm3etM3UQRqZTm9eG36oVDH4bruFV/aTAYais/9YPiphtyTLX4S7myVRRegE2uLrwipchqlmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733687754; c=relaxed/simple;
	bh=LyYxS9pVgt+G7AvveNkw/sChSz2Ok5ZdzqdpE5lK71E=;
	h=To:Subject:From:Message-Id:Date; b=EU1VNyu8MVwgq4V6Ap8gcCDQ2s1Qi7sNaVfU9CgoF9cD1q2So5RhXDsMkZIM5SQxvIu/eaN25QNwe/b2qDEzvDuVo+VQg8SOGAxr8fVadtftmX4pDxCAhUk2MABpfsLqQ4s4eglxstFHsG/TFDkV22fwD7E0XjpeEoiW/N33QQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ce4ZAEgz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ce4ZAEgz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7002C4CEE0
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733687753;
	bh=LyYxS9pVgt+G7AvveNkw/sChSz2Ok5ZdzqdpE5lK71E=;
	h=To:Subject:From:Date:From;
	b=Ce4ZAEgzve92NZohdJf7WDbHLqgCvSKW0QZmZuTpmBiP0wdGBii+OMWqvhz7fSU1U
	 JiuR1nbJ6zqvil2VMjbXCIBADjZ79YiFUSBgrbospv1QdsdzdrRFTMARi3fJwq/1m7
	 y6UX81csxb2AQDIoFcAQMp/u0XFqFTcgIamPZihqs8+LYJpwCmQHQR/IJ8BA4OABFo
	 OHohsth8MiBGf1LnQjXpLMj/pqyXCMJOo994lCAUOGNh8XlW32zAkBTOBEJXXVkG7P
	 vMhf5mksGJiz1jggSwcvpM1T9epyg3AW3MGY17GW65BMKrW2DkyQJJoaDaeCHUz0ey
	 4TJToby4DqWCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F421E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173368775364.11102.17260037638840274345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be25df4e2f6420edd4e3ed17248ca21f722561efa2ad16de0ec64d8b92dc5334
Date: Sun, 08 Dec 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733687753
