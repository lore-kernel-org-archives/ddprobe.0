Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499CD37189F
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773388494; cv=none; b=I3MrC6Qp1P2ULCa5ErCj1FIqrT9LuuJWzvKbfA0ykxCcN0NtM0Ofa+BFIRiEMS2wina+MvcUsYzEbhzgdgwzl2nWTDo9jgKkkRgttuN2Fu/atCJOJ7Ubq80Ok1+JIzjDf1XaVo3KSGaxiI+jJBq6+NI2LM78Mp4U7y+7Mbw46aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773388494; c=relaxed/simple;
	bh=gMdN1deUheqr+eKVNJ0Q687LetUfsq/mdrKHJbqY2fE=;
	h=To:Subject:From:Message-Id:Date; b=AS/kPaSuLMb8e/XuyiON7Wq7hHwHFxkoziniEjOHbGLabqpDf+ZsT+14nOyRJYMGh/bQmhcCwuotgxkpDJruj5vgORIDBMjkmMGCvEgadUGoBqTB24ZOL5iSQS4JBctnJ+Ra6tnuEs1hN2ZWECYvTfN02pQzB6QJv36C4YlmNj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHXyqLr/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHXyqLr/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC2FC2BC86
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773388493;
	bh=gMdN1deUheqr+eKVNJ0Q687LetUfsq/mdrKHJbqY2fE=;
	h=To:Subject:From:Date:From;
	b=uHXyqLr/vo2OcuCIFxBwMhLHq6FGhhajr+4cbS7dtifzJnPhNuKoschv5cm03xvk0
	 pu0Cws7GiqYK3V17QdR56qLwLqwoQXx4npvYIxajRgsUt2xJtqlD+ovZ2QYctNyW9/
	 xK3U4lDfxiJIVBXEkLsndH5CWxzL8B4IXaVBE6UEbwNfU4+1yUK72subu2tkq7EqRq
	 WEzZXrIAKvXJj+rrDth/VXpM1k+ntYzyTLCWtKaCyK4OoWrGOb11DbLe7jAJp+8UUM
	 76GGxxfO3QTF1Wjgg9x4UUbjkCTS874ENpLmQ04nwDxRXxUK5bAjO9WcUXoGNxTJ73
	 b1C9H5uOLi/RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97318106FD9A
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177338849361.19636.17551993659767697093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96eba2a178de820df7b7257c0a191baf4494b498e480937b32431553ebfa3b53
Date: Fri, 13 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773388493
