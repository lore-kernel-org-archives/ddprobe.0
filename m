Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DCD1F561D
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748257194; cv=none; b=BQpB6AjEaQjYPrE2yVsuLPW4kLvzFRM5BnwDmbFJ++KNPcqm97hQwJUT518yRBVrQFhze90NZufFQ8CMRD3vh8o+ktlPDFrc8Hj3DobliJVyidpe8RaWcrHC7r6B1TVvPiMO2oJoYGPl3JPOfc1/SeOcgFvtceEj0PSjq6SbpqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748257194; c=relaxed/simple;
	bh=i3cG6PmEtwg5I1RsSx1Oc1Hf5W+k7irg3zqsIfqjd/w=;
	h=To:Subject:From:Message-Id:Date; b=k/jBsEm4zFufFjueH4r/XMycuuBTGILDnHaK5306ezZsRGBsdJnvFHkXWfjONvA3Gj275luX2tKAj440w0YlrbFuxkGDN4GzyFdSlp+6Dpnq4FBUK7igSYYSzaZNjuolZzigDbuyno8dOTiB4Z+ne9ZioHpZn3YnCfR8kQx1hlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Po16/ZYk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Po16/ZYk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E09C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748257193;
	bh=i3cG6PmEtwg5I1RsSx1Oc1Hf5W+k7irg3zqsIfqjd/w=;
	h=To:Subject:From:Date:From;
	b=Po16/ZYk1GHj1BpVtz8kYro6aUFsfKwn9FvnINxfmv9MTRqY7c6dgC6DZA2v6Q3gO
	 Lz7ogUc8p6t25WNHOZjVsZl12E92PBH1Hr3Sj9wBokynM6BEsC4M60MMqkUDxDN0U+
	 NmKIeKQhHHh5Ybr87I58X2pLxo7buEoP2tU3/pbVjmHCp/0JK5q8/u16NAgxPUDmf9
	 qZFSbVa3qgHpmkl9SOLcGkjOfvNFoJdYlXRNv9SAXZwQIMWMGZhJ15dNaXWtkduDwL
	 4dfhwjKJPoSPuhrHkbE39ujJgmq+Hjpe7F2RuO6I03MFpwM3ZLwW9Xkz6PI/UvxBEU
	 Avwokw5IvQu4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDC7C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174825719357.15598.6094571976261650642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7f27ae418705c14ad6efd9f086b9085b8b2c4dc01c2d81b47f1784b429b3ae2
Date: Mon, 26 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748257193
