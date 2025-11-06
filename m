Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3380216D9C2
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762402794; cv=none; b=Expp7YNPXRc56z+1J0GjdDgMnumEY9Z0mcgYmIEMmz5DH7O32cGQ3eeKrPw48sXyErlQ0QexAW+xf2DbWFEMj1pVLFJ7PLS/pmi7dudeYa8B3Vg8dgEpcEOsAQDv7hbeOXy2OYCbxdS0XvIPDZ6yD6FRGTs0Kc75qGMz6+nO7WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762402794; c=relaxed/simple;
	bh=Z7/Lzku9WIli9Lu0pxbG2U0JZ5030m3Bu4kSDK7oWms=;
	h=To:Subject:From:Message-Id:Date; b=J0Kl9WrkJcUJ2a+RrN3ByWIdvOX2s5HALE1RAMEzd0PJ8OE6f9h0QAd+iia5ieJUoyFYB1NualbmhUYeJhT7fBAwvV1zKdgM3UHKV+nu/7/pdtDv4R6t9PFywHHFzIV3Fxu4zyxzTPECdLIPDBqVR/sFI6/sPV2KLo4XNskBTvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOkWg2v9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOkWg2v9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE2BC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762402793;
	bh=Z7/Lzku9WIli9Lu0pxbG2U0JZ5030m3Bu4kSDK7oWms=;
	h=To:Subject:From:Date:From;
	b=gOkWg2v91A0N2Og31i7oICspGTVht6swJTiFvRBs1a05+/P9+rhR9+Vd1mXj3Cxwd
	 DnG10e/JGpQwZO4UdCTCLLKvB2wi5Eelr3gIZzHoGX0+Io0h9++J5wrt3ee7J35fMV
	 6N4sApYSLnZsdnQ8oGzgZSXUGyjF6CZgG4aRNsSiQS02yjM7jO3Hd66wfrft1cWscG
	 xBr1PvQ88MWPruHg9yDbruVoYcjtiPQdGpCziyb1ZWOQxGBwwpCc7tGTBB9ygguH+J
	 rU2x4J8qfzty+aNJjnQKMcpMt3FR3xO6BDQ3G+1exmldCVxhcllrqxIY8N+kL8cqUi
	 6czUehB1UCRfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F13CCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176240279367.559.9945130956997975500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd14ed30776944b3c9bd54473b3bb820cd02b7e900335dddb2fef44e3be6d938
Date: Thu, 06 Nov 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762402793
