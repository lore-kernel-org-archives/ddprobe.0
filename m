Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D4B4204D
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731461154; cv=none; b=CWSWYfpQtLetpnSshaFsNYTZ+Cfvwnk0vP9xK4DZQRr9f0N6mTBmaxb5mypjJllN2HKquk6BSxw2GCuLgs3vA2PF0ySIz408P8G7bqlgrptyyE3qKxKB6qWcwhMrN7/iu9Ax20vDgoXaUUpZCK4ktf26MfszwIuUXY8COkGVZLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731461154; c=relaxed/simple;
	bh=l6Rhf5Bc4+RbKxDabg7OzkL2SGcn/6IHK/adIEU6vBw=;
	h=To:Subject:From:Message-Id:Date; b=lIn0JOofsHV9YHSSIa8TGSHlNXH4eUR3lg8qbl22nqOml4Nfrg/Z5Y6ukZxBLKkWoRz8iKUssE83z/OQzQlq1K12VlY5TglThy2jCEO9IRJR4eNxtV8LotSWqncmR6pAzH63Yj1hwU5KsHtDpLTxDM+Ok0MJogzCGRDMi7MhFKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9Spto73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9Spto73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A548FC4CED4
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731461153;
	bh=l6Rhf5Bc4+RbKxDabg7OzkL2SGcn/6IHK/adIEU6vBw=;
	h=To:Subject:From:Date:From;
	b=W9Spto73cLbqIWlEOZeWMeVHiaJ+Xsmbg1SmcPEyiOmqcagdoC+JypmjZoDE/oODG
	 fWeMm2kNAPMxBDh+S4fAvxJOtpPuMIXzot3BWjjLsazDYauTKztPkOmZnDCMcQNrXN
	 c8cG4/xTgogf7h/z7w4tLSZnGtttgJWAyqMPB0oGrk5qpBJjWxLuo80mJin3qteBeV
	 oRWJXtFObogOT8Mj4qnmIhhSaiPApPm8Ec49keZT0wUvYD//e5evtLWeBumjCWMyCh
	 FQoKvvDQFKxcEBoT1QzHfVVMqmnrZdccHjvWEEGBZp00wf7sS/0II66BOZOEenHO+L
	 NUZmMzWtzJoKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93989D597C4
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173146115359.14371.3117405088128825659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e84f38d94e896b0aebe2ed5912639469ef0d3ecf6cda09034abee9bb1aa069c9
Date: Wed, 13 Nov 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731461153
