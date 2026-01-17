Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7E02DAFD7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768681434; cv=none; b=cVHUuRsK9W4khVvqD+I7lRjjkItkiqs/orT80zPu6gSEF4sSFI455c9EdWLbgZ4Qk2hnu+ABZ2Pzzh0eJzkujMWUBUtHGwsYQ9yWZ7KLzTyCUmHb5nxWY90vMazCvHNiFnkKItxs7Htd6R/WvZr7XhRfzYE0Bjz7MoLc4IuefNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768681434; c=relaxed/simple;
	bh=MWu4gETuB+pbFV0+HZGq6UGDwlhYPUiOfBWez10hsWw=;
	h=To:Subject:From:Message-Id:Date; b=JLoZmPwOUI0YtAEga6FOmfJ1P9L1GI81wWXbzXUyM6HDKKzXfUInKwDp8gqfp8bMoshEAgKBIaRvYi5/qtEa7MLkj3/fNks/GPPSUhT12uRjXD+Yo0DZAp5oRbyYN57jWHrVqXa3pIiXa79BFIZia3EVW42yCmi5TymEVCsm2yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q870diNr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q870diNr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57EAC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768681433;
	bh=MWu4gETuB+pbFV0+HZGq6UGDwlhYPUiOfBWez10hsWw=;
	h=To:Subject:From:Date:From;
	b=q870diNrI3bDfwzSi302lJ1Q2Y5EnLRA6LrN/Bn3GpEv68rx8uOuxKOVoHBQT6nLl
	 Vk3blMavDWCLSKdTlkh1nSwdRqEi+tDvQxYg6RHHXI7fE7H9MrUWnVOda/HMbqPdiF
	 xahvXdOfopTcDjo/RpeKmHEyX+BOOO0srLAnTm6ovdXtd+D9SYBA1K1Th2UwTCoAge
	 0KZ8lVJ7r48l9/DtZ+IQItL/mthjP0/n4YaoU4NPvd/dGNgMdFOh1k7LQto7r7RYHk
	 jACzgVXn3G24uZQF3XYK4ZifZVCfe3dCZz7NZl+1RHQkMyD9zDSejJC4sKucpQXrsn
	 Jii4riSkyskZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951C3C9832A
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176868143357.4489.13285502979178000910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e8349b463be0ce3076da4455de7849b25bad6e2bbd3f886a43f44489e3e9915
Date: Sat, 17 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768681433
