Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CAE1EB195
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759504794; cv=none; b=RYzKqyW1aQaK/Jqm/rzzr8GELQ6pJJZLdRdh4URlfF1J3FPx5i5Rz+uzxkIAUD4cywMjdRE9AkcDXgmATa+Z2fP02nfykkO2hjLm1HO4LvgOVdPbLocc5HgTVW2tM8TtQPJqlk7VlUGM8u4TviudRb7coE5FjL+3J9tpp2R7YS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759504794; c=relaxed/simple;
	bh=JbOUnHs3qL0ycB1pfoGs7gQEe5w3kKjMinCsClnhb5s=;
	h=To:Subject:From:Message-Id:Date; b=cg/fYvjq3MWinodKnhE4tTJtfUk45C8/mYwQCFTxdzH4WQbBIZJlr5eJkKuyezwQorFv0MED4eTv34uBBXbpsJl+UJqLBYhfLWcbDjoNh6eFgpUyEFK/0wMv+AdNul2eJoX50VqxZ7CjjT/tdPn9BFlXZ4nVuzjVFL3IOwk/gKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4K2JzuO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4K2JzuO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1022C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759504793;
	bh=JbOUnHs3qL0ycB1pfoGs7gQEe5w3kKjMinCsClnhb5s=;
	h=To:Subject:From:Date:From;
	b=I4K2JzuOplFBNoDORsj99XpZi6850P5m+QEHNJoIKQPDAypiq2NZxv2IREpBscMmB
	 1187Tdiim946NX4oTqOSX2hphmUHDovAnqgQUe1jXK9syL8pX85rgV77S4yzUIqKNI
	 ex/4cz70pbo+8gsXxNWQXLI8iTBuz0LnEpD7s/C5Pc7H+8oj78xtaTiBgxEp8hD9pO
	 pHA4ftWZLzamJnAGacHXkYLrRQD0a/bgisWy4125yEE7tl7HQGspgj/Cd2mRAVAGHX
	 Jr+JPhni76u6aFIQXnHNWxjdWy+Xcgbp7y9nBsrNC53DX0TIM00i4Qca8GBh3111t+
	 sbbAOTkpjuYDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1AFCAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175950479357.10670.2457802296988305068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5565434d4d90b4bbb59e58269a2d88066e6ec21167053bcb0c9f4279875a1aa
Date: Fri, 03 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759504793
