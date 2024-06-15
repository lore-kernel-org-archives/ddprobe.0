Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEB219D8A2
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 12:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718455703; cv=none; b=q05USeiZ5ihOU9rE+iBrL+C/3lTowee1qyq1GSjod1+KAb4FFGvDnqAHh6NrzEI1bCDMREeRwoB4NGXxi4mipYW5ugOskbZbXiUmFK/F+QwLfAqqOGj761ineYSQbPkEcIsFsK2qu8pfGK4ud+WghszfG0VfzdcOqUz1CrCPHmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718455703; c=relaxed/simple;
	bh=kbN5ASB/tfjjBPmvwwubJwtnOzad781IaqtJDs4IS4c=;
	h=To:Subject:From:Message-Id:Date; b=HgRQhsEO9oiOJOWsot0W6iHl4a2tR2DHM/RTGeB82mwWanB0URet5gR6fS1SaNB90MNxU7PIkhJXguk82/eZ2raeY+oNGupbAZLwfIWQsv1icjrf37/itObOnyXMK9C+W2llKFGyRksKlfzwn6zFy6ib6yVXF8XF2op5CSsHOgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GhCl1V1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GhCl1V1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF42C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 12:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718455702;
	bh=kbN5ASB/tfjjBPmvwwubJwtnOzad781IaqtJDs4IS4c=;
	h=To:Subject:From:Date:From;
	b=GhCl1V1sBAoE3ZQd9bbf+K/nC/79HXSSYPTzhClT+KztjP2XgvWEQjSHE/AgHSBYH
	 ovmoMd3CIOaX1eJxG/WPCwtTh10ysM9W/EyG3VuN7tqE/GAjn5aTApohZ+z0DvNw0H
	 0k7qnpcT8CIOTQqXaMb4YtfdnYuIj1Qbp2o1KeLypxaNglAHt7v/ti8d2mYocwVgxg
	 wB9fURgqXLCHvxemsoY2vUpCgJrKgAJ0fltx2zGb8WfLV8mPuQYnGy+iZuAFw7pCY0
	 n82zjywaNnOwIcLZGwgRzQVNM0WQCrNuNQfPu3N/oZIroBVskmX6A9PnYvAgGuC96G
	 35GLqepJfJpIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDEA2C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 12:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171845570276.13795.18228890297648485073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d6b9b2418e20a395d40639be03ef6201668cfe046661ecfe6ee81a5b52e478
Date: Sat, 15 Jun 2024 12:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718455702
