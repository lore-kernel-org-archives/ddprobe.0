Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4B4171C9
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762636194; cv=none; b=leLxg/AE2Khh6c/K7L9G/wOvpwk+wyNPnvjW1fW17NHEIZW/n3zucHAbrlzpaSrILwDC4mcQ1cI6jxj+ApLVO54OHNpV5xCNX7FAi96pbgo1xkwKnKNEvuyhnzmXuD55OJpcg+GyluW2/nyUUyzdA0hxodj9KOBlht/xBXQn2T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762636194; c=relaxed/simple;
	bh=GciQSnniUmy3QBLKLWjUIwXnnBRKjOpbXUM5s/JukaQ=;
	h=To:Subject:From:Message-Id:Date; b=RsHoHN0R2ptsaxRHK+HNb3Twxu67dZKxLAQNk/XrZmrb5GvHa15WtWriDvjB/yT9ziOGSD+yOvlZFdxmcMtDiEdk76NIc3qVOYlJaKA3JhvLWoaLzb7Utg/zJ4eQSb5UXvDyjlRk4vXWlkqTn0LkiC6zCK1Pc3clBkbf082lsQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7U8iLpn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7U8iLpn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FC8C16AAE
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762636193;
	bh=GciQSnniUmy3QBLKLWjUIwXnnBRKjOpbXUM5s/JukaQ=;
	h=To:Subject:From:Date:From;
	b=G7U8iLpnKPPVzCZaYpyDQpS3EESb1bhL0c7+HGsq7yl/poYg16m5lAAI6Hda1wln3
	 35+db/FdGrzgPnJNKlb+RB2WkKzPRkhX4IwzyOki7BZoovvv78aYIeDSudqULmL6wa
	 gLuWZes6N/rx5y5Ab1KhIg1iKAqLdRMvI9Y9lLhG3OTD95PaSev1DR1VJS7LCCdsPe
	 YlA2utoGRpWKgYoynxyA+ugr74Uuw8Hstl4ppMn3ceOsJOg9OILHwYCgkD8sQWaqYB
	 EiTdC/GU5J4Rz6viYVa+ACfAJCq780m8AiBMrbM9rYV869IRV9t/ikG1KN1inqB8tp
	 b51BKZJ23Y2zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C9ACCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176263619357.21045.4619682049659857178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ddfd56252442d71eb1664b45634485eacc1cabad942b53c752287434862c49
Date: Sat, 08 Nov 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762636193
