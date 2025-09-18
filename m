Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299492110
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758238794; cv=none; b=PZwNjXgh5Brf/1I/KJxDt2/PdYJfF7OLP7m6eT19CyN56X1JxtBiDbDwTEpJ+JJ1yTRuphfcUm2zM6te/s21CVXc1fV4sFK+reDDxmKLkbSXnl/Crrv+jSBZNsaDZMXnWGliqZudUu91D1XBskW3IvRcgLGB8rx2haJk/mXhtes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758238794; c=relaxed/simple;
	bh=V75WD+MIFTyPja+StJ7XcLgmSh9uR6o8swnBXRfKtxQ=;
	h=To:Subject:From:Message-Id:Date; b=cF/HUE1jmWmFNvxSTjMkfQbKQw33diBA8/u0EqMyGt1F6Zt7IOvCoW4eDtjqGmMhld/DdcYmwD5jOyE1Wce0JWmh4tgPkNFXpa9vMwGcMXRfrppsxB0KLy1yJumeZGf3H2iH2cOihfqRAm5hAAd3Ix53OUyrZnolL/ENsOP3Eh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXY1FoPF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXY1FoPF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F101C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758238793;
	bh=V75WD+MIFTyPja+StJ7XcLgmSh9uR6o8swnBXRfKtxQ=;
	h=To:Subject:From:Date:From;
	b=JXY1FoPFXolG1okurb/rgYsFcNBwLM0EZQFS6dZLG7IbUQ6BHb+hbdIXzbXeMZ2oP
	 gsCw24thfqq8F3XkTj5c5pBye7RXdW3ZhCh31YkWQ2xBl1pkFHLxsLKh8unjJ9xRz4
	 nZFoPN478nSsc0lyTNy3tuI+6KUUTN2MXquIghjPP4u860vAxSzZuHM5jzpJbep7mS
	 pMbD9u1dTYfxsiWgBi/Tu3CXEpaMKnOuxQ7Nq549EB5fr48oagXqjfKoyYgTASTxxN
	 47PUtGioP8u4R8052gyEFdcdutsZbXgdhIOFwhm5W8dupnmoLTXVDUisF71Q8cp/PX
	 VIgfQ1AUtJmxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D1CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175823879358.13987.5550335204529595542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 260fde275d5c28557ad70ea682c645283b5123fd6c075c717423230c80fd16bd
Date: Thu, 18 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758238793
