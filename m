Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235331DC9B8
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749418194; cv=none; b=dazCl8uo1v9Tf0mo/GIHuIKZ1kzQtgfZMvQP5HSf4SdYwEkoWKUaBYVfzL9FAwRRLwwpsacynzy0a6bW59aQwrQ8B76aonqfm/YlJq30O/R53wyLL4EoW+DZjKrh6y8oK48yt27IjiWUAQf3IBTOMgw0hEi2vdMxgW7PkGcHnls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749418194; c=relaxed/simple;
	bh=j8UUtZ97HErscdbbl7rRD15UNgb/y/giFNj8aYZyQFA=;
	h=To:Subject:From:Message-Id:Date; b=jfv5jxceW3SkLwEB09MhnDQSAru/TkTjzKKrXny9pLGD0uIKAcOVJiZZnAVRFqoduqgqmSLgJw2EtmspG+aXfmMpiCRLr7YQ13ygEL+RY5ykawN0nMF9JleWeggPd9WVO8gj7Yz5EQHbljV0ghjM6bU138emfYTHRTnOWaYjfME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rErPsU86; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rErPsU86"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F873C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749418193;
	bh=j8UUtZ97HErscdbbl7rRD15UNgb/y/giFNj8aYZyQFA=;
	h=To:Subject:From:Date:From;
	b=rErPsU86SLyjOuP/h9vEg2sGCW+4qbw4U9XDjmW0MrwvT2hJ+o2zcDqhQohd9xSbq
	 zqp7naPP5Cnqh5D3rKHjLKWTst2dGBull/43coCnRRT8CF3VWvUWvd64Yiwcc8kler
	 u88/znbq16D7UsdKaVFYKUyD+bhSAFQa/l7UBRFjNLVUK7EPH7Z8rB0azdzWaCl6AV
	 sQob7taMDCzsYa0U6tAUAxPDmi59AohUgal5uNMUdx5fpAadtHYh1885KzYH+6NH8y
	 PoThnqV1RFN5ldftjctizikQxWoj3/PnLcMO37vxFS1nKU9JnUzuVT+toU9anpJpRs
	 Aw9lRydtkQdbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E085C5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174941819357.7992.3891424949918595067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11c87fa70e9dc04f2ccaed8a42b1c64d3f5884a472fe35232131b90dec167739
Date: Sun, 08 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749418193
