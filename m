Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0432882A7
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755437394; cv=none; b=dZ0I/HSKVF58eGPli6sVA6Zm6cREakB8b550VOcxNwyJilFSoivyyj4llQWsPZ3maGSF/aBqcE48fqOFjxQWqdWA9toxAk6LiZMTfAH+D7dGSa/gNL6h69ztE/BpraZiyBk9FUSuFvDBIiM5TgtXT7n9ZUVJrS+WXq6kumyZI3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755437394; c=relaxed/simple;
	bh=dNgyHtXFXEo1sqIFdaKoDSkUtmwT/ApAdwyYRhvLZ/4=;
	h=To:Subject:From:Message-Id:Date; b=Zuyi0YhffuZNqt6MLYyRl1kr3EApKIWiyZsgokk7dPmIAFHFaA4fgAgb3YcWeSa3vavlgjP/r8VtPBNpqSx6VOlyxNnPv07670ag75F8KqerGbVgop77evijdBu1QWqcAV8ECXzPa3UtoiItx/OjPbaAGFspqni5l0Cg6LbDvj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7ohKzPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7ohKzPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25C1C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755437393;
	bh=dNgyHtXFXEo1sqIFdaKoDSkUtmwT/ApAdwyYRhvLZ/4=;
	h=To:Subject:From:Date:From;
	b=W7ohKzPeIHKTAYGGKs6cA/T237RP4gSQ+zXWK6pfGqVwHPEpyUKFvUn+iLqbfTxjN
	 sP8HJmLWnAlnHNPyeMinFM74qQibv4PbjzBgdcyxbI6vzV6u+nd1Sz5osg7gwakbBz
	 ea/Kq0guhhngJ/YG5l9L1uP9QyxUNYMNAgl3hTjDhTmbbPg8LPA2uvtO8nI3Iwtr5j
	 Zt4JFo4Z7DDESnGNmVZxtr4talv/+eJ1CTw8AhP8kcpIMT1Muow/dMBIVxuAsqQdkx
	 LKfpH6t6BnD8G7Qswfc5ABb8FrniSkfH5WyEEhtIgPFmYjCneSo1ltENywzT0DtD39
	 gKOncjIj96rPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93440CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175543739358.15337.1081962652615099382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 984a0b4f336b0037affe75882ca7c0206c930e064c445c6db3e8d177e291b56c
Date: Sun, 17 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755437393
