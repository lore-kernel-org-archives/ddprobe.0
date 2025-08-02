Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21454A48
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754097595; cv=none; b=pX47tb7ds8GdcJI8+yXK26MWMUgwCfMx5Q25YAELZESz2ctX8GDgsJVs4c6FhVI5kPO4AHCYaJUJS7eTT2dTDw+u1SpcSeX2KOzqoPBUlF7/bEHmD14ZX6/XQAa9NQPtlPcwEkBsDwXoooCZBZdjQ0v/PK1Ov/F81YpePzi5RRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754097595; c=relaxed/simple;
	bh=FuS5h5gCqgcyPuEX7ZO9ejGO/GbZMW46udJ8pnURrck=;
	h=To:Subject:From:Message-Id:Date; b=BIGqyAbihfovTr8vMU0WqAEajHMaYWQSUGlz6bJHGmCAsL1vQ+/sUUpb1s5e8txOeIxF4wXAB1PT0ldwv4WQbaLGpruAeQO7DXOd5WanywgOEmgqv8wK3IxL/M13Z61o2pkeNRYk0OCWZ9GKO/igmiToEIy6P7y4OpBfjTgH3YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJVOXerZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJVOXerZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A694AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754097593;
	bh=FuS5h5gCqgcyPuEX7ZO9ejGO/GbZMW46udJ8pnURrck=;
	h=To:Subject:From:Date:From;
	b=MJVOXerZgLgeqHEPlBZ8W5kAnQV4F6KppfM5HksN2lssY8jy2lwJ8ZIF2PpfWyWLN
	 1fCCddqUsH9gQaBScGAS11y5oWpWm1aqQ2JShd5VNU+TOkMmqyb6/1aS0jYXTRLfmg
	 YbFeoxOIyTL6vKMi5o1PRiDfN+b6oyxbU7ycdq9IPEq7OlqUHCX6FPUFvyEb9yZvyU
	 qBzGQ24yrIwUVeUX8/VKhtZ7iEvpeuVubMFzRJrIrz4KAJq8fUZf5iGChDEWqBxRDk
	 hUQ9oWkPwpvI3N30vdHigtJEiNmjMk+dUKqMp7oTF+j47N+SlFQ/MrYCDNmNxQPGUL
	 Tx4pgX0c5ImdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D37C87FCA
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175409759357.9930.14532262535463334593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e14aba105ff723aaa76420404086ee9d040811e8b2303cd2ad6c04b7aa96aea
Date: Sat, 02 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754097593
