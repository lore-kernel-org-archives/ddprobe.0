Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3852340E8DA
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 13:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780666474; cv=none; b=RUkLVv1N8W/etUmK6frQIvR+mNc7DmFt4/PMgPt++tIOWznYmJ8VsTyy8XBEo8Ldg1gny1EYfycK9+H/ALMx/vA0rzYTmTy/Yu97cja9mF2K7HkGZubUZwToC4CykVBuRvJVo1Bgglvedc66brfFL+EXehfDfrchUR8njlauyIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780666474; c=relaxed/simple;
	bh=lcv+xj6bxZ0ZCTKV8E/5MlMNmHNSMYttyefot4Pe5ds=;
	h=To:Subject:From:Message-Id:Date; b=oa5ZHVtsgxfqteNpVQ9v5ZFRX9ghqqssXYuOIYF9cL/ItmHODBZK2YsrYNIdByNNaeO+asEh1haaMv1V2mxkJUkem0qEX4GwaC6+W/XNQPNqbPHcQn1LpqZYwRLnoAEQrEkGhDcLNyjH1kvqeUladwM6ahfvCmoL0a8q3EjWmmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxXGDrLP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxXGDrLP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCC0C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 13:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780666473;
	bh=lcv+xj6bxZ0ZCTKV8E/5MlMNmHNSMYttyefot4Pe5ds=;
	h=To:Subject:From:Date:From;
	b=gxXGDrLP/iTP6ic0F6BDrjrZ0bW70LWzKK5in6V6ENfpRMCXHNRLMzge80C0Yahd9
	 PcD+LIfJ836ITuDvPvMX9W5WmmB9dNzw9s2easa+xqwDAwAloby6AF4i6jG1vmIWB1
	 1rxNUZyClaF/15u0cWZFN8s/y0phmbbaysdLpcLeirZIzzBlnRk4A3zEc6wLpiGriv
	 huOr/hHQl+L2sm6KwQCIKQeZCUbmIX+63VG+d/+cnlnJ9gGaz4L/tdxwOJyynwP8vK
	 mPPxUbdwPuLuRKk/zMjuTE9fyGHVQq6+T+akrXRWCshAqq+tiLerDYpF2zC+DdHHC8
	 fl513L9KJnsmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B592CCD6E79
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 13:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178066647371.30272.15999641178726406075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d1f7eb4d930aa01ac44d75603be7ba43437770e4e9f7eb085fd4c68b3a1cea0
Date: Fri, 05 Jun 2026 13:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780666473
