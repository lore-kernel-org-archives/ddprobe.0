Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AAF30F53D
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760431194; cv=none; b=p4Q6MDEK1c79TusViQlpha4WBhU5xtYMkz3KyGa3rR7E9ISev8FWvpqStS0skcnBmhih4nmSj6RPWlXajOGx+uIakflgZl485JWA+lcHKDnhCvrH6qCaoUOlBSuL7OX9mPhOBFUU6fvmpAz2c53fEp2P2azrMmm5xrv2aiiM2vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760431194; c=relaxed/simple;
	bh=HjOmyDF3ZIwOxJCPcv4xaKvaZZHfDBetKvEBpg830Ns=;
	h=To:Subject:From:Message-Id:Date; b=YE7LKmZKtzTMACGPJZi1f/1ibH+PqVgR2jMUJpWRLWtxi4Ok39lqKxgMkRU8Lc+rr3GZq1A+dt7dGrpRTxBEJDEsPSJjDYtr00yEJ3yses9klBgAkgX7YApspPq0dN4ZpMx4cr9u+h3ZtbDEnw4ILfA6r/ilXfj+3Rq+6Jrt3x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZ/MEeGW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZ/MEeGW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC29C4CEFE
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760431193;
	bh=HjOmyDF3ZIwOxJCPcv4xaKvaZZHfDBetKvEBpg830Ns=;
	h=To:Subject:From:Date:From;
	b=PZ/MEeGWOX/oM8g4w+rdiCehuIXOCzsqVf6gBwM2wIXClRCRu+9QShWlcXodOVBc0
	 LHgHpa05jRWuj46tLIWa5mFdQsIFUKCYl+Noly0K8wbnGF5dQkZfiwg6J2Rg7j9yKR
	 MXRuJj5i6SO2BRW9G9tl+nlsO2TUa8M5HSGot/won3yhFW1nBtVvrNfTvBMegL1s5P
	 auv5b64h2TzcBBAiFdod+JSbKOLJbbFKSAwRIMcCq5dq5ZGFniD9yl3l93TtmJyyLl
	 DBdU16V8VxdBoKBmBvGbfBDKFFBZ6yo7/XPC0uQyczDEtwk+j6U8Hjbq9HWFpIV2/M
	 bdq7l3kg+zaIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EA5CCD18E
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176043119358.29721.15371263910726877590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1de1dd92b549c4c291a745fd6637c1f069403e9f909f3ea78197522bc07916ea
Date: Tue, 14 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760431193
