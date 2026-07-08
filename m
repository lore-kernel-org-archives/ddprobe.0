Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E4F43DA2D
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 12:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783513714; cv=none; b=La8kTradQTSCyOzqwAjeNd3U7fbu6SFLB5QkLeCM2qJ6FuvmIFR3G5YwWKeJDyZ92S9n6fBCinDaRhYosaDKw1XQT11WU3FjC8hkjyhntTqJbvG+cSsvBQPP5wid14s4YDfBgTiRiE7A0QfTIotuvuq7PAlpMalfOy1CtgEaCug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783513714; c=relaxed/simple;
	bh=VJaxfOtGuy0Vii7pY+7QklfkYt9QvAUiwWZu91dAPDM=;
	h=To:Subject:From:Message-Id:Date; b=CuKUw3t7FGk2bbDhMqkQGM1L+zM7kaFWfp2wVsoBIRig75YYVsnoUngW7ZnM7r7ypk4yHsVHtS8mQsgtbjsO8IYet8N5J3DW0RCOAjsFP+puEHt6cjTHUdd+mYwg2XUpCn+Dt/xI/UYgOMGmeNfoW5M4t3de0azhefFtfA2tfWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uprocIWp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uprocIWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC06AC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783513713;
	bh=VJaxfOtGuy0Vii7pY+7QklfkYt9QvAUiwWZu91dAPDM=;
	h=To:Subject:From:Date:From;
	b=uprocIWpQcNlj7hPfZUICTxIBSMZYUW9DlddcK0ASdZ8wo/xoqnIUOANL5MvyFcpM
	 /Ir9lYdd84ps0S0KlRZjLlZkalgP1jPQrw/62lnmrIFM7CCUyX4X0gj/Fao/iU+Ky4
	 Qjj0O7j3u6Mq2x3swm92t+y0p5vFpU+zs+pi1WTtzLcKI9lAXO90KULmH+4hwLPzIP
	 kRvNKwronl3R8ioJcBXVdEiactedhktscDASu6+Qbesw5v0MnJnkBpTnimdlv3M385
	 l82RCcAcN/pAL6n/xE2XQ1+RgDvR4rlDc56vxKIV6OOHUCgyfrqz0cTJ2G/LRRBct0
	 Zj0jKOcKTO57w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A972FC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178351371368.31877.3391392724982877037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4168b8f1acb00d4735d30a88c66c7889d8b5e60478b11e025b63bf4265e35fbf
Date: Wed, 08 Jul 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783513713
