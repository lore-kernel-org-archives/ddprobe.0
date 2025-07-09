Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1CEE55B
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752103795; cv=none; b=MFNtEpauf5TVna10rAMI3+FZ97mCIFs7x0/JQx0YH6RAwD8dC3sZNs5o+xvj788YYgcJ3YykN/jegpz4rDLmYtI/0ACiouCfQSjf/aitcAY5cAJB4tqNEKC2KLpc+DWrZHwwKBulsWttAI1zCdEymLGim0kxIvcAo8X+14OHW3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752103795; c=relaxed/simple;
	bh=Y1f/fqKqljpenazHrB+PLpt/lPFtPX8RFixsbsSXlwg=;
	h=To:Subject:From:Message-Id:Date; b=e2qU+erKqs8G7PYpMY3LsX+ShbppqxUseyjEfyVuqO2Po+7O+hs9G9asNVYUQ4Zt191b74JzqB+YBTbZGOGtel1ZG8/CbOkq/D9vwtyu0caTTFtp7h/T00xOzL9Q8JI/HFwpXsKGLZ+g0zCk7A4mg5EWOu7XA0si62q7/MA2O7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEwMxJ2a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEwMxJ2a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E046C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752103793;
	bh=Y1f/fqKqljpenazHrB+PLpt/lPFtPX8RFixsbsSXlwg=;
	h=To:Subject:From:Date:From;
	b=kEwMxJ2aMhdAscdpo7eW8+ZU8/xgVSWJeDVWVpcniBUhFFhRWoAhR+JvakbCYw2wD
	 PNn4v5Pt1ub3RTRS8ILT2a2WhcMDg/QT5FrdEjnDFNq4Yur4swFkeBfU55BPFhjAVF
	 VNSh3u8C8ns4EauJa7tZaqQZj+tacMHxbGdknff+2b8QgfrFc/2Cs5HgvyysrvW093
	 f/xqDwkifdbaI8L7PweER0M5XD1HwMkO6TABoWjsi4PAxpo05OAjHx4qbdNUSD/yBD
	 ilM6MAQC6oOuon+RQIbocD/BuGgg2bVANSK0g3GW69fIHvnsAINsi9I/RSFot+MChp
	 zMlPnwR+Xsd8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F46EC83F17
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175210379357.32611.13201389690914374816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1705563fc2f3f9cffc7a4339a2cf71b67911b4e3cf19b365218aba3f504e1231
Date: Wed, 09 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752103793
