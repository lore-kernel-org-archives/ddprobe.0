Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BD5440682C
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787824834; cv=none; b=XwdWxoC81WCaEDOk4wSHOsCSFemFDGnfI+rc7jhiDrcH7Bb1Btgx2Pn6TajxG9QG7OZGyvfDrNuCFfmT8yBtjGbLB3FiBIRBHzq/0P0fHnza3gM95J70n+ZfpiDEQaH1ZnI6Mfb8/eeh0AFKc+TacABDv7jkoiSA9h3fxD8Rm2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787824834; c=relaxed/simple;
	bh=L+wGqT9maAL7BPycVm4vEpnXTn7OJmcYEOxZ4t93CMM=;
	h=To:Subject:From:Message-Id:Date; b=iogt81RVgbUnfeW7mAyhDQLrJpwLyt1rv50WXN5q8bRRHcY5gQMmog0LNmappAg8d9SpKfj/qVccX6XuYg+Ss2vE6k3zvBk825mxC1YDA2kiVwteMWxTeUZ3MFVpRMSOVZz/e2Z99iegMGltk7ilISqnJoN/ajRJkhS63hudTko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scN/utmR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scN/utmR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA58C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787824833;
	bh=L+wGqT9maAL7BPycVm4vEpnXTn7OJmcYEOxZ4t93CMM=;
	h=To:Subject:From:Date:From;
	b=scN/utmRgDS5sOJ2c+uVFnXbDCUmWt5R3VaSroeMNC8J4YpeQj6J3Ws2IWeusuxGo
	 PPtbqMR+ZgzQT8aJJJV7/boM0A1fKAkppvxpRmxkJ6j70Dsz/QvUT/0AZwD0IrDsvf
	 Bk8nwjYpGnIa80zEBJa2e0Ov9SiQYB8ouzcLKin6hYp+HZ6vhtwdRVYz2luWB6aD3K
	 3ALeSBAJWv0yD+7Wz8VTKKiFioBQuwudJH4YvCCdRsfbU4MLGO7DyKmq49eUb7u0MQ
	 TwhphhLW9SvqoagHHu+BJObuTi1/bBCM8trPMDCK5IaSfV3jI28R9JQ8qF69qwxjwd
	 UVqyccnE0LuaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD6DC61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178782483368.29691.6179754325220437871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efb72660e2cc4cdaef4da25062df2237d543775b2540eecc2aafa0e33bbb6c4c
Date: Thu, 27 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787824833
