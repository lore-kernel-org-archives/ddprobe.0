Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133A8236A96
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736860554; cv=none; b=llm9cb3T9v00//t4oftE6uEQlfITZ1iDOQkysBY/ZznN0LU3KOhLGH6BfFbm4O3iF/c9yCUAV/Eish7dePzbJFnSWqJoq0YrH1qlkbYCFvDHsrlyCUAgpnlrYOWSpWArQqmss40H8Thj7/Ztylqp/WS9eJYsg99MEdmZV2NNN44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736860554; c=relaxed/simple;
	bh=5IJ5LqBfjCGQ1Aja0H/IGx/Fbd+qZOI4fdMeHrHsGoc=;
	h=To:Subject:From:Message-Id:Date; b=mG0AdLAuHxpxe66e0t7dJJEV5CD6s5H2pNB5b+xMdc1yxTis8sEmaeG22+rBDbwU4mKjmgmPjAIQqrniqOO/jtod5jJazuvDDgrzAxMwDb208zX8AgYo169r8V0VZPhDJMNs4OqP9Cni+cb5LGOCCvLLbUYCtoPmLmEY67dHcNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2s7Wx6n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2s7Wx6n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F70C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736860553;
	bh=5IJ5LqBfjCGQ1Aja0H/IGx/Fbd+qZOI4fdMeHrHsGoc=;
	h=To:Subject:From:Date:From;
	b=a2s7Wx6nshtP1UE87Z9YPbgHvGEh9SfzcsMkNPw1ngT3VMXo+IlJ9mopvmB5RTi6V
	 15dez3eRxEOJMqVidZeLHZIgyJU9g3SpXyl/O82csKiXnxtgkUeqAbxy3CrXp5cwrp
	 L7cWn9c3KaUwCGADzEUez7sWZjDiSR2e2r97DVdWk9Fxkm6tH7fzAuNrPpkoPM76Fu
	 7qgsNbBnLrc9DuOBVQDsPFhVqsPruYOEPSAGK31MITT7Q6EktE0VPBBEpQ3A3fFUV3
	 iq2R8STteCHJSZ7iL2efFcLPDy7FSjALwkzh6Gxe6YxDjRyyF1gagKhFM8gCNrkoJt
	 doVXuI+nYCgRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DEA3E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173686055357.29957.1803422760297069199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 283846a8963f7f33554edbd13e919f163a467c88e014f876bdb982c71be35349
Date: Tue, 14 Jan 2025 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736860553
