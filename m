Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489342D0602
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790384434; cv=none; b=UHmY3lvUTrOdlImVKlKiZqMB+DV7MwC/AV5hn+++21YO/Vxyy26ZkU67JG83AyNN1lmjiCnToGpX6ZrHaIxnNZj9zqmZvTiS1+MEQtvmW71wjD0CmMFhtkGpQ+Rj049/Woirn8QNOJmzHO/iuL94644JOZcLrMFAg5KQDq8U86A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790384434; c=relaxed/simple;
	bh=yE2IBVDu8timR1/v8AAi+W5J9O1uqObcM5j5GgT3wi4=;
	h=To:Subject:From:Message-Id:Date; b=mLvFbTp4Ukuc6M2raxeja5K01bwk5awfyVkwOcpGH+30Rjgi7pivwp1x01zrmRg+LeD7lFHWoRluSIhI351TXFER+ByJoI4xzo/EodGJA2ywQiIJ6wtE4CVChMfyRVm58NzBfXvSpVPsGLSmbSq951vCtkm+Vl5L5IWKYrEKjKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7ROHxZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7ROHxZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7466C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790384433;
	bh=yE2IBVDu8timR1/v8AAi+W5J9O1uqObcM5j5GgT3wi4=;
	h=To:Subject:From:Date:From;
	b=T7ROHxZyIjNUMED7LvkAmD7fbfFCN0wNp2aR7OnUQO4bhf5TACWVCJWtuuaixM104
	 bDYiGOe+IIKAKyHh5IGxSNgK/n3prpFSdoxwDxrJCZrXjBEJSzP5oNBse661Ztagn+
	 6ffu1OqRpvwaIqtxhoaGi2ppZHbgZu4uOHq74NCSA93iMXa3Dr9H2yPjIGGBEsRChU
	 MZu2HSUEf9YLU9zdzQVp4/qCan5k30O8m2EQreFHeUvGzWiIF1+PihO1Dq6AFY5F+T
	 c7Rt/Aa6dQbKrhYshRNY2FH+pKJsf7lX76olmsLZ1Vvc+cY3ImKjylMgnUbVAV7Tit
	 ROWPtQZWasjTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5289C9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179038443370.7519.6440871987039747260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 174db80eb9f85ca4ae2cba964d54e7529ae0d0643b2bb3f1eec97af9797f7153
Date: Sat, 26 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790384433
