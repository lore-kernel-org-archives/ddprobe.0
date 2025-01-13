Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6ED1F9F51
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736808954; cv=none; b=XMsq2xlY6XpLyATKdQPxzFiutdIhAElJWgtvDAH3dibfNxdjE+wtsOJGqWRbX3xlib/U8bqhx3uzqpuyfL2nRfke/TGI/A7QEXCBq+05yyuXvvybc9dPbOtKQL8mT78xGYg7WEti/MIkvcO8VNjkETMnQAojZj4Mr5myRRpVu6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736808954; c=relaxed/simple;
	bh=cS+gyxH++0pwx+i/XmmdCe+h4zwbxR0e6B5OWbDRglU=;
	h=To:Subject:From:Message-Id:Date; b=foHRTftNpvWoxXqZ6PVOJRVZCga+bnZBi50w6adKQFisOpL3u8G2RSOwDGq5mHd+jwTdYK1vBo5OHJPFmXB2WdNAKsOsYmSOWATsgwsAl2PUJs+06PDQhBMkNsNGJVkMT47WJtmjcqkmGcguLi/uaUrvy9sgyvz6tR9S2Xd4tm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDxE330U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDxE330U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFECAC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736808953;
	bh=cS+gyxH++0pwx+i/XmmdCe+h4zwbxR0e6B5OWbDRglU=;
	h=To:Subject:From:Date:From;
	b=fDxE330U/gvo5SQadepCUrMcea9Jqp47pzt2KGK85JE0R9NxVGEMgpAGPfqxu19+4
	 R8XSxXHBUD5cJPDogvyrR8Ue6L5wpqO0kGmcpcrD1d5a1YXgyHSHPU22LxlpK0Y4HR
	 6kCupZ+fHIzcwZ5IMvPPSIJjcvAtaq3EWdwyVvUXO0PE24HrNd0W2sJkbiJts94VTM
	 mIEO9hkdulAzPpB0X6N3W8cgqyc9p+aJM3j8rK1jJis4nCgjjH+RNbRVQjIhqFcPTh
	 +T9ujXHrJ/F/n5p76CtvqFG2C6QsKKaZzK7mVVxGW6hm67z7iauLg8JTqSp+3QGG1d
	 V8ADnvWgaZK+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99525C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173680895362.1842.12027829247291456786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a973e71d303f445cadda903ee7fdca0a50baaf429bbf33e0bb722d3d2f6e0a96
Date: Mon, 13 Jan 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736808953
