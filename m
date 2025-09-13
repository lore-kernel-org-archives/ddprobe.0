Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3D42566
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757733594; cv=none; b=f//HmnHH09uXUezpuY8rrBlkL8cP/g7aiQdBgY9uw767b/fMbh6c6gTgv14fZRcoOo32bxEaJgKqFOC2/CuUobDmVlzlP+fLeLavcy7mYVxpvAeBU+YzwcbEFPYE52Ucrn72RRY2ZIybkNtnu5X3nTHjIoGZsBZuXbOra2gKegQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757733594; c=relaxed/simple;
	bh=DWXDCAdFcAdggYbuo9dXi8ZCrimW7lxKdxltGOHeeOs=;
	h=To:Subject:From:Message-Id:Date; b=G+QDHlGGHLRVt3u7oVa5EDOEjpM3NEgWWKPh26mBiOX44MlRpTplV4G4dtfwsgu07VU/lLXFjRD8RodKi4LBe7D/I2P+iSYkgg+qsNmtfL9WxTR2dBt4ta7PE5D2xdsLLbq+M12PdOybvcKeeuKdPUg04WT52y5NNSpbtOpSGw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpSxsOWB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpSxsOWB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13F5C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757733593;
	bh=DWXDCAdFcAdggYbuo9dXi8ZCrimW7lxKdxltGOHeeOs=;
	h=To:Subject:From:Date:From;
	b=cpSxsOWBwAhIOi6PKyrunFxUgrnbv5qCT99XhmNj/RbnMfpxaRQ6yFhlTY3ym32n0
	 kUGoQLJCUi/HOJVXkW3pt6a5sUzHo76mkGkBpLkCLmaH/PE2pa4k5w4Nr6CDPsEg8V
	 fvwjofmuWWK8X35LxNNCiJ1Vc7EfPmMpWjdCbkT12hTwye8Tk8EyPohRNQ6gCxTYsw
	 0TXNFQpfdoeSry5y46OGfZbwlUo8Le6O+1cyOlUGJ7+rUdm7rFSQiIZg66BGOM8pl1
	 ccatgA7jj0qxNvGCtTpNPWnwIVjoWiNYunqh5kTSp/WzD/3+vCy+XURbISV4xm24+I
	 sgUdqmVwbnD1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9ECCAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175773359358.820.6107214444696303934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1fadf1a9acf9313c16553788678c20a688d115d43397f71a7f4df097f130a4e
Date: Sat, 13 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757733593
