Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418D1C120
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748140795; cv=none; b=Db9gfHuVogSm/cEId2HYH5cYCPFwpyj6w9i4I2NKS5K6x6sOLkqsuCdFTtjl39lPrmZ6igSX3LNZIU2QV/iw/oUuoABwseji8qdbatshgLw4fIxU/dpdzxwRO9q+0wl9Ntew8T7Mm9wAmHQuh82IwWFwYquhQPYWOnPTBuw2syc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748140795; c=relaxed/simple;
	bh=WxGXm95bRd0/Cx7dfvl0S4FAlTuXhI6Lan0gVVHF1C4=;
	h=To:Subject:From:Message-Id:Date; b=ol5QUHO7qD9n0PjAkncpFZlFducqHhOsOh4Vl1Whd/qeKwra+YFqq7FB8BZ64Cxco2ARiz6LuXEFMk4InWAuegGAxkP/qV74Cic47eoPs6uU4k/m3sGAaLuNTK8emYY0K55c0fpTzwCnyXKFlISMYSHG3qthqB/qoDzrOeetT/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZw1vj8U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZw1vj8U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DE4C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748140793;
	bh=WxGXm95bRd0/Cx7dfvl0S4FAlTuXhI6Lan0gVVHF1C4=;
	h=To:Subject:From:Date:From;
	b=JZw1vj8UjF/DTbjXaPYM9ys/rImbauZAT83lmVOdtyUtz3u+QyNFa0dqVLFVKQu3W
	 i+5n3doMkdjzafZEUjVWjsRgrfdLXC6czAzhN97cHR8tsTxlxG6ytaTKb2HFLSWcf7
	 zG2l/gpPmPkJjWLU+JavKgdqq3lru1C4IPi4KSasbY0kEOIPN0qoudZFHe7Y9VNF/N
	 YzjK3XgYmdGU/E3df4D0zKUO/OMVwr3KuOeep+gUfVPHe6Y6XgE0loVZdyr6YJThUN
	 j7MbtZkEOzU7KJWrsIRO3kMdasTYpKDBJCeXHDZ2V2/rDTzX4yTpabyLpdWhzNWdxN
	 oz5dv/bogQ3Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9492BC54ED1
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174814079357.29646.17905825169365080591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e2bc918a83b8827bcb93df938bbe4f59070d9683a38c5f710c84797d5567cbd
Date: Sun, 25 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748140793
