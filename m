Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F89D289E06
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767289434; cv=none; b=aJZrrW2Tf4dVv/+I1U9iTqLxZvi0zLs5S9V+zWuDfokTl3bBHWDwU8hJEHGchlD5wGZtMSk3bozOMJtklzMQjf1uNKh650UUE9ezxj15f6v17hPRgChZnoW0Jj1yco3drtmVDsMK73y1yQIsV8qhOaLskbLuUC/dnXbrod8/YLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767289434; c=relaxed/simple;
	bh=pIn1iCHG/3LwdfCYoO6FZGekdnq2VJGOrIezhfY01lY=;
	h=To:Subject:From:Message-Id:Date; b=K7QkaWWppRHIp1UFbMKCGWrkaJ91BmVt5TgF7goUP9jabzO3Ix0O957734osFTnAtmJuZt+HgAz1MDeGu8lpnSUC1LiFMnSDpnDJ+Ef7MVZBKbfQAkjXVFwr64xL6O/djl6gCQ0A7qNFviZMzZ0AIhBWKcYFBNMh6IbLTgjtmjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=foImdPUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="foImdPUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D04AC116B1
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767289433;
	bh=pIn1iCHG/3LwdfCYoO6FZGekdnq2VJGOrIezhfY01lY=;
	h=To:Subject:From:Date:From;
	b=foImdPUIkoxrdtK6hKUzdzZlcSVK6OfPu7iM0JD/sKy8ZzOfUvuYNm9uoSaxAewn3
	 wiE7RENj0WNRVBc5lBpP+pbfpHmAqE1aSG9Pl/Ehxy7DrLNqPoIQBGFZLwQLXJ3JhP
	 8jJZ5BdeIjib5M2eDC7v9ncUcP2UMoNxjVQNSfhGeBhci+lyvm5M44txLLOG/gUjka
	 NiJpzRjbnf4LWKh/ifIdInUNzJNhbjuBFAoBwqOy9v2XvJs2ItlgXQKD+IzgNwW9OV
	 GvfKbRSjnW23IuGGlcok00Z5KLXkowrk/9CFYGmla5bg29Gn5ihVkPNjzYSP/H32An
	 GURn2jHSTRqRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F26CEEB57C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176728943357.7355.12969266570680045016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1a3aabf7f19f151e98f87bd596a8bd19c687680e276da836bc22da74a95630f
Date: Thu, 01 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767289433
