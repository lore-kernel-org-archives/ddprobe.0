Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220C93D984
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755232795; cv=none; b=es6utkfYFl1BGjvOD+q1Xwmm3uKtMOfyGu74BqTXtGAZJzMNtm+F3IBHuZbODBEfQtGO2p5kvnsAF0RiUQFfkAIekLA1GYbrJyAxVP5M1XwWVA1Yte/QtsWWBFPQJYvS+jLCfhdpYm9ar6qGYr/dYp0Zro84P3KVMD6scmVOecM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755232795; c=relaxed/simple;
	bh=dRyCLceELFPvSggwC9e5SVCs6NNpjBmlrGDEFN0alYc=;
	h=To:Subject:From:Message-Id:Date; b=nljOytMk2i/VjpWhOq819gwqkmfQdb7Z0IC6seWn/YRubQ++oHVMdac4rwmwY7SfyxcX+011OTaF1VodCSnMemOfpgU/BEli4LzWNrrNUWK2wTLo9WyJdrqYDddW4BvjjPaztYXwT/5b4oXVXDhx6ZVS6qmwfFTUxw9URADi4As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iDxwvjyl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iDxwvjyl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05BDC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755232793;
	bh=dRyCLceELFPvSggwC9e5SVCs6NNpjBmlrGDEFN0alYc=;
	h=To:Subject:From:Date:From;
	b=iDxwvjyln51VKx9sGqDS+WkrW8o+0M5Kpe6rsXrgaK1J7vNGK8MhnkaPQJ73sIHBK
	 oPuzVpivuyGuZGJS5YgnpyXG2IDDIllHqUYi0gd1R1K0blwiOxU7oSxENTzqF73Zh/
	 XEKxQM8ud5rGYFxc9g3wNZ1Y9+4GeUgdkpzAttx4d0Tt2mvMJWxnF/ABqaK1wfT7bB
	 3pBMnd2x/TRtdQnE7hWRxhP05OfmI4SABxbrd421LXvcx4rZcW3SGOwowwr4VkJlJo
	 OHKAIwwohHUaKmcMSj0ElxtUIQruPhneRLuRmKBRQp91spTDhYUTD0gBLJgP2ZloAI
	 E5NeDda9DrVeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F66BCA0EE0
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175523279357.15008.10036506954242986110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e1c83abf5d4c71043a78abef475eb66476f4b1f7178618e00b0c495c92774a4
Date: Fri, 15 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755232793
