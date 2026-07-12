Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2744A0C
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 04:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783829914; cv=none; b=YmZXSKbjI9/ZnGeJi0po634M6D6+BRxvF572tDzNivU+qydgBYLA5Hxc2iVaNUj/7uPvPfI6fQ2rFNC4Xd2ZOiudy3oq8M15wb8wYq363VJosjIXbc9oSExFxCs7BM1Qw9wqiO0nQCEUr2vK9/thh5R1hTd0GKna3S3s56hnOOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783829914; c=relaxed/simple;
	bh=+wO6C/ilcoRPNLnRMb8SExoutCxZPtcsfJTQQdRW14w=;
	h=To:Subject:From:Message-Id:Date; b=dsKtAMLg4HT/3eGfpMBgMW/0fpEAS7uSMF43AVzyoc7LEpG7ZN5q56ZmJiwHwifyucHK0ZMzjHH7g9/by0DRPSSln0yRfd6TX8IwotYM3xKbqK2MQZzLvEfDoajV9NwkeavaWtiSlBuGO2UiqaKGzLxx62pZ8BEV39nvEEbLSoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ev5ZmEI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ev5ZmEI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD232C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 04:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783829913;
	bh=+wO6C/ilcoRPNLnRMb8SExoutCxZPtcsfJTQQdRW14w=;
	h=To:Subject:From:Date:From;
	b=ev5ZmEI94ZzCr7PcEE92XbfWWtBPodYSz5zC21vmwIVqEgUlSeJux8ShzcbY7tQAH
	 0L6ad9q7MznFp23h0c3ghoKarBbdDHDIZCeCtbTrjelIwTmikN5ZIVPu21uNBJYIVn
	 jTQe3ZZBYQc4IhEEdljh5a+zezlH5Gx8AYxi+7cMpgkKkPptvG7Tgym5qbPhG7dyh6
	 Qp3rXsIbrRw7NQuXxQG4KVjUSURAPLl/Y60bmv+mJkPLBSgpdKjsgvj3rxOQ94tWe0
	 D2qx22TWqAU9s20UDlBiCUf+bbLvXumMCI+2G+SrGppoj8+1a0N9EhHPorsHzRc4XU
	 M5xfaZQewj5Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98D0C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 04:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178382991368.5305.16896877471011533848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27fb4c624f50252fa2bd8dd6c9ab90797ca4de1e9ba1b05e1a2b0af55d05bf59
Date: Sun, 12 Jul 2026 04:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783829913
