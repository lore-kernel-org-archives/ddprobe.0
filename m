Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091C71E1C02
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773486294; cv=none; b=Cl0iZCERaVYCdrMU+pNBPw9fIvLwtYSR+j1V/SzZE462WqsFMc6t9X6Vi2T0Y0OHanLoW0SzQ94c3UJavfw1y9LmWkf7oYd0C9wTSC9AtmYDgFBo/2cPNC2RbT9PQLzqbu+1Q7opmlN+sMFdV7f1Rl85pdeG+UXqWcUxAFkpf7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773486294; c=relaxed/simple;
	bh=6GX4p8G00YWpXCet9qEB0V9eZoavXIU+js7NKQpJuyM=;
	h=To:Subject:From:Message-Id:Date; b=BVood7/rjAypWIRWu5jn/V/i/h92YNb4bsExOFR9NIcq6k2bXzWwC8BV/uvIpb2MPnls3EQamb7Old7bBHaGXzwKFtXpUMh9Vb73R20l78c12JIhjX9sCivSBDKTvYQs4mWD64noCZlhOX8fSokoSWqWDI1R7tMrtA1kKJsNJP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cp2eudma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cp2eudma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE51DC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773486293;
	bh=6GX4p8G00YWpXCet9qEB0V9eZoavXIU+js7NKQpJuyM=;
	h=To:Subject:From:Date:From;
	b=Cp2eudmaDaw+5lleDnmppZXiU9iKecM2ZGD1nSqPBnjCJhv+Gh4kHCs9BIyL2MyD7
	 FO3nvvCJYtSxv7l1kO4IvljQq9miXQbux263ofxldLB/4R8ubFBZBszDFbn9cWOfeB
	 MHLcOUdn+XkFoJgVH49l4Z2bahxTpkwZD2zTHQojSvR8+D8YZwRm+Hj2eugZAJL92C
	 B4ebcSyMNzTS8nALZFfJBkAjWZ/K4FdvohhIhE1iD9GbpFo46VQ2L7bFERED1/3z3N
	 3aDeg4qDi68qT2JGonBD0LRHBYWNqA+AeGzLjPyRGn+7tUQ1Lhzp0BZwwevJeqwUR3
	 HdACGOIhwyl9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9760C10706CE
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177348629359.23558.8453239587757023391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67b6f680b8e970beebf1ec9ffc7d8c712c2486233043fdf035300b40afc2f9c5
Date: Sat, 14 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773486293
