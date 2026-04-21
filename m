Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A8A145B27
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776736054; cv=none; b=GLHFk14MWvx6Ex/EQKN78b4e7/ErWkpntrhkiYHUXzJJF5aGuHov5toCm2Dv/AIVJySEtp/PLxmSSgI7qKV4OMx3q5QoJdPqPAX0Y/zk02sIah4cGPCqi249IPiIVghpXCdXqN5KaffFoEd64T9VlzZeErnTa6UphFHgZKdoEOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776736054; c=relaxed/simple;
	bh=WdRynHdNXGSzan+5IjMiwfD46vNYU/doKAP4GPc0jm4=;
	h=To:Subject:From:Message-Id:Date; b=CSnKtmBFc82vfqwJT+RE30sPm7ZuwwS/+Vmd11jT15VK4QN/8J0TO32Qo1eE0r1d27jORBxnchQ1wUpnBqQwXoz5tQ2WBE4igS254n0fY20+k6/1R5Tiwf5PLGz0/ntmdaUbXj+G4lSEXolQSMqeA9MYDSm6ZU0IC9fmys2pIqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Esd/RWAR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Esd/RWAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2336C19425
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776736053;
	bh=WdRynHdNXGSzan+5IjMiwfD46vNYU/doKAP4GPc0jm4=;
	h=To:Subject:From:Date:From;
	b=Esd/RWARyrXfEV1BJ97jsFBNa0mrfNR5dHAdzp0G7aOwOs+Inb3yTVP67Y0mVEhjw
	 830jyk/73AGBOtBe9tDv8YYJLJ53JDCu8Yogx443NYHsEoBKXlpBOUU9/6aVQfW9yf
	 IheYvbUAnk2xNQX+2YWxx1FxKBDdqjQTeh4AFYopLx1ROkMLgaFk4Aw4T4dD0EcB4U
	 /22pgtqks1nhafYLwJTImHFiVyooqCo7N7SnZo43XkugZmqVukReyWvvEhiARYyQ9r
	 E7FWJpBRY9Cf8awpnxUjivteBi0t1UllqhiEoVFngnkbGxu90NKN7GFLKms4yKjOF3
	 82VKI4ofBt0Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD729F5A8D3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177673605368.13089.990552749964374338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 908581819fb1bae50c1760c009557855c1484c2904a92c54dae35c062743884a
Date: Tue, 21 Apr 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776736053
