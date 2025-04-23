Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAA844C63
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745444395; cv=none; b=r5tlUkwMC4SF8tB7PiDeMs2crjh00PvG5+/nqKPvEZGi6m/noiiGCFBVr4gN71S02+KJeSd1+1tUHtyynq12gXLGH2FHXVxu4qOCYfeknDXpDqStptCWvWmQlkoekiMvWQR6Yrl+TXki6Sxg61cTzfGsoYDIA99n/bn6nlounjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745444395; c=relaxed/simple;
	bh=uFJUN+BIzBurNU9q6ZkqoKeJGjM8YJvORVCkNp+DzLU=;
	h=To:Subject:From:Message-Id:Date; b=gQNsi/dUKusAh4cMinZA3euUb1QcUkTuaqp50iS0GCY7kVyL/+iyLFlOwmsKqhbHjhrwHV/W0wue49R8TaZ7lj51GSXw72395b9R53wZatX+cgDcmw3VisZ8b1Q170SQQ8v53jco/LjULqQb9FU5TH+ZpR+rc9JZA0/wicFPiMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkUN3M1E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkUN3M1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC67C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745444393;
	bh=uFJUN+BIzBurNU9q6ZkqoKeJGjM8YJvORVCkNp+DzLU=;
	h=To:Subject:From:Date:From;
	b=GkUN3M1EQ8JSgXIOuHiujstGvV4DUjPWoAb+TN60P8iHP7b0mOC+cT5r7EnGKOMHH
	 z+ZZZr2JISk0yzVvqwQjUexCjRdsnWtoNPnWVdMi12xJk/bJnPiK3l3wUDMgDWZBxu
	 q+EQTz+BeiS03DfdcMy9a/hHH4VzGjtC+GP7KnDqDGV4s/RSBVTcgbQqBCl1YfTDwH
	 ogfzRb0/sM0g6da26ZZJcIR/JEalWOqyGEjSuiWTxD9gcJmcB2bB6Bm0UVdujdAWD9
	 ZjjgQ0WVqY90BpqJc9jnZAKfdzeVwqREyaaw/m+4rYmtgSX27Ge7rfptRkyChFUIdf
	 cg04IQ7Ls/71g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3C9C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174544439357.5575.14825109421720506680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a430545763b0d056757b587485bb8f7ef57be40af5241972061298f21f5aac
Date: Wed, 23 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745444393
