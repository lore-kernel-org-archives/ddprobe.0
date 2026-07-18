Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98AAD390228
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 16:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784390915; cv=none; b=du3SNksBbiKtQKO20NoM/fXcKtpZJOC18Fs8lllTHznSXT9+f94k3vmMJDeDTv6cE1uzyu+dEW0qpHZ0xG4m115K3QmeCtxssdrmaAHtHctYJXRaCv1DnyOR/rbtoV/hnS2P+IQifD/fJm1UhXU9zo/gr5gPILXm64e34yEBjp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784390915; c=relaxed/simple;
	bh=auNczqFEla1eFX4tSSdNEPn+do0JRO+Xes96MrkzSYk=;
	h=To:Subject:From:Message-Id:Date; b=R240ToAM9XZHfRR/3k4UfAUfUBRmI4MGbxk+3KlntTVnm40V684xkfENqXxz+EFZOTXaJacw8bjoUr4+j/FjQHufNjFX5f3rh3OYfoR4y3hePpeEI3cFpcLjHrQCSdz8xccxobMwK4CpzNTwDebxP/pAJBxZZn5z8rqIV0eC+x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W13VN1rz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W13VN1rz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B17C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784390913;
	bh=auNczqFEla1eFX4tSSdNEPn+do0JRO+Xes96MrkzSYk=;
	h=To:Subject:From:Date:From;
	b=W13VN1rzOUowotITr19FvCHD7RiqefUYtaNbT02OeUqYEXWoavAjKO0357PgfGtF9
	 FERsQMhyXLBIle+gof8tFH565HgruD3aI1bgc8ZVIbjDVGK6x5MkGneImAeEev4Vow
	 V9hqet3uxF2D5Q8hZCvBOn21Ieoq9rC7ZUSqYPyExqmVr9cgE1cykIZYUIpXkTr6N7
	 FmK7Fc/BgL1VOl91kcUKA7oN9u9n5z7R/hR2aHBBHBmkZ++1R0li8Oyny1FCUz3xZd
	 f4sEIR4Z9PGxJGSIw//5gMXWWOWFBOq0DHv9ncdhEqivNkzWgE7AO9zhvbOIP0PVkJ
	 X6nZhpiNoi3zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B253AC4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178439091370.10392.12247180566608988503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c85ef1b9d15f39e103561db9c8d02a837c26b1b75629586b078549bba48afb4
Date: Sat, 18 Jul 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784390913
