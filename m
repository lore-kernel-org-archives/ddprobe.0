Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220978F5C
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727940954; cv=none; b=niD8qS81zZ94JJ9sXvT1Dh9lFfhG+QTHEfEzS8aqTD5LIzsqWlMSBNEaZHutmxDeha6skIrgWVUMcKWxWRvKDio7BBFpIvF4KUkaqzGkKitCD9onU5HUZjTQ/9Pce/ocSoDwZ7ofIKvjeNfq1O4XggTSrXTSdhUJsizhyu7lOXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727940954; c=relaxed/simple;
	bh=omKll3i393m//mydq+1cFwH3Dk6WM4sf+8lKuXAHHZ0=;
	h=To:Subject:From:Message-Id:Date; b=M7Mwwk9FXHQssEyiG57aKELZu8pY4rW1Z+aXuG8OvctYb8YV8kGsssFLNQH16YU0FxhkVEH7m+51ZgwQJs8609YkbcMnPFQT7q+bQTV5w9Cwj3w+pIKFi9UcuQoYs3Fw0qaJFUJ304jiROx/nScXg5129aYVDGkrh5R27JAEtTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVqGNh0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVqGNh0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD7EC4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727940953;
	bh=omKll3i393m//mydq+1cFwH3Dk6WM4sf+8lKuXAHHZ0=;
	h=To:Subject:From:Date:From;
	b=fVqGNh0uLU2IoNoo8Z9p52YEONnyw89cL7LlXRVeHD8ShnwQ6ptYQAdLJrLqzboZj
	 eJOa89tn5f0xRa/sBNk7xmu5rmS+MWNpqZ7TGBiLwP3iLBItlFJgLvVzDDGnfKyLXx
	 x8lhyugI/hOADopLLUQWYUUiKx3vsBB7zUW/qQx1K75BGlmuUw2GA1EWMJ2DTR3j98
	 0m/cB9axK8T/ZIHYioZiuiPg8z3oTQ/un0XsG0FZ0sEkyEfuP9rhkw/Be1YAgk3ZlR
	 hI2dGh8kgQB0Rv/nc3JWFeyvp7IMcpGIsXFPiSsIAW2cWs9Uj7I9ayeXEfj1FTt2Ux
	 0OGFCRqVLH5Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90986CF855F
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172794095358.4467.17389210196919891846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22937c69a6b6c19c1b95c118db4446980d81f7f6df34619c3d8a204d01c58c07
Date: Thu, 03 Oct 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727940953
