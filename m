Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BA8156C62
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745089795; cv=none; b=E1FnGei8AxY4AJQ21WdMWrERfNgOrJV8lhqCfC3itJEpPr8Lxq106bWvDxDMEqjtdYP/xZ9hwEHeHuKKEmFNMTZlWx6LI2R8mx0g4d+u39fgEUKZ+wuR/kjBu67Bjq7wA0fZUdsgu1wtCFMcjPmcE2voFZISed/lSx2Dh4YKisY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745089795; c=relaxed/simple;
	bh=W0jRywNs618j03WIKXOBO2l55eImZwG3tVUxpxaj5qo=;
	h=To:Subject:From:Message-Id:Date; b=u6mf6cyk+hBmA+BjC50AFksMxnB2S5QVZSIbSJEURnrU7Q6DvvZ6FGyDZeAlTQvnFskvp2GIj28tkznFyFldNV4LLD5epKJ6dVzWc38kaVqwWM381cVTwxJR73YYnVIdfWcF2ncz3TIY1LfehQnRk0BgxjbDgq5s3AAJRr7Ee98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0LxkCix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0LxkCix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D3EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745089793;
	bh=W0jRywNs618j03WIKXOBO2l55eImZwG3tVUxpxaj5qo=;
	h=To:Subject:From:Date:From;
	b=u0LxkCix898PYZ/fcFWtsBYuy/3M8euBd617knjqEKfJKRDAPSus4+QCkrARV8jDv
	 Dy8tjGPUyjMYYilxhQkOMAJdxQagtWXh5p+QjrZGb4Cx35Fi8xoYj83xIUGQBU7Icb
	 Zd+44WNQjenGgv91VjDMjMNnsqAoLWMcjx7dsd13klTgieOQEW4LwCKGNB0srcxSsM
	 9m09D6DrjQGfcnGY7GlRs+BRwdZNxsQAoiM2DUSc/joBGfv3JPwmn31cdsJLw5PaXE
	 Z7X3obm6RdHK1NVP5m5ZxymaO+YrsaOly9qvKDUhzJbz928EY8SbULyl17SEIzn4rb
	 cPk09LA9jJqZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2A7C369CA
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174508979358.7104.2866109607302285756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3759f2da880efb2b78b1738f7dcf5ac0265dcbdbf7412b8af746170425027770
Date: Sat, 19 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745089793
