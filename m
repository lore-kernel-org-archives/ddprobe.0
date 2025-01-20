Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF14EC0
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737334554; cv=none; b=W52KjySPH4m6Hj6dA6u3wJnH7CQN0NLCngkx8SWDEAVSxX+ab2cGD+AdQugm9zfLbh2aJo3eCkg3+pEQTFJdNMXXttCpqBC5l+K8R4D+GOqypdF8x9KMNnto41e8AHoV+l5Kq03b1I70HGD1kMywSU1xL8H6AnLs1Q5YgeCrLLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737334554; c=relaxed/simple;
	bh=W/UGGkMyIHhDpa+6iRpk/37qXapzREBtQO06Rpm8di8=;
	h=To:Subject:From:Message-Id:Date; b=iLOYQ1QubJbOu5MhOmx67xcOSKMUmxWdS/pUQlBOBW/1TqxBGZmVPONxbEzBTd0vSRXz9vDejzOFStsiPxoEhZVtNh3bmS4wP7VIlIi/NfAodnJj87hfGZVu7aDEAt3wF5ZDO9YM646LQKFn+wRMqCzKvEZly6G5QKc7an5GOoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0C5EbjQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0C5EbjQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AA2C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737334553;
	bh=W/UGGkMyIHhDpa+6iRpk/37qXapzREBtQO06Rpm8di8=;
	h=To:Subject:From:Date:From;
	b=S0C5EbjQI1gsbXDYDm+JusNBYUTnCZDMmV2CLx7TDjJjtZWt0ApbibzeZlPd3Wqh9
	 FooNXx/zcg5vB2t4R/EVYxaDqKwf1VW2IiHe7ePKq4bcsAMbTqOw2K3v7vwoCapQLV
	 43jYrnnOlF4Z3Exv6y9z0a1snZecfvfkGt5r+nxyutESogPdFZys+fB1RAqCB8ZZK2
	 h65pRhRC9vGm2O22oxNsIjtzjFfjeBRN3gJFJr/CG4mFdHWPES7qsAPIon8/z9qz1k
	 Gt5YwsJufN6ji5iotIW9lYNef7E/cON9iz1KgxV+1ERZn6rqSGML0YekzYxefoL695
	 0Z1IwmtsLPd/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F885C02188
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173733455358.26699.15360036519042455807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6d591d6b1f752016a7f6df8501cfbd02a70649d12a6d1f7c9b9b14df0a8c7ed
Date: Mon, 20 Jan 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737334553
