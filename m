Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6A11411CE
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 14:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713364163; cv=none; b=sS8xUW2ignVIs+1NO4SD6B6Hex3R2wEBwggH+g3xDfa2JPTdL8M5JMB1lly2crrNJs3ToWUMn6PAxF76GBSYjEg7dYR71DByaDDZ5E0gbQVAak8ZgBCvdfOadW/N4dMwIn1170Jq8Lda3P165iQN5gKQ9MbVCYf1Vm/RMBpUb6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713364163; c=relaxed/simple;
	bh=n6MTs797FiItLTMf2hjLmiuXQQiRblGd6u/xtnfPDX8=;
	h=To:Subject:From:Message-Id:Date; b=KZQ4M1W4i55W2FCM9x190vEPSs0eC0gjC6kpwgrgeDvPLayUAlK/xpZ9kKEn9gAPng1D9Qs5D6Wbf1OAiIqeocdEdjRS4KamsGxQmPiRryi9Xz6DAbGriYiFEsczN/Po78ftuGOBJvqzT6ucjfm4GWD4XaEK5z/6kPCoHJ0rRwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HiO38R6V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HiO38R6V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECBD7C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 14:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713364163;
	bh=n6MTs797FiItLTMf2hjLmiuXQQiRblGd6u/xtnfPDX8=;
	h=To:Subject:From:Date:From;
	b=HiO38R6VZTHuSyeoanjIh48hmLKoXsPXhW3P3Im22i8KYWOE7F6sUbAnhH9LqVvzq
	 PXH7pU8HgdfIr1yW4D1KwLVwoqM89TZzqXOUlW5rE4Dz9iItihST+1QwkwtgnIYMq9
	 6IwB0bI0/zFzAF65aSbI7q8uVznKuUwIyh+Js319NTcCxloPMotiwLQFMTPculq3p0
	 ZalC0qNLp8wVou5hlDz7Au9+rHqH6hinqQb6gg6YOS4hK2HbrsNCtFzUdZpMSqykjz
	 nhT1rn+WVOuKDtj3196rlkXVUwlCtReUXB2VI0L5c6SNDA+y8W5oI3bxkm9dsWKfCG
	 fBxdIgBt11NFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0372C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 14:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171336416284.26298.6211716778326576979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15e9360791c10f250871b16d2afeac42dea8616dac2c7f7ba421545c70bb1191
Date: Wed, 17 Apr 2024 14:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713364162
