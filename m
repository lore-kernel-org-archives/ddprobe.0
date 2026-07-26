Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26580381AF
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785092434; cv=none; b=bzNyKR2FVHoEAzD+Z9YTglc/dRm43nLsQJOjXz8qPUVdc1EbuVxarYQJo5DI41MfawIu57CaNiXvvbAzNfT9tFZ8LvXQE8NK5S0f6uOiNrDvDRC0ZEeHccC/0vl+ETJhN9kEv6Sh/JAx4yMHsBuJmuwn/6jFc/zXkpYfBlqdyg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785092434; c=relaxed/simple;
	bh=4COdQak3fjqbmd+UuYj6V1rW34tSw9svlxdEOMUUd2g=;
	h=To:Subject:From:Message-Id:Date; b=h0fDsaNdjmfy+nteGybCDsNB/pH+T79xkmqgfEiy+XBSG5N2HUZF6YQdhTzXv3bCplRi7uMG7m9vfEOyX3Qt5sU17V97SZbDh7I6QegY/wmrqbcwcJNaJ4kstn+CaVI4G8vy4PzUGr1dAZIRumLulVTBbZQYucI9+nAHDi4eVbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJDDeoSF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJDDeoSF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD81DC2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785092433;
	bh=4COdQak3fjqbmd+UuYj6V1rW34tSw9svlxdEOMUUd2g=;
	h=To:Subject:From:Date:From;
	b=WJDDeoSFeENGPAZiV0PhCjBQq02NjwCEXC7bBPUbcWUflie5FCwbSjHsbk5OVk1aT
	 QIgIUlQQQqD7aaIyE8jdnfbV2W5BWYVA3wm3o9GIAlJNy6g+LDnZPlWjHjYEYyPHhU
	 NNgXn3WG0GiS0J9luG4TDxA9hii/T3cTzH98+iNH6ziNyhoB+yx9qCPbX8+AiCwcGk
	 1VnaZ4BraEPrVvB6qVlQf3cgSmwEHwf1b14x6N/ZazpblIAcQJkjmPN86TWzayhWG9
	 4+zKBHEbF/E3Gp3GL229FINWo/skcQrPLJyUD9g36FcUjRORlRsmaMbLb5kgTO2tfa
	 Kdpy/NI/OdOew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE3AC531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178509243368.32370.12950774377364066792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 082653139d16cdf36219f9812232ad51201c19d737bc865c233a8863fb71e6c8
Date: Sun, 26 Jul 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785092433
