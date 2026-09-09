Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A294B448D19
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788940234; cv=none; b=GTybnxl6mzeG4jfS03HRDLYGp5u73TxDUiyMgzqTUW+ndr+Upssvdxput2vIeUkvmVGGivul1ZDX3dJcRlkzlXWvHf0eX2YvH2MJApLzjkmQ2blZ9+H9EjOiB/Jjg3EHX2/ED6KomKhmEEwTXGLZJsrtR0N5oSMisIIoDkny07g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788940234; c=relaxed/simple;
	bh=w+2ov6ui9/R9F4vy5jHrjR7l+rDh+aJOTzar0uVt35Y=;
	h=To:Subject:From:Message-Id:Date; b=qmWtPhVzSe/m6HHoosy68p6zlGzogkD699rBlStHLXbqkd3Sp8D26SCSApLhdURbGPnYpgbubzIpQmFthyvj7PG27aZw72MWqCeE4Yc3qMqZKdUAV2xksPj5gjz6Hlr6cinNgqSJOstrNlS68p6g6RAtVAT3iOqhzb4T2kXX9mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTDbA2gN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTDbA2gN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A06C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788940233;
	bh=w+2ov6ui9/R9F4vy5jHrjR7l+rDh+aJOTzar0uVt35Y=;
	h=To:Subject:From:Date:From;
	b=uTDbA2gNt2UliwwxDZF3Imk9ffUePdnDXhVb/ZC9CTucPeXSGOtZOBz6vkSHuKIPs
	 AE8qJeyV4V0eMFMv2m9jS7f2tBUxWTbIIm90LB/I19ncPx9qMm+gvaI7pPF67jbWSa
	 f6MHTHJzKFGYV5UpRJHfdinVGjJNxT+w17HDbhKQvXlB0+lQeegKwo98/ty0W69Lop
	 bN7DX2mQNWVSu8uAFMOORk7H4VQlqHfxb0FLQnzYq/hCNr31QWPr7KA1TrWQaU91Cj
	 yuhMCUPMhBlxQQ4yj89sk4OIHkLd7NXp5O3kGPhlrYmLy88m5eg8RZatCtahl6INk+
	 5dpxfRWs8TU8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCB7C79FAA
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178894023370.29704.16919239434607475398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2d57e8c4f601594a8e97d979fe9ee54c5e7682451f712c0cd8fb47bbbaaba2a
Date: Wed, 09 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788940233
