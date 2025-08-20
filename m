Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3E52765D1
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755715194; cv=none; b=Lm7XqplUUTXsXUxrPDnQRdWFZu2DdGD+l8OZFrK0SM4HlGo7MnTPQnIYS2e5CFdJCCb/VI4Pd+OmYdzGih5EFv+KgvWRYTU2o6VBGj7tmuB6Xs+caetVIbr3nCebiQcgvBJNGrxcYuIeJFl2l8VBSWGbcQeTFBaT7fRPSKao+KU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755715194; c=relaxed/simple;
	bh=vDZoi5P5mT8ysluFUg/9AAiHGUOTOS95UpfmAXJaoTs=;
	h=To:Subject:From:Message-Id:Date; b=QhdLp9E7Ih5KbUl/5YD2cMG2xZ5usTkRtRo5VWFZXagXdDTdqB0EECLIDkdbXrY9xcTudfqg3XO75xJYdRAWvpgMstHWsQJ/JoXE+30b++j6+MTtn16qIW+94HN/4GhxkchI9ZnqDhkWSNgFhEjvGWy1ka8hl/Zr0jkoA2kvd5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzgcMN3y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzgcMN3y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFC9C113D0
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755715193;
	bh=vDZoi5P5mT8ysluFUg/9AAiHGUOTOS95UpfmAXJaoTs=;
	h=To:Subject:From:Date:From;
	b=KzgcMN3y3yDONODoD+qKStLGvXmZLBccRZUeOx1luF/d03u2m7lKKelt8uZlQjQhT
	 n5Gdv3j4zwsXhus1bHyHwPcE/zYvXKXw0LBA8wgs/c1/jpLtVRvA35nTHGq35ctJK1
	 T/epN6/q+WUNKJYcVKZe+lXtxZhACqecKoE03GHq7stOdHdypTRzHtYZIMpJadPOdb
	 1eAtFvpxiHCJ7R8iLSSWVUtEbuGSqqdSVT/7lfKjOav3zCIfgunsNnuNKmIvzq3fSC
	 eWwpLc1pa5roQY1GVvdoBmxhMOGN2/PF0qBz0YC4UBxEhm5RV1fUFvrNxVWVlWU5Mq
	 eyUd06mif98jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901B5CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175571519358.16462.17336523035073911906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e30a46250bf51c56f6eb4bfe41499ef681bf77d801cf5289d5684bc91cd82fb6
Date: Wed, 20 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755715193
