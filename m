Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E72D37B014
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778016454; cv=none; b=AV9uWbZkMruC/aQYFu1MgoltnxVd5QkcWRwyQfaMy15V9Y7rC06s9W1G30t3Gv//bO66ySaHifShGVo8MI/y7mqGJxi7cs7IXI9m7YmTzXddMXcwWeP+FYdteWOD5WP3S608pCG5g8xlwcsW/3oZoQexmXjr2nqoM+Ups+VBDkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778016454; c=relaxed/simple;
	bh=kt7jM+Hz43lU+zYssfKnAxeRF4/xPfQXbGmqnioX85E=;
	h=To:Subject:From:Message-Id:Date; b=pL91ycWtb5/Z0LRN4Hicv++uviuUR977WxmQOld2F0nCFSu0Wwb2/8fYFYovy70Yux9RPbmDrxcmUsGyaYEWTFjC2KJ0toZkZB5R2QEhugZDMHUTiEhIxFPA7l2df7XbYLk76wW46iMCFbh7ID37It1cWGzZhvNHaRutajWM1sI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsMnayqM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsMnayqM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEAB4C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778016453;
	bh=kt7jM+Hz43lU+zYssfKnAxeRF4/xPfQXbGmqnioX85E=;
	h=To:Subject:From:Date:From;
	b=jsMnayqMZPOHDpAufJQFdOdU2OQyOazV71TdWQ9X8a1m+K5GoLG6wJVb2Pb6a1beO
	 ooGM+c65i7DmzhX/V8pRTQgju8RsugT4E8GDFPJai2bQGxglHoe/7PefweZE937CEF
	 snrLFuaA3BeVxH8epX8Ipkzm0cRf2xgu1nTamUbiHbHNrTi3mcvCOl8KhB3eFhwQOl
	 rNYMxmyRdgnD6i9DMVAUkrBs777Cd1gDoH91SWhruNj4PbHLgPRY6TJMx+ykupulLP
	 K0obzgDccU8JJXvhdnRD73rFxMY0dsYoRdCQT/c4xsebTOfprYzGy4THHe+UY4NjjS
	 WXsnlVh9DdRyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB72BCD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177801645369.28202.9060465126665597833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d1b6e5e3764432f3e42cee1ffe91944d4506830a4c0159712b20605a508d37
Date: Tue, 05 May 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778016453
