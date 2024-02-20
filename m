Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08C57762F
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708451297; cv=none; b=PHib6cr4i6DAOW0BTD7x0sdfoWPf2IQBGmEM/sYb5MPqi43p4DLeEhinjt0dwONfbQo8/yyLeG5U8lDd4ERJOafWq2hqkX+AYMQv90U5lR3fzWnBKyhhWBwtCgK0jwk0TSNTkaLkwvi32RbYQ5BIznFNaYC845wQww9JA9sRG/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708451297; c=relaxed/simple;
	bh=aTatvgNrLHVXN4+OhUQ9x/3Xo0IDUoYILqAvfEgu4cU=;
	h=To:Subject:From:Message-Id:Date; b=HFSHaPGQKPLEea/tpIccKJpvyCNlnmLadvEbP0Zx5Qyz2CTU4OSdkOM1+hHDG7wGw4Ngnp0OzE9dSoFJYd0HUSedS6ECz3mQKJY4QxwX/SLGH13+BbowyPm+CmrWbYB/DQz2rqnfIahrIy4pQFJfJVjVY1oFBPVijNEL9IA9md8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVL4uQoV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVL4uQoV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B8DDC433C7
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708451296;
	bh=aTatvgNrLHVXN4+OhUQ9x/3Xo0IDUoYILqAvfEgu4cU=;
	h=To:Subject:From:Date:From;
	b=fVL4uQoVtnTFr6fHwjlE7c+hKrkKr0+EJEQzP0GyvzBaBstx+/QMcNWIy7In2Oq/R
	 Gz63L8Pl7U0Z+NiYocywn1UhJjTc0vhriRV51ATNKn3ntpQ2z04Zh2uQ8VqPKAURUZ
	 xOVkeKVQIpWxFCxJKV6iS1V5Uiji7SYzLV6mxsWWSCBOb4fQSrRuQalCbeSl0/s0pP
	 bLwXcMfF/KVIs7aJZi3NPUbhW/IRYxKW7j2c7jNOlYsz0ZIkVt2zfq65BuVlXS+H55
	 MT3X95zP6JST2SkkxMaKyzQBF6bWxquunE5lWr96SFu5tJm3Mx24uEoTbO4eye3zeJ
	 G4IRFlymR2uiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61969C48BC3
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170845129639.7348.15477088072259363501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21392501b40a04c43503afa7e0475460fe95a2a8e5e4bd1bb8e336f9b29a8ddf
Date: Tue, 20 Feb 2024 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708451296
