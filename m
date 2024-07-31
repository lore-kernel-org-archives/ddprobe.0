Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AE31A8BEB
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722434154; cv=none; b=trIft6eXcf3FApaJT5Fo45PEiu3vdwI8jMqPG00KIkZn3T7tckd1zv9Y8si2YFJUOyv9mTqMDnJm8rkdItvfF9dsBysF7PFWaipF24a87ftsjbeN4GdW3YKim+aWrCChwgDNp24zy0v+s9p/QjJG6GkEN+y5NeIJFvELZAkG9xA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722434154; c=relaxed/simple;
	bh=QKiyBF1PgvEGZ5IJ2j7gCRrXzvKfd4NLpfKX62T2wQI=;
	h=To:Subject:From:Message-Id:Date; b=XF+fr/hO6WbnT/GnEX4yDojRuD91QCb9OeIMQ7FOsejZPjWTe+DqQBH+xro0Aa8HbVVPLZlynHHEoD7LL2EWo4jsIXHiElq8NE0GYHOqmvReeQm2nQQZ2I1Xmo+mbfh+7dydsZq0ZDgZQyMXSe3CH++N84K1YCdQfCzxpaYOwu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nx6TcR0P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nx6TcR0P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AECC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722434153;
	bh=QKiyBF1PgvEGZ5IJ2j7gCRrXzvKfd4NLpfKX62T2wQI=;
	h=To:Subject:From:Date:From;
	b=nx6TcR0PfKRlue3JnHgz3pj0V34PfCFduKw18Es2ykvGO1vB6GkYxVfzZ7Gy1L80c
	 puubA64LB+dHYDvdCy267NgcltigCq8iBUVXzuDlk3WOwfkREETPZC98RCHYJOTCHm
	 EVeb9AacTm2aO8TVozMjBgpS0FSyiPG6uormG+xLdnBKCOaETylLWG0O5D22tg98Ck
	 Bomao62RH2/aMKJ4X89TTPuSGeJVRtk6FH2Udfy/jhPzVX/rJ1MfxDGiHbbuFm9G2O
	 lVHap0bj690GCIHp/qes2yXaO8lkLpL8mXMML4nBj7uJPzSL7yZP4wva6xNaduHc64
	 qnYtZTBCLO//A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97599C3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172243415360.25613.13483029879021667923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5139419b4e65064e3ba65d381f340c5e9e600e060f17cd66a64a83129cc8561e
Date: Wed, 31 Jul 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722434153
