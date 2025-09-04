Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11ED119F127
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756948794; cv=none; b=R7C+f51APvO1elLMeD0ASpDAN3db1fcGh5SugplDDyLp8/wtcmOf/lqb3SfGg/RxdeVLV/j3NiaEnYdZg6EyngDZ1ANIW6PzyFLlGWUL/36QDgKkFhrNWnkvMLxDqs51ySPtkfOJEY3YX4+KEj6zDqB9wbY9UzMBn+6uA0QV1ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756948794; c=relaxed/simple;
	bh=mTFpRXnq3Fu82fKO/pWEFuEqrSMv42WJRvGAAZsJlk0=;
	h=To:Subject:From:Message-Id:Date; b=StsWyzbgTuQxoq4DYeUpChxHa4Eg3C51BQi0yemIL55WN+xqljqUi0HJywsEdOMvGIYVvLK9ohrhuGwt+qrWYhRJd5AhfYxNkCCzU/YOACtmJ+QGBu4UHYBLYnPsa/jxPCXNelgQ64TNhMegBfjopMyXAh43nF8qQlX3pAgzx4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUzFTHXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUzFTHXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CC0C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756948793;
	bh=mTFpRXnq3Fu82fKO/pWEFuEqrSMv42WJRvGAAZsJlk0=;
	h=To:Subject:From:Date:From;
	b=bUzFTHXGWo/4NAC4BykQK8XP/PuVQaEWlrgglBYh0cCXD9e+bM8pBzPFDtlSGgYt6
	 SnWXWgm+qCimrSGsx4wBiV2W7Fv1XjgrbwIYiP2jn0FZgW7ZAUwhZXhvY0NpaWGpeh
	 CyvUqKdhL5Jl5PlczyiHIXvObav5th8sWDvkInV9fZ3ap7sawSFabeExXhVEagf6dc
	 V7lB5LNMnC+mptGIDxiwR7ooP0Qs3mowiDacDpY0NKO0WqBIKBGgVPBt51m9MpHDN5
	 cJjuuix4aq+afrpFWs/aHLKnKVl8yfIbfdaTVJa7irg5LcJJQGT+/G+h0P4+4iLj40
	 D9wrVyqDmOzuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC61CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175694879357.16884.17240714726134287396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8ac24a1b2bf80e089894ddc45859fb941c3e15197f31f0958b0bcd3b97e3322
Date: Thu, 04 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756948793
