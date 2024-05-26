Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F1DF17D2
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 04:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716696263; cv=none; b=S+b/GztsFqsemazERh+wdLM2/m9g9/S9xMd4n8Kti7K46aTLz9Tz4hU4ZayU4SbU0T9UtEfxp2qQpm3G3YhJnbcGbzhkTXWcFa2jZs3BNDSyFCfy/76DB72ax1+RdF/ta9hj5r/b14Qqb8pfrYtr5z0Vcb7XqRyyLw/BEBatxK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716696263; c=relaxed/simple;
	bh=+xwXqWgib3ufuHJSGCVOscQp7CCcrx/W8RQscYnC55I=;
	h=To:Subject:From:Message-Id:Date; b=UZV/LlqSDTXyUIpLJHLXX63T9D3QHQBsHSMdCxOzWnRtW1jydeG5L5Inq/klUnfH2JoAAVjE5c3k1Lt51aRX7FsrCAX3S5zfEFScxgvt1WiV9SmlMNCxaYxbrn6MTlWidKD7Fg+lb3u4InUqeSG02d8q0/qU4VZDdN4yDHmeRhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LoPiTJ/6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LoPiTJ/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF880C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 04:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716696263;
	bh=+xwXqWgib3ufuHJSGCVOscQp7CCcrx/W8RQscYnC55I=;
	h=To:Subject:From:Date:From;
	b=LoPiTJ/65C4O/LpdEjnKiFyxg1rUg6b6Xe0U925o+k7A5RYZrXCVZ6MEV/OxprPyi
	 8JhycHqTkwr3D+fNtFJMWb80uPV0IJhdrT/ANT2qCsnpa8EiQBV5mxmZ/abrWScOfE
	 TloiPrxZhk9XqkV2QCQV4INlPfxDrlHRCCTzBz7m1s6S+er0r8wYzDZFYkURX1ZVdO
	 9IllHi6Rz3arpVqgQiLhugLPDWo0XwR/ojhNxRrsHXRMHMwHcrhbwc49O0SOUgoJel
	 XdQ9VgFXjs9UzbxbM9GAZ9G4EVUfI9Wc6jXXLHWgnGpt9rVplKnens91ezNFMiGLqn
	 OtYUftdiwkfwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFFFAC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 04:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171669626277.20378.12258901437127181264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc9f4d07ea7ac0731c3465a93ed71816a5295e34efb97638d25a2f65f113bf02
Date: Sun, 26 May 2024 04:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716696262
