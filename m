Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F8530C147
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788094234; cv=none; b=SmNbNtCwMpLM/nkCaI3lHZSgFfvW1Hd3NZhXuDMUs4JgThYaFtPHv7BUueejbNj0KuxXdGw1SbEMAJwXzY+mOScGkj448VABwgTatpUi2Sy2vQEwBgJhcTHYibaCWhw7XD0t3YqwRKmZ9vdGvl3ekG4gwuAvKLzEoorsJsW30zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788094234; c=relaxed/simple;
	bh=IznZlgslhOWH2N/Vumqz5zPAI/u/0uoNuz9vBKLlBkI=;
	h=To:Subject:From:Message-Id:Date; b=l4tiEV/k2NExd5EIafKeDog4Js8J0Evs7EkMeGUVif1KsVQy6R2BkgBtm6rxud0qM60BmqS8zbaX4b1d1i6e6WIDPekP2UlmNT+K0gVdSHMBzP3kPQwKCTor4VijKpFMAqU7fnJir4M8jLiafhpChiDBkcrYkwKqf88OmZxGi/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJ1k77S0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJ1k77S0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BDCC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788094233;
	bh=IznZlgslhOWH2N/Vumqz5zPAI/u/0uoNuz9vBKLlBkI=;
	h=To:Subject:From:Date:From;
	b=oJ1k77S02pSTTXa3z23Z9Ms9tGjOP2V6/2EKiiVkXyuM+8BSrw15Jxjs7yZkINPCv
	 2nYOT4TiFiClbU6AQgbkz0yQvBssaWiV3O0DDDwLSmutSX/DEmN+Ioq2N2oV1TKF4l
	 3jFj0u6fX+z8YGPzWkTLJRVEeBIqHp6UtLrGxlWl4yr6RTpnhS8eUJM7Wp9590BQKd
	 UeX7rX+sr7/DY4RT+36An6SaTAMbZtxOd1CWqo9ckbkY/SleMgsn1lbOlrmnPYpE77
	 UccbIWG+TqBVL9/yA9wDLzIY/edmgIWO00SIFL3WGrjx6GaQGEuUPIAfMpXRWfoFcs
	 IyimMBQussbCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF6EC61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178809423369.17042.14709431652409936958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d070475a80ed4d7ac4815c8632a19e9f5f224365bf9dba05ea48304f6bfb035
Date: Sun, 30 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788094233
