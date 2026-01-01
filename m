Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58910C8CE
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767243834; cv=none; b=rDmL03oBznNyUQ8/T7ZHu6D8Et5vzDAx+rGw0HAlFbjeC3KRVPm6rptKh9ycvJoZbziVvCN46eG04sBBb74M/wqS0UD6CpGKO7BSAxR0KNHYerNawIHdChCxWhxN1Cz9EATWVPuK98EE0C9xRogmSVU/931wdNvLft1l71ia2MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767243834; c=relaxed/simple;
	bh=uAnr2qHy5CRJryGP4zXrzoVL6u6vEr16LREkhB7/73c=;
	h=To:Subject:From:Message-Id:Date; b=Imib72eTMYrz/wZC+2hm+l2jiAK9xzJtkrpFD/CLEKO9yYAaQjazC5pi+bVsKH/Z6jYqb3P8FwsEFsQXAiScf/PPKIWpNVJO1K5Lu2SyOd/WaoE2gLLxHw5XroLWjHB0yftDKmF68eRKqwPh7nX8e2qbFI0lXlnty+HA8tgHQ2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poXR+xo/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poXR+xo/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62EEC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767243833;
	bh=uAnr2qHy5CRJryGP4zXrzoVL6u6vEr16LREkhB7/73c=;
	h=To:Subject:From:Date:From;
	b=poXR+xo/yahDjjeneYPCi+uuToAUgnirV0TE3rP7xdnIx8YnnYZW6todP6WRqgScq
	 OzuD1QUF6E+1iS8Oo3iPYPBf4MWIdgVCiAKxpQkgfd5qZncXNg7z5c5/nUwx/9FVIx
	 x68ldm+x6i9CXykzufao81NVx00gCaPStMVTypjvtoHmGUuVy0FLoHfgToY78x0jS9
	 dQaksFZWfA82AgZ6tUOgDtlzTr/P7DNU70mlakTuwXj26U24n2tLvwGKUm+2CBvXZW
	 eQ0LR2qYmucWEFngvzeKUuAeC2Tw7mj82gZrKRVSViEj3tF5Q8qoXo5jBXT6JcP1jC
	 rD/t8oTEKPWmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EA3E9410C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176724383357.30113.6217404911638216108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27c8abf5e19fe7f282332857f7ad232b51d3466d2260fab67d58080cf5d8bda
Date: Thu, 01 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767243833
