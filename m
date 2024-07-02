Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5465E1DA302
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 22:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719959123; cv=none; b=fxeSp4JvHjnqmsz7N+HEAJ1f0dgQ6rQN+xL4qppwuSgSQg5vX9ZjH0HLG6ePK6QyaR3K1bJQLAUXneFtZBCG8aR9eSSJ3+4TssLNw7mfxrYkzHq/C6ivvtzRrZzFFecZy+wtOh1y6ouXVQO2nQJAh6wkKbrW1sFGdeGvdVVcWRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719959123; c=relaxed/simple;
	bh=3dmdNYJLvwhFuY1kqLxIRvMoQ2kX5ldJWfwlnluX0Mg=;
	h=To:Subject:From:Message-Id:Date; b=ThT4xvqbPskG808Wx24T7VTnk9GsqmiZEjaqsgnnPuCJk15MNOSGaN9y2ps/JKcn50iNPaSgktfpJL81yP8v9OvPwZOkb6eAejy6rZY2jWPEh+ck/TKeAPj2gGjAhxMGnUegzHY0mrWO1Ks4JMZfrJZO9uHHHAeXjCJ3BdeYfbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJAaGP+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJAaGP+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCCE0C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 22:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719959122;
	bh=3dmdNYJLvwhFuY1kqLxIRvMoQ2kX5ldJWfwlnluX0Mg=;
	h=To:Subject:From:Date:From;
	b=VJAaGP+xl5OJ+sB4mD9SlYbMO4Mbsem9pZMekIqwZVfM46Nf43fpYkdl9h5SkUJ8B
	 PCPzFJ4rrir8nuQorc3Z2n7uYbdcIa/4PoDs14zT167bpApJhUasf7KQO/A3A1pQom
	 KhCzBzubNNdgLhjrlWwX8Mu3dU4cFP8tW96c2OOd48AHhU0TsXTxTmRgxbN41vO1W2
	 2f/tlQv9CqqR4YxWFb09NYjw9L0wQGIdf+YVpcNAsPL17WbgAl+A6nyjeZk+2x+QO3
	 maDGuStiRdqZEvby9Us+7wcZWVCx8h1pD73lzoztFZWSRD06EzV5pn7cjMn6D3fZMz
	 lQHIn5JSA6JHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C81ECC30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 22:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171995912281.13142.18325701197281623543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b83f4db0ae3fd66ee60d7d94ec10c5886100f47e60769b67f2c64c0c02c91de
Date: Tue, 02 Jul 2024 22:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719959122
