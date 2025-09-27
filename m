Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4142A1DF742
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759009194; cv=none; b=szdnrc36hVbyGPUMfPbPq9AVmxgStJD7VjG0CvynLxk75J5xI+i2X9dYhYjgOdjam7Iq4D42v2YCl2JGF0IqdRw/ac2gnFhPHEOHaejRBH2NfAetaZqimqp+PILdeisCmKTFK6XiqL14lowThSMawZrGAWiQOYLs9wePtjMD3zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759009194; c=relaxed/simple;
	bh=S0j05CnDlN9TLHFJWUlofFMyCt5JhK4YcRjNmrtr/Uw=;
	h=To:Subject:From:Message-Id:Date; b=cY7ZQDiL7BTBOVp2LvfMAQim+wAgTB6IcmwJ5cehYtbBrOelgsD15yQWmGDDmypOAOxiDxsAzLl27OPqryfYmT1FAQj5lrjYrxkIuIOwyiXL4rWykGGiEhCPRXEz4D1ErVRxpzhfQAIBeHHWvt7WQ3vZlZn9rq8nynh4R2KaKnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CrTcCgbR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CrTcCgbR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1A4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759009193;
	bh=S0j05CnDlN9TLHFJWUlofFMyCt5JhK4YcRjNmrtr/Uw=;
	h=To:Subject:From:Date:From;
	b=CrTcCgbR/emm5RNOjt2dcRhUMFthwNosBosxaPfmlcdvqb9XWAXJEDJnx/ERtTULo
	 1CYVVYoSdTNrBkFGpU7TNHox76YcmHR9FoSqWCI2YBuDLdHScNdyC3x+CDVxiRbbRK
	 7hfGqk/DTg3Fp0OPUdq+lkTxHmUCPUbOtXKHw3UX9Li7i1X8nRC5HFM4+rSrN5rL7B
	 3r6N28FzG4ArZ1y9z/NEXCWHWVWjPW79e22qxt7VW2II2oNhWBea04qVTWURQDjw3D
	 O33gNKJ2hfIXXzWqn7WX0IqFb8SByBGr9kVQMOP/hNC8Lk3Y1f3OWBNmljFo5cb+pB
	 /wNCU8UPbSAZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93546CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175900919358.21571.17651934204079102733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 808c5d4e34fb049a23309f40994790480e3dd9118351a678b62ce28ca888f8d6
Date: Sat, 27 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759009193
