Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417F7D51C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724008554; cv=none; b=aXX20vUjtCQpX/k/9UR/lsz0kt/Nc4OTvURygYAOfCuqC9ksU21p7omFbLhAtbkfPLtzNboFEp6pQIfgF6Jh+XSUvGzadZmX7SPdh4OTVBdXLGAukNg3dWD8RmJdh4aaty8Bk+TTqV1buqC8s+IgERJzZ6Co4vZCpFi04/1KSnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724008554; c=relaxed/simple;
	bh=Gr7AP7dJ56c5b9kFsKDF4hSIDnBIOVNsqEdBAKRrAnA=;
	h=To:Subject:From:Message-Id:Date; b=iR85RIiUjrpL+eTQUPZ7+2aXi5P2mI9Esgjs3duw2UZCTOzAAhj7SZ+D8DwFxyETMbgESUP+WUvVSARUkbd8aMICdS7fHSX95vdaZrEHmvHH2I3YRnEWUCNjYnbavQADQHeiwXYKX88gyjZoUWj07duJb5BqYRmQXBlbzq+MVf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBpR4qBy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBpR4qBy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B51BEC32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724008553;
	bh=Gr7AP7dJ56c5b9kFsKDF4hSIDnBIOVNsqEdBAKRrAnA=;
	h=To:Subject:From:Date:From;
	b=EBpR4qBy6S2C/kpY66XCMrdE3L9rJH0KJVutYI315OMPzScYG5IgW2BrxhslZhwtc
	 apNzSFK/JLCBhmo3Xt7/r3w7Pp1pNb0AdewL3DXAWMcP15n6dfjw1Dt78vc7j/rb6T
	 1rzOAswaVN74XdFUcv6J3i9au2RgNJ6ggOnxCfZp7UOtPjoBVgEbykuavC55lG6tvv
	 kYzdiwxngFMk6lFnZjdwuXdsoTgkxUgFenBglSrrgC8SiGx6suViO7xaqDgXt1K3zM
	 VRHekNH0GkaotQ71wSUZ8yYKh8KycG485vB4AZ4pqzvhCMaEbM1iTJalLVQu1Cw32T
	 KVsfux5vwldPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE40C52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172400855359.23179.18287498048887392084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 548cbbbb9a648bd7e00e7b70681113f31ce7320776d3bc7af2aefee5ad530519
Date: Sun, 18 Aug 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724008553
