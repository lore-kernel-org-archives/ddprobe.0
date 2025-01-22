Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481DC10E0
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737522954; cv=none; b=cnC3CSXfk2rpQFch2N2Rpf8qAtWpkK/4rU7SaxcNNaLLLQSxN/YqwxeloiAhV6TBsWlelmQhOeybGWRt+oQYPhi/0PT3FNBjj2rNbBUBd3DumsotdWgRU8yft9fuzlh0EzKpZCEKGso938Oiy/+b4+qblGmN73pnB9Ar2d2sjm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737522954; c=relaxed/simple;
	bh=BK3RkC7ZS6FF2njK92Rk+uZQwntGsJudSXmmR3RlvxI=;
	h=To:Subject:From:Message-Id:Date; b=c/NUpeRh3MIKW++PQ0MEjeChzIi3ImdtmnSlgDr7H9qGoIWRH+gdtBi5/esS67A3yDT+T1n+VeO6rWleR7FHCjklmWpvHXPMMBVoWlSgeXguzGBxIupv3MOYhoy2d6QPxtBlWKCwl/gXymNcj45QmXKM6tFELZ66348XzXusg2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zx5CTu+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zx5CTu+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3360C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737522953;
	bh=BK3RkC7ZS6FF2njK92Rk+uZQwntGsJudSXmmR3RlvxI=;
	h=To:Subject:From:Date:From;
	b=Zx5CTu+0ExMq7AiInGwr7FDw2tafc6DUVXPiDo6TkRDXu9Xi9vNJaMrtioiApJqjY
	 6L8dfaM4ER47x7EQ6PowupL0oynZaMEygcxOpvaIyfXO0oNr0saI23GfRaV9ckJ9oL
	 atY+ULiIfGilnYPjjbseEHkpnxou7iVuinNQepbNzXTyj0yFnHUctSgEvP7KSj+Y0+
	 DQJO+WS04mUg59xKmB6vyHdLRJ7wB8HljLxzhU3FBFXzz4HgSgPQCzhq2qgtCn/20U
	 FcOeOZqZlUbGgODNW06KJf/n9sdMuyLp7Mvwr6xUPQVglO4KfwkdecuvWhn0J+jQcs
	 IKRDLOekrzgog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EB8C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173752295358.1642.3759176576872270129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8afc6913a50ba4055f9e70f5457a59fac01685fc02e89553099a5fff9edb4e4f
Date: Wed, 22 Jan 2025 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737522953
