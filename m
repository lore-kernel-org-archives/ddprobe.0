Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F4931B130
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789608034; cv=none; b=opJnuDd4WefNktu2Kqcz6eRRyywPpjsLVhVs6po1L7ZCxkU4yjWJZJfXufxS3KwwPB5tQ9NLCatsXFk8SxPIpydqxi7wU4Y0uni2v6WtkOjYtkybftggYrBQtdRWG/eBZBXqMlKKkqj2a5sgRDVlhrn0CWLMrgyR2RusfwMfEn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789608034; c=relaxed/simple;
	bh=9tk2xBq7Mt/9Yq4TWjztuyyIQheWeYWcfuus2imXuoo=;
	h=To:Subject:From:Message-Id:Date; b=KjHEa3YHBZNj9oyqiFZBShqSLn+MU0rS3jaQKj9oHTXLPLZS/dx3qqv7MYXyicKnnqIZkTXKIRl5bLVMWxs7fW62vSL4zKnTvbN8Jx5j+FLi4TVadHmZLmgZt1af8a9u92IwY0HwR8bxIl9uZpQJHlJz4WSRZCY/Y4Mf8PqBLRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kuQuXY+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kuQuXY+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5755C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789608033;
	bh=9tk2xBq7Mt/9Yq4TWjztuyyIQheWeYWcfuus2imXuoo=;
	h=To:Subject:From:Date:From;
	b=kuQuXY+P1IXH+9PA6uobhf2lW5R2EPDZzdeIGwCIIVGffS2gEvQ/3u8QiM8Ng+eK6
	 LdFI5jVj5CyvsNK+cODarX/bSHTj0vrb+6AncfvrEqfvGs1yzGeZBVJFiYtXsJPUqT
	 5BdIs8ytKRAgHptPdbypgGrPTb484yvR47xWhwMkrPHXuPC7JB4inz6kpv/5lwKPVh
	 OiVYz8l87nBG2E60lFa9IRa7ky04k5wZB9hYJROWBhhVYNFlXhx79a0BOmPh/UhsgB
	 z4XqXMffLlbzlF5MhVThMpAcuSR88O4k01MaJNziRijVMV7pWTw/EWrORlJOk7vjG0
	 YzYXoCv1OMaKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAAAC982CC
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178960803369.23967.11953506435725173158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ee6807744582c81b64341db4b1f2df09b8ef61eb57e8ae3fe938fd0e4be1a98
Date: Thu, 17 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789608033
