Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C01C8EB
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785693634; cv=none; b=Z9POjq/1M6tRfAPPS0JFJEDBeT35oBvC4IwR4zgrb74r+gmZel+0ES/xUsGu9r1cUKrOHIohwp0jKsaW7e7PT07iR3pWk7ZhdB0aU8qDiY560yjUqc/kPibEBoAMIadHNCfR+C43knYV5aVr0M1ml3oot9iZUGz35mMFfLyK5sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785693634; c=relaxed/simple;
	bh=BU72OZZ5gD6xEe9RHtyfFOvPZK6DRf0R8S5vWOyg1rQ=;
	h=To:Subject:From:Message-Id:Date; b=RX8mLO5x7yHCGgmlfYqm9PSJRE/VPaNvUZW2s9SmJbG6ANn7o4TH6SpDqJMt0Yx9xjFKEifEoaYZB3qZ3gmdPoAp7gy7Dl05AOvTjB/1KeofcDTuG/0PNpr+caEr9KDmIcvZCXVozv1tpmeHxwcAwbpjMLgctzxvnjN5EdZGv2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NM1clH6Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NM1clH6Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE28C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785693633;
	bh=BU72OZZ5gD6xEe9RHtyfFOvPZK6DRf0R8S5vWOyg1rQ=;
	h=To:Subject:From:Date:From;
	b=NM1clH6YvSmyb+195u4soYhAnqj1pyD5DGVO6eWMlBP0TeUIjKM3Dims4n8BzFY6j
	 lCyG8tNhBdR4XlJZJR4w91XSO7fGKwEPTLz/G3nVSvHUoWgRrluaF3Mh5vkSXJk1/Z
	 NjxOpWg1zfexoQ80zgpUIOjDXDG+N8BEKk8SbP8VgfyPn5V/MaoclM1j0w9PaqUPx6
	 wrn0tWxH9tk+3LoXB3iRtJ9gigiSgysqVtmvlML7Y6IM6zuGACrOgaxVF7R5L0IEGF
	 CqNddkHiH42Kx8LAcUry24/kshAcE3oS9o6wlTiFYadiaD7HxPjWW+wIbhv4nBq7b8
	 W9igPbN5XjD5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A869AC55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178569363368.15387.14470136346199240937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13f47989484a170ab4348e98916152ffc4788ebb7e6c1c41a5bb6ec3823132da
Date: Sun, 02 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785693633
