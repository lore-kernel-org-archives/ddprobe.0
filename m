Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C3542AA3
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767689034; cv=none; b=Gr3OXMX2chd8ZNWBxgji/32KJ9ofYIQ2Le8XvNoZKJeI32LV18yJ6IYI+fYXrYsNfr/XYm1h/6eysDJkefHuhfclJIRBnUWfJ6CFPD4/jVc9SBi+Z4mdOCnBVl5h1ZC+ODXYDeqPXsFwiHxK+xJHi3rwOuH/1VJfKNQTo9L6/Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767689034; c=relaxed/simple;
	bh=zOD1ey8hCziU3c48JlRHLecBCNVkBF7SAc+lpxh7Bzg=;
	h=To:Subject:From:Message-Id:Date; b=VCk3naZbmknIJL9BP36zH+nyfRCKY0uz8c/b5gWGJpLEVvHrv7ecfdxHFhmOoPv4e8VfHjhQffn579rhCp2UDZcFeR+Bof1wRUCvzPIoMd92ZhgIU2CGaEFz7Yfxi8MpNzJyVjBYazG0Ck6QzFac6PkuAINsQCZEnImgQLT18d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJbrNTVq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJbrNTVq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB20C16AAE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767689033;
	bh=zOD1ey8hCziU3c48JlRHLecBCNVkBF7SAc+lpxh7Bzg=;
	h=To:Subject:From:Date:From;
	b=CJbrNTVqFBNFUQkmw+5r81MVCpLW+T5Fju/Q8yRFqOLiw/D1LLQTwaD3N3y+Q/mxr
	 yLH0P6KkX5UXK+2wduadeGX380tbzuXHTDSh4OyGgs1X0ISsaSwNgps4eNtIA0V4N3
	 HxrUUzJZDcawU4+L2Rt0HQCd7A1wRsuk/4OSX8UjcOX1oowSq1corlQQDxnO090qgW
	 aYhEQaAIVrMY4yIXMu1GCrsuw5rVkHkK9CN3ClKfzPU3sJ8TBpSLvGYLh2ZUbNM2zh
	 l1M8mSVQx988ZrwhQ9K1NxMMDGrlklwHB2JpuyO1wYmmaXqlepbeSF4ryd9VUyc05m
	 Nh9cvtcGifd9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7D4C47BC8
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176768903357.14541.2557226392740264999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40b7010923e34f31a4f96fc076c82a9435a18f872fa1657c40a2062349b689b3
Date: Tue, 06 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767689033
