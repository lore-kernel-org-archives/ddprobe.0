Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD8F393DF2
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755818396; cv=none; b=O7lLeH67ICmHFhMes+FchdkwipAXC96etzds+euUviA7LlwqPWDbaWlLVnnbYxn7EoHB+xUG5r4c1QsXOhPmAZ4jEtlErVN6JirtSAPK7psHlKYqGhWaj6T8xAtH8B8aeTcFYepgJ7jZJ+Bo/T1UAFxatylWmIILKXMp33mS0h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755818396; c=relaxed/simple;
	bh=wWzj8cLCU6m2fV9l9sj9dmcut/4WeyznVJDHY9qu7lI=;
	h=To:Subject:From:Message-Id:Date; b=fH4efdV0IHDcJCdQdQCGvO4qtZbrTV6XP7z/uIxJAdopDernTux4RcG9hpmWkwZQqrs3P15PC3Qx2ERlUibiM/DKf9JDxCk4g6Nb5GNR5Eq3vHam00yMe4ax3G6ZQAf4gz/94aIsq1ZfyfJrKKFTLyEB1ZgLMoXtXYtgj+fRrVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZW7GJVrx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZW7GJVrx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18C6C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755818393;
	bh=wWzj8cLCU6m2fV9l9sj9dmcut/4WeyznVJDHY9qu7lI=;
	h=To:Subject:From:Date:From;
	b=ZW7GJVrxTXwRVMw76ofuCT6fF8pfp1uAK3uR26/YeEak+j5Ogpa1qQJ2B3F7qJh91
	 Xd1rILBx2IPxFspmSQAGUadP8zJae64WDawIEfqRdtt3iAABlqvZACeXfaeZ7i8N9s
	 hV52SDXUt7J4p7qA4Jyw/OeUySbWNSD6rL3f3Gq9EUhNyJdUFHFODYhtDth+Juh/6f
	 OhxUjFKZV8N73yEIl716c/aEoIci0qccMxtYytiJVvABenEtsm7EH69C8OUi2sTYCs
	 VxGsTKBRxa2GvRs2AGvxcrxcJKKczc/brHnj8X3vS+6lRvKqGFW1k3ElEGsT2bYZPw
	 2CDNC/i1U2DQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E954CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175581839357.17859.17713020747633641990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3c8ff296d4958a5007cfa42b10d3e9f6448fbfec2fe733e5177c556505f2698
Date: Thu, 21 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755818393
