Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8BD318140
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 15:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782574114; cv=none; b=bRf09oTkeE9qkhJpoEuxoBTFu3k3MZxe1Di/tbYrSCCTAOXhuJpVL6iCBhCUYxUpa0FGK6EBz+PEGOH5H21Taby9MNuMxlOHgUOe3M4G8Njki/h+znF2Gq+rc7l0AoIo7IH/pT1VfF68etIZEsPotqbkOuyvRzUhbDUWZrRlKt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782574114; c=relaxed/simple;
	bh=d7pW90PtBk0Kmaz2GSu36B81ZcmyKn5pKiWnCi3LYtc=;
	h=To:Subject:From:Message-Id:Date; b=M/C20i44tTbFxozM4B8x7yU4SwVQMmZ0e8+A/A9gPuWIr+muliN4xb6esDtR7P4Emwq9Sle18oG6JYM6AO10o4xBmSckPyiNK54PX+lU2aFntrEcl89BEO5VyGjPFHVaaPCSy3qiSOEQ5IRwfj0ehxD7yNJbcAeqlcr7P+ZhlCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qIsw/MYW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qIsw/MYW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B86C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782574113;
	bh=d7pW90PtBk0Kmaz2GSu36B81ZcmyKn5pKiWnCi3LYtc=;
	h=To:Subject:From:Date:From;
	b=qIsw/MYWXK/HEgyDAFXzxhXW19oEL4XFy4LQhyxUq+UJAbppDqhFbiCWw25LuFEvV
	 lYcTtBO9Xpp1VSJNChFRCLNjZBGOkjFQ0dQ1UIpzKa7l/yRM45ORM6e28wB0wkHWIv
	 TZL6JQqlSSzCzuRR3A99geCFHjugyU3ZO0q3XE+Z7b0w6yGUnPUu+x/AwvqT4l9ObY
	 eEZjOygotskqCK6VBWnirmU6dXpyFA7REe5CHqb/tJHKgwXdXtqWc5hTGh/fPmRDs1
	 9+Nnjq3jYBD0UD+e8pOZhwDb4Xm9Tk09NuYM7hmy9Ra7tdxfSbSztQVjttK1K136T6
	 bVMnYJLhCu6sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C21C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 15:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178257411369.307.8055257835465745565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0a7c441502cc3150f6d66b373b403bdc543e4e70c84a83dca1a3b2f60f14ccb
Date: Sat, 27 Jun 2026 15:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782574113
