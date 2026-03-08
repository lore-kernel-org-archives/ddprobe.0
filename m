Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3CF1E505
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773012894; cv=none; b=IIEpAIfKRJ+lmls2uXOqjY+06oT1Lg8+ahakBaNxA6h8lF4jrGmzdQB65M2tJ7KaHa3MGxrOvbTsQkHmZtO9fXYXYLScT2UxKVvrb285OfEl5+ocbhwswvVpyDMBWPCvocPau4yO6cL8t7ZjEgsV4007RVIFd1XtqiGyreig0wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773012894; c=relaxed/simple;
	bh=lM3bC88KYSbOf3Ns3IXW4UoyMKXgxnPAf3nySHjNQ+4=;
	h=To:Subject:From:Message-Id:Date; b=p7p+ZJL6Xc4wHsZLKQKbk02kwtDNfOFprQe8XXhAZs76A8rhJS1d3msll2aRPYEwckMIHcCbf6BOrA5+IGREX6VuyJSA3m0/XBhUg191hhbmy6IFc7jkvH2Sn+5hLyocqKwOIiWusfHntOxi8hCYQ/Aagh5KTxzRqX13Ih0X9Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcdR0cfI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcdR0cfI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF38C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773012893;
	bh=lM3bC88KYSbOf3Ns3IXW4UoyMKXgxnPAf3nySHjNQ+4=;
	h=To:Subject:From:Date:From;
	b=DcdR0cfIY56rdn+aMNs2wpHwJ2PqlVdnf4gfypZcVsHjxtb62Rjx+CK5eCyvbt/Rq
	 NU55aCNln6ooVigOTwat3Hm9vnR6CufZJ/rUOsW7fRSuQ/XDHO3zZDHxooc5yYvNXk
	 KnK4PqbWlSjJ8o2RbQWfhbcLs5U6rQJxHndaUyNIFekWhrg5gTtLclZ8nPh/JbN3AA
	 uyZKGvsJO6FbOJsBmiTg6gx6UsBzy37UsZ2MjUlIaw+Bk9kiXTpDUBcdJWqpSUEWYS
	 cacC1KIBzKa+E79gwecNmYYj2UU6O8CmlYB4kIuxGkEtIrmpb2MihtTQlCIzAhkoMW
	 pnYVKqA3fbTxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EE1EA852F
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177301289357.623.8957727999749309985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84e46cc34d7acc40b23e99d19343e6e59b11b4a707e8630c787915d00b89eb8
Date: Sun, 08 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773012893
