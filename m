Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202122D9798
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771389894; cv=none; b=XRkILw92uty0h/RdtISUnY3u00+GwTqayGT5MyLbQ8Gb+WdPPXj28Q89HIkg9gYmjU55TEokeDToP94iQkihyNhkZvGVZ339GVethRlYdnZA0BaGJyTCB1PHxB1Bqiu+bOfQYmCXUizDJZbNrJ6LKG7WP09Gj52cEYBSp7cjPOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771389894; c=relaxed/simple;
	bh=BGi1VDjpVyCPT4VU4/Gkyqjk8M7ZtIKNl+RP4ky21OI=;
	h=To:Subject:From:Message-Id:Date; b=RUrsiG6vacXZDPplXP9eOk/JHMTbNRB6fg2617no+B/gHX5LYz6YVihLCJc0WchntCZgc+BUtrijDWoGX4rRon2tpOd8haoMnd9oPAjYk2d1qPTUD8t8v3jooD0wSepgIUZ+dbZ4D9A0uquFJiaC1+fOnZ+n6SO/TDIMPmJbsgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLjp58Ku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLjp58Ku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0CFC19422
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771389893;
	bh=BGi1VDjpVyCPT4VU4/Gkyqjk8M7ZtIKNl+RP4ky21OI=;
	h=To:Subject:From:Date:From;
	b=fLjp58KuTj2wj2KV3UJBcOQ+oduUBxQQFLPmLxjeltoXxdI2AwB5cg8guLu7Va0LS
	 eDffguEs56IYQ2/ZRZ7oXwBEDLDH723nVNcbFmx1u9vsLKSRS4d4mqIdruXoFGjpjz
	 L35KPsp/HJslfw4bSgmFe+0liENaiIWDGzLYMC3EyDk63MKcT9V8afsiKFGNuqKyB1
	 viehb/fnanlK+x4tJ0gML88qNrE6madI+miDcJtGOEnyvtw7/RAI2AFT7PHYyXkEXC
	 YlK62flbqKEXjdnoEfUq+FCW0+fucrRNNcGPqXcZCvvXSc9zAwo6MZlqSx1h+nxuP3
	 BW9C79aJgFs0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968FEE9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177138989359.9646.9869561629568562991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9858dc8ca46f4e26f6d7cbd0ffca34bbb364a9a6e706e1278a4cd6992ddbd9b
Date: Wed, 18 Feb 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771389893
