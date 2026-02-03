Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9CA7313526
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770114233; cv=none; b=bStgkErG8eF7z1UfwEp5gDYHEWUBCysBnDWIwopl4JxuiascrXNxKpqkoTSvGHg8d+HJ9cXt5wqBVdf7zjPvrEelyHwEwOOdLNuHks0qtDN/MoYrjfL7oD6P+DBZqBiPu+hmOBe4DGK0+/ITHg7O2EkrETvXRYn1oItIm4PsQCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770114233; c=relaxed/simple;
	bh=N+mURC4O6JKCuVHjsIigGxOXe8bVHpnECFIQYYzfGeM=;
	h=To:Subject:From:Message-Id:Date; b=oZbftSwtfpwZQ05U5AQGY6hsQqWEVCl5FWEbnSGU7T+jqtS2l9OSqhZVy5ODvcilBuIoPqlEjyYt2Sg78IIQxI1gEgQ8fRRO4IZ3VjNtukqfuumCLeSLWcftpegDbMtcXyo55vNqD912d2krgUWEVZl7PYLyIgGwZYgNJPns7c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byEYUYyw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byEYUYyw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC8ECC19422
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770114233;
	bh=N+mURC4O6JKCuVHjsIigGxOXe8bVHpnECFIQYYzfGeM=;
	h=To:Subject:From:Date:From;
	b=byEYUYywu3jSQY6ytxhVdtPViw8ZHCuPywcbvqAvTdSBLlNz8i7JFPWkDu32bUSVF
	 IzTI0Luk6tZvxnyqKTrRPUgx4QuSm94ZUe6DRj0lOwrJxlBsTv3y1zd2ocAQ2jg+Ga
	 A/cZP0mUmztK1J5Rzr7jtM1BCVL98OsDherGAcNwxizMP5bCXsRU39BxVODL/FG32B
	 XWYrykb7T1LyICBZq0olzjkxbWRvh6SyD5e6VSxD4vuaagUPEofNGA4QVeKLUAkBHx
	 PGvuRLASaY7s5yjB8858jKPdww87qFI0N0JGX86sGlxqrYwdNEt7chb4PEKWOzTNWs
	 iIwiIRxC4iGRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C4AE6E7E6
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177011423363.3136.5468554814983364517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bf3a0ea1c95e548c8ffe0a1d32b8bd28598972e088f532f6f6438cc338cd915
Date: Tue, 03 Feb 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770114233
