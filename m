Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A132594BE
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753197594; cv=none; b=UGTyBpD+YDWu5jpkXllDsJEPYv7J+MrJT/FChbb23R56e7HsrckquxUAvQpF6do/kglGcJMkLLY2IjXyHiMG3animr+r/mk1FZdfGRIw3D7oe5dtes3Ht25G+4GnUrf7jGe678JAuF4wGG5gjKx95rY6qckLT57CMnkbhEBJFI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753197594; c=relaxed/simple;
	bh=rQH4sRgeiOvd+ceX1wMt2euEodOvoPYBjrWdgKXXXdA=;
	h=To:Subject:From:Message-Id:Date; b=IrZgWIg/NNshVaNaZo/f58xwPtWVBm24HD/KIDlUEaMUOjEzLIvI4SyurMc04Vmngoo8OmXaZWDtBVcEpo+9oiDvQQNaBzGN2IBOPHld8XJ9egXXprcDKtugc0i7poePG3haQYk+bHb2OG/yI0GuK0aguQ8mRzroLMquLw5ywwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbZsKyat; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbZsKyat"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BEAC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753197593;
	bh=rQH4sRgeiOvd+ceX1wMt2euEodOvoPYBjrWdgKXXXdA=;
	h=To:Subject:From:Date:From;
	b=EbZsKyatuMKbuA7DrEdWlVkwK6Z6EiAWQOWHtPs6EmlHhly1H8MOs6fQ7LbXS6uL0
	 inY4ScacCXbRP9+H+Y5IDh7/xGTi1rzt3YUZ/imO/BDtNmMwSEmG0rDtHOkJCXcsQT
	 uhmSTDvMkIaRl3X/I9mSiIWG7WZZ23IrxNKjdJw7E8z2CF5vvV0D3PEJZYgVs8wC47
	 qBN+TTKp+xJc4RbQ/zRaTrYA+KtGqKRrnUpbUBbkpuB1j+n1W1wr2xvWZRsPHQqJOt
	 jMTsU95OhM+5gD+Zc+nFve73QiYIVQwycu4MmBsdRAvsaT8u95V91xqZ9By9Owz6F0
	 /90Z67MZhX63A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91528C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175319759358.22133.17307232219684459927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 330ad49c7ec10fab7954c30baf5d93b474f2952c19e5d85e23bf365ba2b13e75
Date: Tue, 22 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753197593
