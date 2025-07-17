Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C31E84A3E
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752722994; cv=none; b=e+RWWio79CGV+6uIad82oOz2p1RrF3vZRwN+gz+uyJgNXp1a+UG9JqQnvAoJWJROEiEsIlS/u7wqlVJ4eH1JjJLK4/l1/5WPPPGkSHLRXiPhCvaFo+7xXcyzoauknUn8jQ90jFbdzNuqLlW5NsjqsfjEXxJWMCROwUnS3PZ/xdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752722994; c=relaxed/simple;
	bh=PRShNNpLoaeHx5pjirujMYaP11eo+m03qa721QV/lRY=;
	h=To:Subject:From:Message-Id:Date; b=JOpScbBHNucKbq40lDv/56E8dxxAFsHKm+zA2sMGZG8ZnIDED8CHRu0K8IRNFid/cyo7BBLj4qS03UBSQtxjciy/Z+kZerzVQX8LujafswT//HucVEwUOR4+vY1fxW9JLbTtLuZsiJQ8BBKel7Gf6qDVJSoO+4SPQlIpkmTzQCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9vFJ3ke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9vFJ3ke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89AFC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752722993;
	bh=PRShNNpLoaeHx5pjirujMYaP11eo+m03qa721QV/lRY=;
	h=To:Subject:From:Date:From;
	b=g9vFJ3keQB9yBJdpG0jXijtLAKufRz08NRPIeV8/Nzbj928Ei6053LqKcfuKQ1J4E
	 UzSxFg32DfCBwih6nbw8nicb0J+aB1ix1zZ0Hh6JUZ8TnVoW4aWvRPSAfGmB/q8IAz
	 WCKFSABXFBiGFPadRomboMPtf1MNFSE2SwR8T6V708vyV0TY4oF+2jPCPDpH7zbg7u
	 B4C9uGwEJkDAQCMI3dk2w8m9cjsv+qSxkMmMnd6MPl+fR4hBd4ytZn/H/wHSe5S/L8
	 SYjuMjCiUHpfIQ+AnOcb+/HmNnLnkzFottVc62CYBu+lft4IPw8uHln+/YpaeWJw4r
	 p2uYegqZ+E70Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9558FC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175272299359.23592.4054285588688216130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb0dc7a68e4308d746a19d4a5f27106c179e6bd369e8ccf48cb7d6c380c476ae
Date: Thu, 17 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752722993
