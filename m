Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160342E7199
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771452294; cv=none; b=qp3slvVupPPXlq10L1jvyqtSzDjz8ZlwU6LKqKl/4if/JiN6Th/JctVwsi213v5snlRu66TW3hs1XhaCjW6anjQV9ksKSXtYToGpsXT8vEN66y1grkGe5DShNPwEJE6DYraViOpt2oCYr+2pqFe1KvXZIoj0EHdYdvXLFODX5+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771452294; c=relaxed/simple;
	bh=An1CccJGw8v+jgjSeXoO21Sp+muEOnV6V48oVNmgX4M=;
	h=To:Subject:From:Message-Id:Date; b=GRMOAsTvweLFLcR/ZVWFJ8ZgK8FZvC+UyVX6jbp7p7cCGRyonTIPVmsPPJnQ14Dq5ZU96stC8YuDO1UBfU1DjpBQM1cl5U1zZ+3Ci0oHZcsJKEgR7Ia/rcD1ucAAm/6i4faXSturYgQ87T0s5tXUlf4Qu+1z898ps0evT/Q8/88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1Th0dhq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1Th0dhq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC9CC116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771452293;
	bh=An1CccJGw8v+jgjSeXoO21Sp+muEOnV6V48oVNmgX4M=;
	h=To:Subject:From:Date:From;
	b=d1Th0dhqx1HXxkznwYvjIkXSidMFfnf2f+ddfQcxXQoKwNOgslGFRaa76tx/LMYcC
	 MiYdURwuh98V18ILRHa8c9+E7fogtcqghlW7I8zhlEBFRpsSYBN/VqbKZWXijZXwEi
	 bq2PYHRb4pmOsl9VHC/gtXDSQqv3q0iyx2hpjNrDAagL4t5pEWA03J+b7GFWh9iJbE
	 xtBLFA/nynikwUoUJf6NQ2QxfsqhpanS+qz1NpEZf+qsKfm2PMubk26hKD2VINHL3G
	 Bmt/NuQ2fIuYPYiNZE60Fu1FQyzYWSHR6K/UYhRy7rNsjscr9uUm/IJHuq8wQZKYWj
	 te2DSsQmw0lNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED42E9A04D
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177145229363.7002.7704950797460517040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a267ecb0dcad2ae1b58b25199c52bb59a9f69526035a643a864a4170bc51da05
Date: Wed, 18 Feb 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771452293
