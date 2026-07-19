Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB95DF6C
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 08:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784448514; cv=none; b=g6lmjW2AIj86SbtuHo7QmzgBbek0kCkthCPLReLuPIXyMIvGGqV6mwzt5P5eFC4TVmne5lQHMPHRWcLqceXT7McdnrqF7Rnin//iaV5GJFuUGHYltLNKYzggp0t4dNpc77XwF4xgQHZc78BrmXsNX7GzjfQ93LGaY4+qHYRB6f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784448514; c=relaxed/simple;
	bh=eYAoS+YIsOl+gjR5zXWJfvGajlF/dx5wdLUKRNKAiLo=;
	h=To:Subject:From:Message-Id:Date; b=kXuScnZuSB7H/QXbS2l/W6fThltG+VxKsuLbXGlLH/Fj5pwjQcM5awnCzBYbqHKXEUNTMZHrJkPtDzuXLKxpptgBd8H9v0gVp6X+ZuINhemrOC57IJEkoGrRWoILbOfakFByy1PpgmKgnXw87MuF9iQ////90BgoZYzy4gcGOAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqPj0vg9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqPj0vg9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9DC6C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 08:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784448513;
	bh=eYAoS+YIsOl+gjR5zXWJfvGajlF/dx5wdLUKRNKAiLo=;
	h=To:Subject:From:Date:From;
	b=cqPj0vg9WnTLepb2wsxWtqC39L09XPsO1JlLlftcgb5vJhvFLUfT79J7+xCxfMM6i
	 2e7Gog0+mKDVOEFbhHB9bM22Pf5CfMq5hQGXo1uOouqocCeccMuWWKCoDAz3b58c8I
	 VViF2CwUjR3yVdRDF6scYrwYGe9zxKuWu7di7xzq5ningQGKvMaSa1feW6xBzaH5L2
	 mTSBrJKkCvcMRXEUL5stGwLbwGUbhwvuhVH/6cD9+vDAzRiGdNlpR6FivZMGvGgNym
	 Vc9bZmo5K+nn5Y88JnEyZ21RwaNKM9rn6fkhjMCudXn4PbcnwhDWT+l2a7EUkGfXEW
	 Qnt5kS495f39A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EFFC44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 08:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178444851368.13571.13818566214462305718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 054e11b9bbdd3a178f3f921735e9c43a4722f3bb5a7ea34f29734248e8d55d13
Date: Sun, 19 Jul 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784448513
