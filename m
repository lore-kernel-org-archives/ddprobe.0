Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C66038FA3
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745134194; cv=none; b=djKxtxjLN0S7Hrt/16olk4hlHTyDY0Xb1UD5/jJGGVK+eqZkxwJQ9DNWz6NDHWEsYVDh7oi32brPbHkhxyGu6AevmRmy/E0PypaO+yd4fCcEKl++L2DPicVyhHKk7ESLBz0QP2g/V51g3RmGb9hM8FxZhQ1R2qn4KAcvJuHJJyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745134194; c=relaxed/simple;
	bh=4ETftZlZdJ9BiUxoNLiE28NmO0jqCierupz47nvvngM=;
	h=To:Subject:From:Message-Id:Date; b=bap3QgrEDOiSRUWpdfNh4B9D3fZ1eeaSXmLyH0qhbjazE8wMr7L+HQbA1VyS+b0H5YaaFN+uxXiQtMZyZ3WBcwuqGkSBxDhd2D06RyL1WWL/FndBS+k1eVqLRN6u5yOXq48FA3KlcTATxS2tLC4iCR13gu7B3jWT/I1mbHd026g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ma6t/Arj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ma6t/Arj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF1BC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745134193;
	bh=4ETftZlZdJ9BiUxoNLiE28NmO0jqCierupz47nvvngM=;
	h=To:Subject:From:Date:From;
	b=ma6t/Arjnep9R0DtwETh8HGVjk1S5oC69KW5PmxTiLnenF61a9biCaLIo9rj0boY9
	 IJbn4KVhDBoqKn6V0phqHYRyECgRDdutKXRiXlSuRznkrrNGEHrLdhC1LacLsVtgwC
	 F7a6Bw20DujGKqDeBMkHDg/Y74AhlNmJrm2czefKu5yjbKyUl/q0drNIWo1O2s6t/Z
	 AreQkD51Uk9KC7cIQYYE6OSCNW9+4T3nnJhIve1QEIBcXgfp8nq6pFsAkjx2rBYukg
	 Vl7n8k80lp3XgJRuJzQMgcF2DB7UyBLuIaMhT5D8fXf43glvScQKEsQUrxVBVW57+M
	 3h/Xw7XbbnTTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E2DC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174513419361.5121.13864043404730600658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeacbfdc46e2528135c90c7fc8e04b872d508132c57829ab81042f9157688943
Date: Sun, 20 Apr 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745134193
