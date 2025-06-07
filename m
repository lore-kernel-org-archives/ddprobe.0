Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DE41EE033
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749325194; cv=none; b=kzU3tqgAPd/G3vyO8jLGC8l7s8zNaxZzhmCIZfNwWOwdcfU2grEVyANFuD5t1ZQqcYuNmOtoUbcYQKli7XO4jtiYAF4AwgjFJyqlwU2ppUnUkzNf1Iek4y4NR2yHmNFufGpQIBaPcPK5xWRalD9wUYJoFsvLQY0XYO2ZU3HdP4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749325194; c=relaxed/simple;
	bh=K2yQgwVzlR6wI6kRjKVxkRiJBNMbHpH/NKH+mCpLcvs=;
	h=To:Subject:From:Message-Id:Date; b=G+OCuGM4Qwx5F5WpeeaDC8Ek+Gzx0V1/fWWVKyDc4g5WPTks0qZeLgIGW1uYe1qfwXshOIOQ4Sw6JLncJgz4M5HkfOZvzkYrfJM2B8sQFB+hq+u3uY2cHNeIT/KGFbUH/FunYTNgKfqRExYimi9BB7TVFsEU0AWZ4usSYjYc9+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bq6sBKbV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bq6sBKbV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74F8C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749325193;
	bh=K2yQgwVzlR6wI6kRjKVxkRiJBNMbHpH/NKH+mCpLcvs=;
	h=To:Subject:From:Date:From;
	b=Bq6sBKbV+ZA3WVFUKmxcbllJQNRNJrtq9RoDSGnKO82RsZxPzOTCi7YRex+8DAvoS
	 H9+Ggsz2EHhWQwNoJSFmkHpe7kl7UAEv+4XfElhiNbebIiX3t8AiN2v1pZ7zXWllT3
	 /fh2PNIVh4e/2fqoub/rOWnGsEz/ERWthfGl241SsrvWuXh0C2GdZnf9fl3ZKw3FAg
	 7Km5ApqhRl1V/IAg7FVIWkw85Fzk/WYrJSvTp4KSO3FPSFIrIzHIvgkKGvk2cBsjVO
	 RyTEoE958S3q2FEziPVDxuNlvUnmeHIEvPxbp+VMV2Y2IFyVeV2kFGaVlUKi3Gkr37
	 9ASBcQTZuYwBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915E9C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174932519357.2045.2087701641658417543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1586ad7a2c1ef71e30481985e06d691223026aa88779a0c654018475e85d5f4
Date: Sat, 07 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749325193
