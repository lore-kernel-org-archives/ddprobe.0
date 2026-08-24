Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2DF38E8B1
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787606434; cv=none; b=kr+IJ6L3uZsFs5vQirQAF0mKkdchnUv/OrCU0NuTVGnh9TZfQIX+L1IZnzQYSPrTVfB+VTVSem49R7VNCOFha5o7ItaSRQhXNy2ZF92SE1QUvA8l9Q7YwB92UUdvv/QV8hKWElTALGgp+iKbtz9lqE7ZQkbHYlJE77wKRXdGcpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787606434; c=relaxed/simple;
	bh=b6wGigX4zbESeOvRcuP7mynep67Z9PlSepMd2rlNEVM=;
	h=To:Subject:From:Message-Id:Date; b=fshsD0De86Qr/sg7HtR7oL6nimA61+GDZI+J2kNgoc4I7jssOOlO0AS/7rXI0hCYTw5CDmUBdHy2jYHEpcSFNWUeL9WRr3b7Nj8Q2JrpmIIDIJAmKFF9SYVItCEzvrYv1yNGxHyDmWeSEDbjFcRJq/zWBCSm7fYZppGLMOXqFCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eC4MGvar; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eC4MGvar"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2A6C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787606433;
	bh=b6wGigX4zbESeOvRcuP7mynep67Z9PlSepMd2rlNEVM=;
	h=To:Subject:From:Date:From;
	b=eC4MGvarMHY1SiXVdM4fxkXH1OhBrbZzRcr6nslUe5O+EeDXQLn1Jc3jdiBBYOzvo
	 QEU8FvlnTUu8b7y6kll6N2XyfjnT38m6scdbdWEJw1acnWHCCWBGJ720v3q2IsZJKc
	 GFLAQfbeoT2mAH8n4pZJJH2Z4Wvfr7BAGvYviDT2kVIK3mr/qNSvOgZUYIxLZfQugy
	 yDTCMy908DarpekRGohhPvlGF7CN378+pgQq6QJ4tYe7OCdBxRnwWMpU1/LTNrZfe0
	 pMeK2WwlUY6Pq96m/8WHUdMKL8gPGJI84Un/zgWn9DqH1oiPrASl69HuRwQnr6Ckj1
	 w6IVvqbHY74yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA205C5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178760643368.6599.6685141548207171250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f63072d91abe1e053478583a5e96639205fe1b528c58f154b60c70fe2208a178
Date: Mon, 24 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787606433
