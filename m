Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3535D1EA7DB
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771473294; cv=none; b=hX3AOqIPSvG2dyuGd3hnlJF4g+YJU2Xwz0xogX/qJmRYdNM3Kd8jzQT6kIEnYehB/gs+1xEjQH5PiBERrrpLg3E72PWQ++rvRZ2r6QX6RZ/qTgC9231IlZz9RQvn6CdrJROW2i0A01gyGqQXuPSa1uj5VZX3AW7Z06LNE9oPPX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771473294; c=relaxed/simple;
	bh=nadHhcC60r1deo6GiVIhnPD99cWWAqKpl/jVpvtgkjs=;
	h=To:Subject:From:Message-Id:Date; b=h5daZuYFvBewsnIRNm0cM4QiNzvDZ4WrWpLvK3sytOudWss2ypOeXkXvlZl7XEAM5X1x8KbRbAfF2ISR4BAQK2AJepImyNU8uKHBSCNMn4E49zjzxpxoF/ZyB2KTKiFV1oFewnXdZVvS3p2RhFwyy+SbLGKu73Hsyf8/JKdGz/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QL1bqPj1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QL1bqPj1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B330AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771473293;
	bh=nadHhcC60r1deo6GiVIhnPD99cWWAqKpl/jVpvtgkjs=;
	h=To:Subject:From:Date:From;
	b=QL1bqPj12fqlO87ptfCzKo4qwKOqPvv5udMYW1n/vUZo3H1ZhZLYBjqp00y2D8b6f
	 +VnJjS6auLJd89vgQ8keLUvqfySyKN1YozAwPmbD/wYpS60qh35DsCdp4zwxBmoZ5J
	 +6p33NbuxdFg7qscRmAC4tnpJFTzq/mnjv60VZ9vPyKXbVXwD6TFho88mUzjoQIhQ/
	 S9NVt9JD2sGBrxnWMmLsrgfKgmbPK1VBeXmNX85ypatRsSmLG07XIqk575SluwSuEe
	 ethXX/3SL9ayzpGyUD0AOd9lPuTRxG4KdtOFXBa8fFI+J6iSzCCflu+MRoCGo/ZXwY
	 aus0Lt/0FTC2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A370E9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177147329359.27699.11874762800778592282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9572675ab5f45bef4bbfec5df8d5f899a4456a99ec3a1d1c233a762807a073f6
Date: Thu, 19 Feb 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771473293
