Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF2046AF08
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 09:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782983314; cv=none; b=fCerSAWpPprMcFT3nPLFh/TQMBwfLw9zcENCs5boAQ5pRyYBORvmDH/nMq6nDGlFfHyAjaD7ULNgsyhucC45OvOsJlW+pHBYMk4pfMweLejLu4HJV6ZIwINWeag09D3kxicN4tNR2fX/R086/3kkStPQnCFuiBpFhlShtS7wuDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782983314; c=relaxed/simple;
	bh=8lVxH3yNL5mIuXwmFgJPM5CaSuZ/RAYn8AnnPASOT1A=;
	h=To:Subject:From:Message-Id:Date; b=LwEwntqyWcQ+Gx3PJQGHBncOmfCHq6BnvgsxDriTOoLMJDZlOtL20DX61aOkoUdVZjYqNdnB1Gl8F4CsJiRpYrGy/bYUY+ypvna6YyvAIm9K2EJAo11CHd5kFVwQ+e0ibZGX4jwiHWaRbCETeqba9yYa65/DVLo8bG47KrdXKnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGnCz7QR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGnCz7QR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB326C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782983313;
	bh=8lVxH3yNL5mIuXwmFgJPM5CaSuZ/RAYn8AnnPASOT1A=;
	h=To:Subject:From:Date:From;
	b=IGnCz7QRtQYpKyGwpAqD074pGyK1FU9HveRwgoxR1fM4Xr4lXIlg+dnhrvKA+QDGV
	 EIxW1Y9VmC9rNfYwDCbs9f2Qv647vkbwb1qjOwkJD0CIku8WM9NHxwrDOm6Pq+g0qf
	 vbbXHtXNr5ZK558hFqLAZlU7XPhr1xVz3gYWwe4RTyVDLwD//dMbl+Y5G9VsG9HddE
	 7OINwXiRiE0Zxb+ZJw/DDcQdNlfDHOUx3tnli+xCkkaLYX+LwvzC7eEK71PzA4XB0D
	 sp8JuaLAQm2oWck/hQR71DOzNXe9kaOZZhX/aTWhN1aGAprEHAhH6YBFvis9jHmOrD
	 /iTEr63aY4Cgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8901C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178298331368.16345.18066548715308601280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb4311e0a6fd98f02bbe1b0017db401786be624e7c55a94479df6be8df70bd5c
Date: Thu, 02 Jul 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782983313
