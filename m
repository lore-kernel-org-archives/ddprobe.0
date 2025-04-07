Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3137DB665
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744066194; cv=none; b=YLPi0IJeUhjsDcCVSmu9TOFPvJwzmEngPwh+pGWoKwCA58UC8ot2EgtFz/aytM89BzsDYWgIrINoPMrnZzpuCW4WCZfw7y6crx4fpC0G8ymISU1Zpo+Z1ePvElW9hSqdzvi0Pxpv3EB2zkWPxxlXFdU4LeRlTJ3EPNwtabLvgLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744066194; c=relaxed/simple;
	bh=IJA3bivXT+xGGpir3MXppavAa/AW+Nh+Q2EPimCOO68=;
	h=To:Subject:From:Message-Id:Date; b=ez+x8ZqK8L2AwgVG9bRdg34qIKr91XqxGaJjfqvbyvr3SQYHYc4mYF3QRud/POuw4C+EBkZeDaSaYofQ/n367YHgm4p2zjaYEZSkPNXc5QmtK+/jI65JNSqk3LxF48S3BYhtPnXBNSuyRwucGS2HlF6nx8JL59+6VqOGPTENuIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCy1MYkk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCy1MYkk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A785BC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744066193;
	bh=IJA3bivXT+xGGpir3MXppavAa/AW+Nh+Q2EPimCOO68=;
	h=To:Subject:From:Date:From;
	b=WCy1MYkkSdtg4FrU9EdOWZT+g2+AbQR6TY5A2gU5BFbjDC67rsSA7zlR3UTPjr+BX
	 k9O9o2eAAnpfVMt7kAvriBFP217iEw05ImBk5FZQWHcn6lQUtFJgzAGsbGNxwrG4Fj
	 XjhShJzKaEQ7SUaVevE8tqnWi/UgjqWBlC47MtJD5aA1NIZq1GDxGO+dLFBNV+gpci
	 P/GrZ05NDWDqgK+agJhYbtumhIXU7Q8AReFYMKsN2Gh4pEv/+qipT7R9YCD7Ltfvni
	 1PCox2N8Xbh1SBHXzFG6fAV4TJCQaOkcnOwpi8sWfTlhqw1AKg6G2SIZSm97PL5Yf+
	 s/sRCDyCMpZCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96181C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174406619360.19498.2803582791230047975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab52232de836687c485a6cb290ad7f46c478af57a793653d9b3e0d5a15ad607c
Date: Mon, 07 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744066193
