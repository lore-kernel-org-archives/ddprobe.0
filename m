Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB96285CAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773465294; cv=none; b=XbEyQ4wIICzhBRIncKMG7vqMiCkfTzWY8qx/dFBSfzm7vvULw1wFfQXNDT7hb4owTqcX7r0boghyg3AmzcXFbFH8dVK/xZjuWk5H1aS6juOL2/CTsLGhp1Uue6WEGAjjQzhLON8L7g3cRCTEccLOv5qVGZl+Ec+TvAPfj8iPc7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773465294; c=relaxed/simple;
	bh=xqu6BlbZNDIkq79j48WByTC0NC+kYGx1ppB3LeiUtxU=;
	h=To:Subject:From:Message-Id:Date; b=EUf0AHuZAZ/rJNKqKQ4oqLCjqu2OcyhwU4gjLglYhDJqs7YzktZgl4BKs704R8PKJ4t2086dwfqkKIVwCZEJMUFfoOzbRlUizxCOIy5JckvrmBxPBjWzHoUMci0f6zntR/6ai0cHH1WteYnOv/BJPryKltnrN5ekUhE5ORMz2j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qi5EeQ9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qi5EeQ9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0205C2BC87
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773465293;
	bh=xqu6BlbZNDIkq79j48WByTC0NC+kYGx1ppB3LeiUtxU=;
	h=To:Subject:From:Date:From;
	b=qi5EeQ9TjDhU5dFu02Q3uyhfE/ANdt7HlEYxSVnuegsQWz5+RELYv4DfK7V2/VmDv
	 tClwFSritgD6md90D4zzvk2J9Ce/+CXIKpcz9eaPWa7qaqC2GNoiKDvkazTbfn2SO/
	 HiYuW5fBMUnaoe+9hwe+ykEzIJJ56MccE3yhJZhc2FkXi/bu7Zqyj0rW2urlMXLwGs
	 3K6I6sy/8F908E5ZV3cBJIZqIMzGhw8f73jxQ4AwoyokT28sBNE4qCqecs6tbJCyG1
	 Bgy62RdlRyTUNMHKbAZrCHZE/gCw5Dicma/YLc4Ljzgy3sIqfW/7tXtnRpk6mvSoXh
	 Cu+Md0HAV7sag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9013F107BCF7
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177346529358.19911.1435033340319569089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c4cad73683c8d53ff54bd7dac027b540c2e44e834885ddf4901ae918ec26723
Date: Sat, 14 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773465293
