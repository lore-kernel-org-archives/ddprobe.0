Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAAB4AECA
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 11:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714216343; cv=none; b=QHlULRqsgx3GwFTdZ14xnZT9C6pEDPbo7aQCB6w82iB6svFor8mkKz7EL0/3khCOsqP1P+go3c/6uP4wv5/XTqOCn9nS7gqrPoQbHeLWzgECyjv3HCWvIns7xFbo3fe5h6rkyPnc4WjbGTk7pRS5zHhMAuyqYImiA365b1/j3hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714216343; c=relaxed/simple;
	bh=U7I6bRFt8MvCokqsFe6jIbNQrGZLfKf+ccN/9spfdBo=;
	h=To:Subject:From:Message-Id:Date; b=bWtH31BMf7G05WHI9CLw9vFwj9X1ts6Y9laChHFhK5HYMsInFrT/eJMgVC6gHLEDECUKncGbmz+5AQMQCktDxp66AWxlPi+MT7v2/CZ6ZdtPPeNGDnWcF8ud0Bg44G8M/fzV+yKIxGopmXhtr50oVbTGl7i6InTu6b6zJEfxtZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4vmI5+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4vmI5+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C04C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 11:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714216342;
	bh=U7I6bRFt8MvCokqsFe6jIbNQrGZLfKf+ccN/9spfdBo=;
	h=To:Subject:From:Date:From;
	b=V4vmI5+CiarLmu98dXCMFtd3klcZOeULV1Y7sghbyshCL8+gCQ8qAyVH3ZDUnNIGP
	 bV+qNllk2UoXDBbTEOgdnQjk/CgjwcRDodQJRKFjT3nS2XFyh2Rb2IE9G4NWxekkt5
	 F72bIrul8LhAIl8+nUx/yYggY0O8dyi9uv+R99FLNmYFAAoUM+x8UIA1vYhGwG5h6N
	 jDtsJU8HbVf+Bwh8UDHfHi9Cs+fksAVKCD+OwS30GmD1p1sBCN0D5hGwizXaov7Hmo
	 sFHVH7fJB5ldJbFIJjbP2oUVKFBY4uprBXzTbpOomIrbjeQ5UK8QCTbrCbbSNxbQQB
	 ziH2mHqVJ5nQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2571C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 11:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171421634277.24946.9148530185245206544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c1a5b121bfc4e7e742c74098a686330aa1cb0b1a4d945d6d0b3536db18adb0c
Date: Sat, 27 Apr 2024 11:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714216342
