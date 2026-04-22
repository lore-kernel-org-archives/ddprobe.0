Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F0941A8F
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776832654; cv=none; b=smo51nWA6eKIdYKHaQfnNMFrNEH1uMFm5lF+2Pe3eCA8Ld1w5ByA9zQ9EqJKkaR48+OkZCJ2k9NZk05CMb1walkuWqeo7G2RxJTdGgnnSdtYtw6XfOeOf8slWGssHRNB1IDCzE4tJHYn9YaQEDMUXq52KgL/CESxBrQi5LAA1TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776832654; c=relaxed/simple;
	bh=rnkXoQ5Mybi/kFGlrSaX5sEOyrEOHExdDwIoW5X5778=;
	h=To:Subject:From:Message-Id:Date; b=AkfRdzLCYDDx6k5k3U9AOo23Ed4tw8WrxWmWnNXkRQk5jOUaPc6JMD77eyY004/rTlfo4cAyuUnbtWjjAsp5vNtyl6WFy3G6xNG03qMI+ejdgZiVNoyImcCx27NfZ0/13OFBoHi8r1BHd9KJD1Kyglrlt6ihPk0NOty0tcWostI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXw7M6EH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXw7M6EH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1847C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776832653;
	bh=rnkXoQ5Mybi/kFGlrSaX5sEOyrEOHExdDwIoW5X5778=;
	h=To:Subject:From:Date:From;
	b=fXw7M6EHwRUCRhwHCT72b+/NBcD4hZ0GAhTqFKR3U/lV8DUACGLRtv/tcyC4yTSgN
	 aCRxfHzha4hsQTAtezVzBLU7QyKIbroc1aHXRkCU7ekwFt2dNh9A+4tTUub5+nKrHS
	 IxDmZX5uc2YH6fG/BcykBhRCdITKm1UWJcbv6Igstg1v0rt59tDDCW4Yo0SRccrqwK
	 60/WV+085+k+ObUyAq/VgqUtZgaGxbfP7JyeMbsTWrwDZDTh88/aWw4jg5awNx/8Eg
	 52YMQrQ2CTl6u0lVpYzz8ToCxJlLw320BUtnKfxllAoi5XZd6OQ4QWvy6J9f7cFfHQ
	 gnla52406sPKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDDAF94CC1
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177683265368.12717.13528574583098178957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f498eb72e1f7e7ceee9740b3611d65a998f8bf76f8bbbd1ccb6127a106f8db
Date: Wed, 22 Apr 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776832653
