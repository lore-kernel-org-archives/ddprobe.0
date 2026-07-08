Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B9D374A06
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 03:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783481914; cv=none; b=W1Uza+G8O/1eoUxoFfggWoh78IRbKIH2vGyBm3DHOPHEBTI2090amT7IqIlRCatFujmB2aGmJHCGa1fm8tXxjn5rjdTJPtJ2j0REGd1Z+/VyvYSKSOEFD+aWkwMUZFunitlehljCXVUbET5XiIzTR5btQdYJrAmXAy5I9pNASU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783481914; c=relaxed/simple;
	bh=NEZcPHByvX6E+cdLXLgl0jEHHgdsBawIhBLvQt/miQ8=;
	h=To:Subject:From:Message-Id:Date; b=ooE0D7FqWvpw6UlEia2WnHph5hfFNA5s4QTttxeqUQFrc2sqyjgkt6QApOhP3oMiys6FYZ5KGz2i1ZUPhhvYaOBCpVa+ZGkv7mURMhpFcahxYvhgdPDwzHTDRVcwoSMD9uuQnF6dpx7Rdst1/p5DDsGjNEO3Ej4SXPZA0Raxqgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SfqTew+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfqTew+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C999FC2BCC9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783481913;
	bh=NEZcPHByvX6E+cdLXLgl0jEHHgdsBawIhBLvQt/miQ8=;
	h=To:Subject:From:Date:From;
	b=SfqTew+6zEPiYgJgNNJf39Dmy3zkse3b5a68OyjWnyWuyln9ZFU8yO1fMDSRsI1sI
	 7YE+vDgfL7kdj706DaEAo/4mHeQ2phBZqrXIViNKSBBnCWOrBFVyMw0zxzzj8riXNk
	 /JqU6VzvYDF5yBbo9McVH4tptALs7kOjcfqhr+FOoN6RI07dghh9bx2iFp6Gtu8k34
	 YbtKByiH5Rl8COP0AJHE+ZJjNaTG6IkujL9A3k21mL9A6kDZGICrBZWx/Oun2ZUfRV
	 8BBlOA+pZ1WF+r1PG6ET8qSxyi/yjLoH1g2eO+V98Q0XtFSjzCmrMUZ55jFVsKBdgU
	 Fd1fwJ+mJeuzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93D4C44501
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178348191368.23087.6702964102491214067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bee39ffedb8b733dfe0f6b2cde311c36f9ee310aeade24f5df453d2193aa53c
Date: Wed, 08 Jul 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783481913
