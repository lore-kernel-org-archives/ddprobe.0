Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4810A2D73B3
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 18:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763490114; cv=none; b=RjVqejB1vNa43ad/oSGI/K1p/DfYtFsO6mrPejfQrSisIUBmydfSnvEWb6zyr1lLZjed6BpyFqm+VImIGwDRHtsuoOmAAywTjOcG4eHdoJSUvw8ohy4Ypkbt3c34v813DUiaVL5G9EOVhxDCUSZoKbzIK3T550XvBOpyTc/IOFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763490114; c=relaxed/simple;
	bh=d3Ew3YNLFiBrpEya+7g0DIaBGtKZpK1VhgZ5MEaU8O0=;
	h=To:Subject:From:Message-Id:Date; b=Ve7cHdwHfjJpyGDccUEgKd3zAGMpL0/w37ebxWJJBorhqquWNMNbkvrT36PoS1XjwiWlZIH433VOAO0hPIOVBNcNLDBGX9rZFmuB/O1uHbjxG2THt/OSo5vyeTIzeRXXhIkSoMS2HSr9T/XF4DqgKf5JEREWJMPVBtAq3zOKvEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPqm5waT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPqm5waT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7632C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 18:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763490113;
	bh=d3Ew3YNLFiBrpEya+7g0DIaBGtKZpK1VhgZ5MEaU8O0=;
	h=To:Subject:From:Date:From;
	b=lPqm5waTYSafUsQjoxR/TOd/i6tX/SjrGdePmkZV6qOzNBUZjKDcIiw2vZWjaVRSr
	 EskC0Rk+df/SvR4vW4C4Ff/O9q5QiMyIdAvnVrlw9nn6wEcR1ger3l78XDj3kHJ7r5
	 ms9J0K98SB/DAtDToJN1ImUa+gkxw7EG0/rOYD9JAk7vLEoOyO5Xyr5L9n2aEeW2f0
	 SfK+v27EfQwRwyxmCTCG4toOcs8ALEBnYiY7PU1kbdhHyVwa8xV4DJNjkzWBefXkL+
	 ibaSzNaM5nsW3oTLu1Lvpn1gaEUQIwEZ1qQDQ0BZTc3Nr0xbc0gnTbWRwMX00q0aDe
	 OhXNvUS1Qw28Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EA3CEE347
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 18:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176349011358.32745.7324124339106554145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c5134e9af12e600fef4bc7d96a1a80859a4a1ff366e4d60b68a87fc8e164e1
Date: Tue, 18 Nov 2025 18:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763490113
