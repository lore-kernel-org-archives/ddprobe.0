Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0371F754C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737103554; cv=none; b=YgfqBN+3AjecZHGdjDxCymteLCTwFNNNPOnyWAPs/99r3XQo95XKsszc4qUmDs48DJU2JVJN3ohkmj8LBLjl0mKHkf7xJFbEf3PsvWWBn1y6B0x/Mv8mEkihFxlR0sr10tETmXpz+s5Bg8QhsbN8jNy9k2OAQRH4/N+1px9wvLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737103554; c=relaxed/simple;
	bh=hDp6+0sQhQMdqAJEKa1IdPr6Z04g83r7HgaBjk0ZYQg=;
	h=To:Subject:From:Message-Id:Date; b=Vh+I6N2lfSB6RdotStALXFmKnWBwqZD65rIIvFufVoen7pwhKV8Q7asVlf6T5l9DjnPYV7oEYdQSfdfgp5xGeXvaQTRToR56JaSgqSmeB3L6qXnxr256+p9dIsCnjbytJ0kmxCyrYRgjO70SRcYiPLNL/czuVgKcWlTSrc4FenI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6heAhX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6heAhX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA964C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737103553;
	bh=hDp6+0sQhQMdqAJEKa1IdPr6Z04g83r7HgaBjk0ZYQg=;
	h=To:Subject:From:Date:From;
	b=I6heAhX/DxsiOTwJgpXESEbCjowhJ0CXZFXCPy32GLvCNh4iD1W8hq57ZUydZxMN6
	 KeC9p26kzZN8qUD4ViGoB9Lbk6xnreh86Vtf0WxyzwhGl2DBSXxTmtZyuFGNhVJ99+
	 VdF0stlf3dA3QFkVeGlxCA5NdQEhtmuN+i4OJuwHZe61EQ2lH4WhYev6MCn6bDLPcj
	 QtQOjFLnTdriAIKVjkItHWVG3oRQ+agDIuBK8iTWmj2Zl62pgbb4WwO3h2dkSQgZDT
	 MaBUc9gLApdfViLSNmiACEikuiWLS++sSU0hbAlnihKALuJscErIfPPuOGqyLyAcw7
	 R5cXi/iOPUh1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D9BC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173710355361.17779.9698460518129541732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d70cf07538c8bb71907b397f43719ee530d150d7c67134fe613e1490ec626160
Date: Fri, 17 Jan 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737103553
