Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F072F260E
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772104494; cv=none; b=l2GuUxCvt6ZJNeRzcHSVT9pL+fC9UKsQzft8NcnyRJ5NsON/vk3mcBRpvgvVyFNiELdPEqk6QMccUrdgciiSzNSMQlA+EbPWw7cti8cvonpc50S5Ubn86pRNCNJUyDYn/T9p/KekpZemVhzlFv/wVuM3UzpntD/ALtfTFGCLmxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772104494; c=relaxed/simple;
	bh=sxZ7suFiOyAGDsAPYgL+scyi6gesHSeg2LXHBJQiYLA=;
	h=To:Subject:From:Message-Id:Date; b=O9817p9yrKT3FmtW/QASD8vRAs/FmSwf54oL9LobxuDieD+FQYlvmDMX5DTCbeLb2Fc0H3eki7I1/CEMyO7SKEBZm4rNkM9h8j5o29JWYcUe/x+QZQ3MTx4zJsQ8FxOAitQnWpJILsuS/jC8/KzheIegsIUsJTbo/EOYdkZgh4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRkoPeuw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRkoPeuw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8445C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772104493;
	bh=sxZ7suFiOyAGDsAPYgL+scyi6gesHSeg2LXHBJQiYLA=;
	h=To:Subject:From:Date:From;
	b=LRkoPeuw+NbVjkGIkQkSkpgY5/xLxx2ROfCbLoxRmdkqMiqZVqxe5HQdSv6GAO9F1
	 oBPIjyAWIAMz9VDKHSPTSmHMBpk5DhWk0TvzrQBa5H7Am11tP+Pwz6IsDPS9uLKZN1
	 1STTzir6mq3rfA5KMVfm7EmNhoJ+PLySxzvNQ0SbZwzhnsyTxU78EEFtvuxR9KhW1v
	 w8ScCCw7RpTA7a4Ue3L5/01zimR4gocBYEuAyekxdrvKL3Kcmpro2Fie+vTdyE1ysL
	 re5GrvPY/kurPlIlYtoFNBggxvVUroFgJ2L0vyr8VqI38zEqcqgDd0kA0HRUhYbLxP
	 6XE3PrBM1AakQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918C7FC5930
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177210449358.27388.2053025870033980412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66ce83ba9fd17c7b5f020ec2e500e695ba362f82807878bf7fa01d4114951041
Date: Thu, 26 Feb 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772104493
