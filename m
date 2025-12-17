Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C90B324B09
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765973034; cv=none; b=cTexCXniG8rWs/YYZu4HeCCkPUZdIBfuNKjsm8iJFM8m8miMpQ+9I0p5QN+7vrzONOIZWoZUQNb7dvzpwaFbZ6+TovQ4rQsp+6645QPPIOyzUWlaL8JrL3emxrW4uvPoMSxbrIJTI2mNY2xKMTw6I9WNb8S7qA73ZQAF+RYhe54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765973034; c=relaxed/simple;
	bh=6T3QvFm4NwjVmSAfJpOsglXTbtkgSu19ovUL8c9TnAA=;
	h=To:Subject:From:Message-Id:Date; b=fwbT6WYDtOmP1lXVhHrCjRP2y1yro0FYKnTHwn5yeL37cV91K5ZOD3iA8ISFrmzIG8m3p7ZRtS1NQ9vGAf17FaLLdcB3IHVjnC6QZhXVO8xRKZoa9nGrdujPjAkuFTGo9iq+hq5sKVubOenJQde0G4bpm0mCYKryCyE/gpXwgeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CpX5vl9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CpX5vl9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD610C113D0
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765973033;
	bh=6T3QvFm4NwjVmSAfJpOsglXTbtkgSu19ovUL8c9TnAA=;
	h=To:Subject:From:Date:From;
	b=CpX5vl9TZwY2wbKAdpnn+TW3KqMhzFqltOeyECMlebl6zd1Xdr9JgJk4EWg7HFuhn
	 mgy27ULrwQnh2uvbuAsxydkooO/3irQbQ22YjQ3GdiuS156akeZ+eaP9eyQM2ues91
	 1DwIGTOs9wvMaYndJARoXvhkjF4q4NSJSZjszc2d+LFNRmPp1IvOxRHzowct0y0pB6
	 D5aHgpRmPMkdB6wA7gBqQtCtY3SwHk4MN1PIa7FV0N9ulOA3r8yG888ULkr9b2VRus
	 4ufrlo02zp87Q0dFVsQbUkRwu9YYeou4PMt4K0YeBiQ+OagLQ0hr7LaV/z9di8tWUW
	 zMpdwrjxx7nww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD5AD6554F
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176597303363.28379.3310819794045598353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b51eda872cb2d5b57dc5a0332b1650181abbe825ae2107c390c1998628a5c2f
Date: Wed, 17 Dec 2025 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765973033
