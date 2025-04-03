Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C252063F5
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743713996; cv=none; b=uhjs4XWAKDkMHEMYA3omejTpQRzDVvQDxGN5Vhx9dL6qh1Inoh9zhEiAY/Esoe0PeqsCzbxrOwAzlwSWXPE3kmP3vQjofmUuEdmVDdK2eLo40WDpmcRbfK8rzDurW5l22iG7zEOolvf6fA9svAxao3HG++rxBgjdSCqXRHxJA5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743713996; c=relaxed/simple;
	bh=i313rK5W58GxSlCPINbdq8hCnu37wZ/EdDwXyCVJi/4=;
	h=To:Subject:From:Message-Id:Date; b=O1QZpWfaRQUleT6cTcujrbW/LgWJxLcdcxMd63cIDKk0PZLds7CkUfhaUTNy1B2fSWVmBGLR1VJXFTS/UhuyyklKGOmZqznSXbB5hFpHsvFIGSY2Y0anA3oiwKKzMZHNizl4UCDk+LARMIIp4iMdLsTA8lXjBM9JkUV5TPNwFEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iURO2PKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iURO2PKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA21C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743713993;
	bh=i313rK5W58GxSlCPINbdq8hCnu37wZ/EdDwXyCVJi/4=;
	h=To:Subject:From:Date:From;
	b=iURO2PKZ8h+2uQ10CyNYHnw/Mdb6mG1B9AzEV3q4EShq5E4LwPegz60+XLvZL+/x7
	 vX72oMvioVbBoLKt3oHxo5FUqkTDYrkS+BffNA6t+xb3getAniCenZvn41RPDaIxke
	 Gpxakz3u7E6yW3zTF2xO60LhorlrsDMashYqLc11Kmjw5WDLoyUN0/EeidZVfPHmd+
	 niopwFAWfXlU13695l7jTMRgSI9h9/M9EsDP5mj+rm/RkGXWW5fAsivaWKt9kul0qK
	 AS31MRNsKZHmxMKJCl09FXD+hjERH763iUc0dQ50rKmMj9IDrziuWe4TOQFWa2X+ra
	 0MSyFue+VOX5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B52EBC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174371399372.13485.11319253431711769077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9da9a14b5e2120d5f1114ef67961b6aee38d14ac1d70ca60b918dbac0bfa29c6
Date: Thu, 03 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743713993
