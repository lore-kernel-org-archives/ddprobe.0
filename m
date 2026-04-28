Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A6E83FD12B
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 12:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777379854; cv=none; b=medGOPW4TdevdjJ8oPsKHwQOfObcxqE5dCWKEINocizYdX8CZ5uqga9DI37u09I8rdhEbCMiPq8slIYqH9Elm9H/KBqxzEi2LxX5LxabN3srOKxA/atrpEETDFX2PX10KlRcrpov7Ho6zJ6qqq/XZBCvlaqnQP+ijwPbCd+7XDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777379854; c=relaxed/simple;
	bh=NFVMdJd1iqaJRkNmWADzd46/pEsdZHCDGathZD8+MTw=;
	h=To:Subject:From:Message-Id:Date; b=G3nF5FF45Ja+I1ZJ7LpzH8aneoBGAcFyXJVktM6JS3p+PYLZbJAGSanj+C30KL0RW7xmtwVwFY93QjRqxOpBQrXSWX/CrnHwkBwRSdw540BUf6kiNLY60RxFmPZq+oXj0f4Q6TOVqqesmm+rZgktJkIOJEo2hqhBAw86+LQQOXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=giNEgFuP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="giNEgFuP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB69C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777379853;
	bh=NFVMdJd1iqaJRkNmWADzd46/pEsdZHCDGathZD8+MTw=;
	h=To:Subject:From:Date:From;
	b=giNEgFuPi6Zd1wlZboQvbjC1IVoEqGRgoeSmZIlexDZX7m2RS3/yD2XyiblmL+41G
	 RoNa+KkbzUHrlEpzBPst+AaeU6qJSSHuOqoRI4pDgHRRMk1syWxDPi13OJq0X9VD7n
	 1KRbY8f9bOtV/MaxKp+CoYPM6EJxyoUTuVWCF21oRrSQ39x9wADL8KfhKudFQVPx2X
	 h6NKxkQcP2T5mTnFxxUuXxoZYCw5JkSnG9WHqHAU973/iyJT3yoNMxmYC8TLoCrdQc
	 4NA6fBFQ0tovYQ/8P5/XIjps1PJHn/mUAxNlscwbXHXHfeKh4iw1qeUDvqJQbAc6jq
	 +n3T2jRTFuhcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99EDFF8868
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177737985368.25633.3112233975646504440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2d55cd29bfa6a4818dd97ccf112f50e0cda38a618f67b3e3296406a5f71aecf
Date: Tue, 28 Apr 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777379853
