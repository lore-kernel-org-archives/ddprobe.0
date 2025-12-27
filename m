Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D01419B5B1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766874834; cv=none; b=Xdbdm+GlkMNRkgSdYtj/584xOkwpekFueynhE6o3Lj8mhoxfJHFltTto5f8cN8hh96Mz1bdcEwkJVC0byezbMbdtmivhe+2SE/LOPox3CERwN03j0OJwHBE81peMk416elTvACSxIfed1ZOh//Gujo+i618MdIN5nv4wimt4x3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766874834; c=relaxed/simple;
	bh=zuvBBrFWR+7y9iMFSCC3xFuiQF7cDqV/HiQxS9yTz4k=;
	h=To:Subject:From:Message-Id:Date; b=JPQj4teBEdgbuTAVlqNFvy9fPsDzYJhUcRlkorDMgvkcUXobevz2OakamyejGYhUlXpoljx91Q/bmTdqZq7O1KgNxGglzlWIYn/m1SuWL1bXJrhKETwc50du64VkRyGMUERtu5GQxPtpq3LXb55RTqLREZU+o+v06lEmHkyi0LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHXYJP3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHXYJP3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D1DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766874833;
	bh=zuvBBrFWR+7y9iMFSCC3xFuiQF7cDqV/HiQxS9yTz4k=;
	h=To:Subject:From:Date:From;
	b=LHXYJP3Qbv8ZPkhX7Ka0rU5iurul2IrXTKidfECcJyFyGwwnAxWXkUAMLy6jQGE4F
	 aDFiPYxA5KuWSTxyOcaP7m3/yaxS/X/TfZFBUmpK8oyZF19CNbleSRPMZTo/yvq6Iy
	 DvxO9V35P47mo8+yhhyOcuTyyZu2FXk0fyJCuYDcQKSRKnLO0H8pzY57rA5XhYVOTk
	 DoWroyG5VPYbMRqGItNQ4fJvQ+QvZ2wCGoVJM+zA1RBhantUNqm38FWem3BC7SpQQD
	 NOEDrGU5KcrG8ZF6euXtaSQp6Ic62ChcUjKWrE2im4bQtZl1Irt3IlwTrjmT1/djLI
	 T2HU1PAJvE1Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6DD0E92716
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176687483364.19888.12025941248508818773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d1b19aa3ff4d6dc12f6c3473aebadd904956e6af2e54023f60881e5c4cee729
Date: Sat, 27 Dec 2025 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766874833
