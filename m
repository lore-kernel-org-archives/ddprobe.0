Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7C2288525
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749226794; cv=none; b=U9R0Aou0OhjbuvDhrgFOIMalZuF+K7EZBwKoFUfbNbcHq860B9mgMPCQ0J7tx5LOUALhbSdGm202mz4cSv7X6PUOlOnbXCwYn+x4m6WCyY1vPVIJZ1rvsyHpkRrq69xlC5778qNIiWeVt6zIdBaCjv5W5+/3aB33UAcBh38KAic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749226794; c=relaxed/simple;
	bh=xh28DaZmz+txyUT6YPni95UstUR9vubYB6nzywtENT4=;
	h=To:Subject:From:Message-Id:Date; b=Ym69L46sxtMhDGqrCyBDYWHUyVmS19ONGjKLZy/1nY9A63uhmZF2yuogNcwfR71tXs4UDFKDIE5byy9AiunBTbYS2HECOokVpy2yrsGNTqHb6VvtH95DJQc7WaAtdbjZxGOSC7C51eiKovr9uMuEe/nEpbI4KTUNKjg07/ckkZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgTPeRnb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgTPeRnb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14DEC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749226793;
	bh=xh28DaZmz+txyUT6YPni95UstUR9vubYB6nzywtENT4=;
	h=To:Subject:From:Date:From;
	b=lgTPeRnbPwxB6xTHErvp48qSBlQE5z89cmJhrcmY8WwkOlO3m9Y3s1kGhe3t126zU
	 nAUF2PTvBxwWO8IO8yq7kyf5rCPjv7bGvySU9HWpaYT6tsYze9P7iWxkWceabZ1mda
	 9QimGbD1ZTRuNjUKnq61/g534l77EYbZDuXJ+jbVF+GM0IhqrNHecnhq2yFUGSsyjQ
	 yxdRytRf7veC+UaIZc0ZeYIGYCwDvDudDPMHV1SH6uFxkntpi1G6Yd6UQS+NmfLeKl
	 H5p1AAwVEegexM+Fo19LMIDQ/ZMGe2282W9ClF/64XmGrFomq6o3hv+5LWfkdweJJg
	 99wfA4EIXjW7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F40BC61CE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174922679357.8146.10272878701670592642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 393a4e0a11ec840643da6e0988ea9f842a7cc3f4c68e53ab74df0de551ef0d4c
Date: Fri, 06 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749226793
