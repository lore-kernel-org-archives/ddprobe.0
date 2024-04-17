Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F2D1482F2
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 15:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713369563; cv=none; b=CvFhm0VoVe5jhT+cu0NfM/bnReYL+HbM3ANxvY0BAiS7MvTBAU/+ZtiCy/g+5uokpzE921DlakDmZVwCg2bSpi62ZKFbEwKPq6rpenCxCEowdk5CJppeHoGXxYmMjwKMVSrWAMDB6LRlxQ2VkZvHci0AFWE41nW6mcBYO4IAkEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713369563; c=relaxed/simple;
	bh=B7hzIKOcwFZZIK7xmBXLkW+lKEJcXXmxnEpuHuJKleI=;
	h=To:Subject:From:Message-Id:Date; b=gsvstLTd1VpjR6G6tYX/l+fmV80Xk9QiNdH3XoxjFE20oLsst/2BniEYXuI9hwbrSNwmvTG3WhaVgWIaJGUpcluMI8WJRdTNNMG6CsJDWjc6v/kxF1cOYO7nAKPVS/aV3yRgm1B3wRf9tyjnxCfPCLuXsgtGUqbjJXqLcfPkoNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SfeI3gj0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfeI3gj0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7120C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 15:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713369562;
	bh=B7hzIKOcwFZZIK7xmBXLkW+lKEJcXXmxnEpuHuJKleI=;
	h=To:Subject:From:Date:From;
	b=SfeI3gj0fTC549yszBBVvvFUKY4Jx370IMk40nOluGcegyrsAA16/Ng072JiKzUGp
	 mf1JpXFZe+v5KWJAL3vEnOei5RYX+THx5cCSXwmaBEF2nRQ68Aot412aeMZLG6nC+T
	 moS4GgJ4C7BFh3dQaBGRmzuw+r1WdwVSnyJhzAXcZzVScF9eiapPpIU4v0om9fgRB1
	 aE7K6KHfiYno8NSgrSITTqRmcL+VAcnsoBmksYOA2tuzJzGTLxyEUXr3CPR8DDUhIS
	 lI4kJRiO4wAQrhfGq05eFw6puqcpP66hKu/0OcyNELzVHegx1Ctnkf7kVVzdTkMToF
	 Sw+Z0t7DvP2UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4E4BC4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 15:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171336956285.23710.1611691916996565083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 082fec32346c5895c95b0b11d374180daa13f128bca1d91faa052486ff9f1681
Date: Wed, 17 Apr 2024 15:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713369562
