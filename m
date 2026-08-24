Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECEC194C96
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787601634; cv=none; b=oiRBMlsULsABpCTa9zeeMQMB+EHGGhRj/6onSuTIhtKpL/RhOixrqr6s3yM6fSg9kC/4+12hgDs3AO2kDjbO6BDcDu0tGad1cjWNQot+JCd+icRrkIvC9HGSH8WSpZPXqFEOFAD+nP/DkCjA+fea19bYrgB9Wmh/PSQFMvQLBsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787601634; c=relaxed/simple;
	bh=jFTpmNqpS/hZH1BHEV2PNvxrBlB3ujaLRkkqOBoIBJw=;
	h=To:Subject:From:Message-Id:Date; b=EDE2lJ5LnmykraN6LJL/9thXhlS7z4H1veZNaLeuaCQ2AtobNCsP4HQ4cExCwnMjV8MrB95pO3ojycjYoP8guLudSNON82Ca2Q7dcDBTyDqmalbSMsB04fnwKAKLU/7pKLskQ2c/bBjaUq8blapP3R09PkvwQ13RrTCgMx95erI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SW+6xo9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SW+6xo9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D52C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787601633;
	bh=jFTpmNqpS/hZH1BHEV2PNvxrBlB3ujaLRkkqOBoIBJw=;
	h=To:Subject:From:Date:From;
	b=SW+6xo9LErjRqAGidI5EegpZv9TDe4kUxFsdB250Jt5ld28HJSN2vHlu7/hl+yVba
	 bUF0yn9KgrLpB1DBqJbbCCj+zAoXE+I+BQH2QRBcgshJAaJ5bjtpnqGN2VKyZuBi0g
	 20SpBVTfloFIucxbulysDxgluD5Bwv6ouAhF2CQPQsMZ8JYoD2gdaNmqZSZVND1kTz
	 8itUXo6cZuEpTWIBs51xTqGZZC8fhwW50DVnuuDcmOnUqaoPvcxmU3VV2hlC5q0O5e
	 iLy80In+ccI3NkBBdeG5X6kgkuto6EG7Oeurl+2WTOY2nqjbr6YtMVksSLeNvN21Lj
	 r4qu/0ud6UekA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF2FC5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178760163370.29705.17020844645785205567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e0bf8d7b4aa7d15ede2e657fba213145cb744db8363c58da87fe6fa52f2a813
Date: Mon, 24 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787601633
