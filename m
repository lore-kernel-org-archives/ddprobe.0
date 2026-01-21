Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3F323B604
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 21:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769032435; cv=none; b=JsWs5wdn5LYoPHmVg0MA8ywugCs550CK0UiCV7Obq3lIFL6sMdyY+4UCEgKVLKw4uhkD2EuofGs0Rr9aGvrQEmgf1PRLk7Q0WrX5rF5t7UaC66D/VAGQEqV0pX9o7xCpLY/oIHNK0y+SZvu8XHBmZtYngnpEcK+gtsjeSgrQ3ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769032435; c=relaxed/simple;
	bh=uegWAn3QSZO8+wTDaW3Ab+k1oArUgnNmD8PulI2zTiU=;
	h=To:Subject:From:Message-Id:Date; b=uAGDQrt3uN9v68SG6W/wOJPysfEeCF/QxoZL3o5hD8WJPMR7XGcNRZihNDs9bpRhjJ8yWuGc5TgcFyEXYTmQz2et++zib/xTB8g18jIJsjQXecOa1gON8eFdZYLw2IxfRuJVzcE07694wcTXxs1ATGkDPcUM88YNvNbhvyd9o4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hg4nIwIE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hg4nIwIE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFFEC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769032433;
	bh=uegWAn3QSZO8+wTDaW3Ab+k1oArUgnNmD8PulI2zTiU=;
	h=To:Subject:From:Date:From;
	b=Hg4nIwIElX9yAUQcEkX7ImKHiamXx2nIUjHBr7YB18PQSUmavwsPKlhxksTbCTk+O
	 JSFOhxk4j6N4yqtIHShx9X0FENs5xr1tt2J9S1DkilaGE2cq4DUhNCG7zlMrhdAhpC
	 t4hzZ82ZgCzDvRWniccPbMVMsM47ZU7XaNafN9DMkh7U1PEiRQx13ljy5y7arI2dwi
	 af5vSNQdXhu9JiLBrAJC2j7JVyxdGxpnzPKYvx3/qlEAl7SyxJTlWq77IiQasGlyvy
	 y51swJOfvO7OSf/q2d8d/13jqE/TQOYlJPALVMCBhjnCuGH+9vUOaTvvvjWJIuGY+P
	 xtwrkqZPiO8YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEAFC44500
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176903243361.23931.16113525041983293217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 594b016e1747a4f0b99c51c9af008773f6bcf5ca9f93c9cf7bf332fc9a242aa1
Date: Wed, 21 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769032433
