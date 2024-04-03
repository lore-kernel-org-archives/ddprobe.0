Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0D7113775D
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712140097; cv=none; b=jdxd6j9JPeGewQ2mt5VZQHMr8dw34YCerDB9tgVIF+zmYyLnqD6Hi02oLC+BhkriJVHuFVQBDxH1HnbY5j/S6JruU1GojYTh6t6PqEvMIqjoRYTlGnGYDAPWGQ2rNjtoBhQfrt329+Bd3xJZjJDb5tejRB/5A9i9darjtUfI+jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712140097; c=relaxed/simple;
	bh=+nlAd2WLdskzQ9oyPmfqjHEVpLykFqY3gtwWSisClwQ=;
	h=To:Subject:From:Message-Id:Date; b=Cws9tqDe80hGwOSWB3HdxZ8Tvt1I5NTV2Twy/3nFGyS7K7t5RNRYtVhQSxVZjNr5SQwN+ehMz4MEqC7LC8kfYZ5Y0mHtbwPSbVHI05tsKwciieIqmReSOzeVdtic+nvqNptuZpZ0trAtV4XzRxRbzwOEW+NVN6IMoN3g2Fzbsxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9HbgPrf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9HbgPrf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D8FC433F1
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712140096;
	bh=+nlAd2WLdskzQ9oyPmfqjHEVpLykFqY3gtwWSisClwQ=;
	h=To:Subject:From:Date:From;
	b=X9HbgPrft/P8TblzoDVFwPjFQRNUsEKC2L9Ku8DxmSUiWExGm41YacDmgpP7KRJ1k
	 rCGBNxRqo4X6Dzdti1BWQSZpQ8lJqTUN0YBJFKSTEPGKLqPNgPHFeCqQhHCOEyqeDe
	 2RCle8kF7ERfLEAz3X9MS6F6gblbz67HCRRnNI7r8lCWNfyl8Uu6M+/WikLJGCiHZ7
	 IdcayiCacSSXbf4f6BAxiGb9HKBFfe421fGIFOQvGGS8HdYsa/CdgpcDUpa5Z82M/o
	 8l3JBk8kNYJxzf8ipA7zzRWZzS7pqnXWD/uB5PJgGR62xEFpiVHLF8GnDqZ/rh31Ev
	 MnzoILQeOeHWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64AF5CD1288
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171214009640.5034.15980834694845597780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdfd69cab53c89647d5b95a76731a79037d262037d64077680c18fdf5e3c4e02
Date: Wed, 03 Apr 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712140096
