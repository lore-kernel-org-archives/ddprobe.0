Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E556339383
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786459234; cv=none; b=EujhVLL/xA6ZpJ2yXE3bl3ud6zUa82C7Vuomb7QiuqdzzerGxPcEe7lgNtsH9vCR/n/j6WMPmcxcS/PSckWN3uMgkKrUJ2SnUDvHzpQFzPedvmtK0nw3YhCi1mLoozlDKC+yKUclCGdWPlYyYa0t5az/Y7qNLLpxW5m5xqSGMaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786459234; c=relaxed/simple;
	bh=Jr5nqwq5qJlgAUJT4jMUDu3sotbDt3pR9954JL7TT9Q=;
	h=To:Subject:From:Message-Id:Date; b=JvHrXcvp9dvA2cdgBfG2U1qEWEgeYItjK0PN3lJiqQuV1kC4XsQufmlgs9sWFLyZj0ilCLPRY2MG6LxKKN4pzlCUnNH0sgpZndQ5c+/9hZTh5IHF2H5+xCMed+0zwXMgACswnc1Brj1iy2cai/yTGOuBDdLuXF6ALy0fNRe4Vho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VU/Ti9/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VU/Ti9/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5414C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786459233;
	bh=Jr5nqwq5qJlgAUJT4jMUDu3sotbDt3pR9954JL7TT9Q=;
	h=To:Subject:From:Date:From;
	b=VU/Ti9/k1cUxWuhYQ5IntcZV1nxNzktGDBJZ+AxGarOcOubY89XiTxlwgIpvs5tzo
	 oqRxsjVGEKbOHrAISjUyFbm+vNvtiirm94eGN1+F6kcSUWtIQ/WzOuHUlJr4dScU07
	 LBGdK6SILWMEztsoq32I0ZUcHqHgcohrRCfQPWLFNo/8Db7ecA0E6wHaHU1Wj2SdeY
	 78/nWPklv3/1hcV2opg00qsB0cxdB+CASMpYfEShGzyApRpblzivIYQsjZUNI3snIw
	 zObYB4oqYvLLEuwRhNZDdwA1p38BTNomU23XFWMhPaVvCdk1vJVmpf7gpL9Hww3oxt
	 Xb0VdH/CcDB7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF42CC5B56A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178645923370.18030.1972520147363196972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53a339bf4565c8442ab33449c9e53173109fa9062445be571e170da277930dfe
Date: Tue, 11 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786459233
