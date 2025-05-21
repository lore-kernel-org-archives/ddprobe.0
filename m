Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4149770805
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747805394; cv=none; b=AXIHujcLHCNk4DwAAiiHp/XL/dF0URcjg7E4lmLdP7wgCKvJV2ADceXI5vamqzJwKxF+A9ffxjqDS3lyJ8xmjVc+MO3MJtIAoq6osDqRQHa9zT+MU+aDkFz9eLj3TqEKGa7n0hJkirutJeplh7tjU4O420UL01NSAWd72dVclIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747805394; c=relaxed/simple;
	bh=LmoIFc0ijAE7sAQD9dIAz9tH2j7emvan4fO/HjSs5nI=;
	h=To:Subject:From:Message-Id:Date; b=OvR3xoiqPed6q19bRCkcJFzp+Va9NDsyP75Pu9xfIo44Kw1Idcs1cLpu/Yhq682+bnF1dd0SfD+4UT/UZJf+CRGHyvP6AwLFNLBYC1YZfrmzQJCRAKly3YvUvuOw9Hg3G5cuR3Z376gM+9MZnVKlfZ+qRUu1+X5tY2TZzuT4Yvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSvPqUBv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSvPqUBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53AAC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747805393;
	bh=LmoIFc0ijAE7sAQD9dIAz9tH2j7emvan4fO/HjSs5nI=;
	h=To:Subject:From:Date:From;
	b=NSvPqUBvKImcPAzcHw4J6pmN7nwN7dRQQbwLveyQJ8PNjiNMNzpTVtQSd64mr7xu8
	 xzROIHiY2SprG9YYsqKKggsce+YH2CdC/+pNcIEvn2A8+P4xr89PUcVemGqkxzpnM3
	 hBowCrsDMb66WyFJyqW1xWRcnT7Dt1id4VJQzA8j149ZudWLnivEUIfbe1paqUAfI7
	 m/2RwvEnA56K9wS4pOdYSlx85KUEPklmeyMPmH2PRtJxEiE9/s7f+9/Rxrh63bCaUS
	 1yiCppWjX2mRrGYo4f9ZcfMxMzEcTaQPcuRC19W9TBE51vLMcoI4XzSTrVLRRCpRrr
	 K0G6UK6X942Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC15C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174780539357.6985.10926511630142462170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b237224995993fc727ac82dd153b55c8cd10f5b4586d3412f7831d17be9aa61
Date: Wed, 21 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747805393
