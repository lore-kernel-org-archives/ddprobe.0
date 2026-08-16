Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AF83346E58
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786891834; cv=none; b=NvRMUm5cfRKIR8SpYgv+Xm3XTUhOooK1YXxBchpbLmN4m6rGsCk2B1/wjfA43PM1oySa+uG2uYLYg+VDmhRtVxi7ebtmmWG2qmZfqBwXFqw9BHvzAWxD0QyR9Hfrhi5uL9clxUormYkdnr28qVqekEsLXN/+OA7rlL35N01yTWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786891834; c=relaxed/simple;
	bh=giO+QB0Eh+0STHX/t+E65O+H7AOqdpa767tzzfd7BDs=;
	h=To:Subject:From:Message-Id:Date; b=e407aIM27//s4bYgcn9e9RL39WbRSfTReITCBH1JYI4GxJtMy0Dk1oMXdFp7RGOWkyS8ubmOR57wv/BemTMP9M2v2ZI9d9MbRYkG6/5ejUxx86+j5atMXa+yku0bljMmrURNXbNvFNfH+wq07fiDUwl8/Aqg2oiizhFMzLozDy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bleTnvV4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bleTnvV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3419C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786891833;
	bh=giO+QB0Eh+0STHX/t+E65O+H7AOqdpa767tzzfd7BDs=;
	h=To:Subject:From:Date:From;
	b=bleTnvV4SkhCPCPUWRuxsrHsmx6l5IqPylYZo6bVhO3HBD/CysRmThwhRfZdO90vM
	 UF7N5yLSee8NZwfJ/bwkXrrNvrTb9cu50QdHYeTbZdcjHqwJckYkUOX9MnkvLwQibJ
	 W6krOC7qITQfr8XVxEcQWJEFt/O5wYWsOcbuUKugxv786KjtnQACIyC51RijmyNeul
	 qw/mz5TrvHHsTrw17MbnHUMati/2arwKrRzOHkWrCpMDZI2DjY4jS5BCtbeONySsg4
	 CT6AW7O7wqoU8/BZqKIe10HX+mFMvPj+O7xrq/z/cf33f8P0WwNdXt3KB8ySQoxMAV
	 bC0z9wqjUbeEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE20CC5DF6D
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178689183370.28710.5068448027722447607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc6e2ede8c422793424437c3400659c0f31536e5d16910a3db42563981fcc1fd
Date: Sun, 16 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786891833
