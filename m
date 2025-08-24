Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA5613D521
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756072194; cv=none; b=tIlaQvuRl3+E5wyR8K3u5xo3Vs5VcPmC1Pf0r+/3ayZqLLchEDGCHS2gOwRRTpwF3aYqnPLAIGxNhu8PfjZsL26x9yuLXBesXmPZVAS22QwF0Y5DW1ZEwpFFhJvDgB8pgp3VdJ8P0PLTSkKP9/AlnVdkdR6IfZ+XUFKNV4alEXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756072194; c=relaxed/simple;
	bh=ojxrM7OiYnJzswr5WdVoC2nkO013XTMYcg7N7WtSA+U=;
	h=To:Subject:From:Message-Id:Date; b=fBnaERfhHHtMbMy3ozj+EAyf6PFpxToB84mMvTij+LKA1NVbKLRDWLFh2Jw0j7sgi5UQqkXGtf9TABYaNylhtROiihtLX98UdBrLZzw6gqA6dgiVbGMBkKKiQ6HgQe9sgJxBmF6As1A70UZ72/xF2SqFFxEh/Q91SlOIqjCQQlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OeOBHbHO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OeOBHbHO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B0EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756072193;
	bh=ojxrM7OiYnJzswr5WdVoC2nkO013XTMYcg7N7WtSA+U=;
	h=To:Subject:From:Date:From;
	b=OeOBHbHOOWDQsrhKVt0eOpYuA09xDfgaSDH2MEFu3IzgEYM2gNXhuRV0H1fALn9NY
	 nH/0uvxjc0oaE+HM2G/faPuSY6tg28CAFbIq4JffK9bJOFKFt2YO82q/n+Gilz0xmF
	 Cwe5ReNtPAfuZDk+NlzXiVJw+PL53oa6s7hsE8M1jc2aeDsC6SeGS+BBkbppZy3oD9
	 DACDdFvsy3jM+HehKMXONH6lzc6wDUY6PL+7uDcp8OB1QrPxqjqyfz21ZZZYgh97Ni
	 /YE7WU8Jb0DLr5NiN7k5XvUyJNKdk52p/0uExexdIsynCSHfuYe1NjocfUVApUq12K
	 OztnQVB8Ga+Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B8ACA0FE1
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175607219357.29227.12631953769672397512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97871e6c459419c827dca0ea21d0d82679b70a2eff3749829a5004a0f90ab160
Date: Sun, 24 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756072193
