Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1168B33BBB1
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773733494; cv=none; b=WdaA1UDqrc71LdHoW4q2xCcVvTigpqND4/M2S536/r3drWsi0W5YQQUTNi1rKUPqTqNn1GFoGbTcPfBUGpyu9OuTwSwPBil71x/9nzCz8SE9EOxAiTNZLVrPaPDHJ1B4KZ9ml+lgE7ZOh6JY0Bl/kpiAbwsGgRB6TRsy3AV34VY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773733494; c=relaxed/simple;
	bh=FvsQtbJ8xQGxVp0YPXTVbGBkPMF3unkljAwUy6/8KvU=;
	h=To:Subject:From:Message-Id:Date; b=aNRVBaHsWBSIOfwfeIrn1sUtvC0wp6drnXM2cfWz9GEFlMYx6wUCqyRp5f4Mxo8Gd5xYjfuFW5oNU/J/g2NJzGtHi6z6eKAnOQ+Y0EOsMMn3yy+GV/oo2L7YrVyPpSJCxR9N1d4xZ3rL9hN82+yE9Xr/07awrpOJsh9ZumEFG+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPg1qq1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPg1qq1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5E3C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773733493;
	bh=FvsQtbJ8xQGxVp0YPXTVbGBkPMF3unkljAwUy6/8KvU=;
	h=To:Subject:From:Date:From;
	b=ZPg1qq1yTxNCP/tbl/j1LOk2+mydfung/0PItPkScG/nOBn6Dxb82vOO0hG8Qlmgv
	 /PNQn1O7ConS4kyKRKNRURvjwd3YYuV38/0zy4AttGVhQzYfhryt3DmioHjPPHgNer
	 wYA+fNVwCWr+aLQYaWl1GupoheYRKGo3mvDP5O+PwiVS6hpoCSna0e8vA1YxNX5ib8
	 JrhWPOnD74ZBFWGaHf6J5tsuAwg+l+c5RjYV8b4zsN3Ep4FpyTejlVU7SGiuGbGz4f
	 LvmcAGxMkmGpGjv6SJNWDpiJJ4R++7a5OOlaueAcdc6ZGKndeeq2j0bK8+T28mgAJw
	 AUGXnk8xsXxpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1D5F3380B
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177373349357.15130.1607579975026558016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2170fb03d8c29745e6d6c47cb66d86064def232575ff95733ed8a0a135ef83aa
Date: Tue, 17 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773733493
