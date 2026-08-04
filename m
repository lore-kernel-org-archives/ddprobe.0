Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BC123BD05
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785885034; cv=none; b=ls/CrBRnytGlcA6OghF+WvbOqWpuQGRbeRvxuzQoUDlSwtVE+Wk/w5MZnXO3z01PqD5MchOI85hUi+Ac+ZKocwZGunxDvCDuRIzso7EkHiCuqTaDN/Olmgayvs2nbtH+M5kxUCUqP/YNQ/afMUZ3yS6+e9VRGUkdEKvf5sqQALg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785885034; c=relaxed/simple;
	bh=1JZSTsCBiagxIBGWSo5pbNEGOb5deRWxfuwawZC7GBQ=;
	h=To:Subject:From:Message-Id:Date; b=tGfUYTw5U1BAnPw7hlAjtitwhmFivN3zMUlKIwZTnPO2rqIo1xd/RmGUTpSfJM2PhjqY2YwJmHlF8AZnCdauMHy3cNKl2pdlzK8GW31caJ/kTvg0nKDJ64p02vW0roOA4NixFHQ5TTd+ApScr1vLqo2D+GcSdBVxcmubIuEcYlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=redCa88L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="redCa88L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17D2C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785885033;
	bh=1JZSTsCBiagxIBGWSo5pbNEGOb5deRWxfuwawZC7GBQ=;
	h=To:Subject:From:Date:From;
	b=redCa88Lp0pNzU8BtAYKJxJu43i+Ygoq3StkcmLc52lkZ1LADmd3gdHxT7QU70mHJ
	 xNrxk5S2GzGM3GHT2zhB6MjMNVmmUUJafhjOe2Xc9pWIThBqR6JIshi4fKbG/Xn/bL
	 /9KLDQf7WtYmXwul3seiQlCSFNyyRCug/zapJUTprvbRaA4Zdsy6rlmIajRqWdf5uL
	 lz1nxe/UsghUu7McZw4N1PaO/tTyA6DUB2wlvwrq6mnZGp/zXBnfE7OG700hqgrXjD
	 rdcc36CDw1jnB6sRJBMQzkAUUGj9v2RW0/aKeNvPL7wvf2B7cpz17/1oMzWUCQXqC/
	 IUAxJmzG7qjQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD67C55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178588503368.13465.5294744631148048583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 901ddb4015d990b957a16f123afa63ee1b141e1d27944bd2db3a4d0ddde40f43
Date: Tue, 04 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785885033
