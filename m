Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8F2C148
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759003794; cv=none; b=KkS++6PtAdT4Am055dc8okPv2A3dW3Hofm7g38KResKDv8ZKiY0Ph34W5Va13lf/GSsXEPFGJTtIC0sVARgEc2ZYxKQEQznSQHYCCbhsLPYwHqpb+oJwQyWeEpsigFzeuOPGDCSklpdQIYDhUQYWwOrCgAeyjedBtCzMNfBS6qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759003794; c=relaxed/simple;
	bh=kY4Gzeyiuqu0Jjryi+xkv4oha/qhZoqHkZPU/nEbT5U=;
	h=To:Subject:From:Message-Id:Date; b=e/Cy67u9fLN1gNwdtrSl6JyuzuniNaad78+W3qYKgQerdfksI695F2LtSshwNthEJEXa9xIc46IwW4z6RMNZ6XBfaGDAcur3HUK7CzHoQDmvbZ6Gd825oSGOaHGPavqxMNDC9bk1XAYkc2ZjwkzRVAOGJcW7d1bYI7ySmrMsl8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUxi2lU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUxi2lU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF26C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759003793;
	bh=kY4Gzeyiuqu0Jjryi+xkv4oha/qhZoqHkZPU/nEbT5U=;
	h=To:Subject:From:Date:From;
	b=sUxi2lU+vzcrYqQ1ujBmmbQebh0I05LoDnmiBa95SIW675CyOF7pg+qjb+K6yvl69
	 K9EfjbC4a9zxyURAwLD9sVHONGwzfK6GBrgcA8YjRXCThKIEUWjLZTPZky53CqWbE0
	 gOWw9yk7/cBTcpgwKP5VsWBPnyTt7iHFqb+3QnlDb9Nk9yl12pAemNiFnTasQIUmfO
	 XrLxEqTqowxVFY2WEyAhTYd0lJntNfth+7qRIRbFbIm2sSFmRO3PRu2Niwa1OcjFs6
	 PQOr0JFrml9iOHl+9xFToMqOYysnUuM1ouglKqrNSrWNbPMtAiD0fgyp1wKbXh0YNH
	 Rctz2aaMPYEVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95174CAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175900379358.17145.6961189452159123003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29ef2bcdbb2349553625fbac488fb9cc70b72ba1b564ff57f8f066c6ffd2a6ca
Date: Sat, 27 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759003793
