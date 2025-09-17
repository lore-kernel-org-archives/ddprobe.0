Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F73419049B
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758073194; cv=none; b=rvxLnvvb+6JX93+eRMJXui8W5WhJX1peghq0+Fi4lsau1gHXaCgVDCHJaT4maAbjK54lQfAOgsryFLVMyEHXICw/2gKPVk8UAhlT/viNwEMz4B4YeIVXM731yyiQ7AFpeRgVXSroI7sKGm0Gu5MNa5BRPKtN975KFRgqcHHAw00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758073194; c=relaxed/simple;
	bh=7ZtQ6IBaCTtLnKZWCbjwKdL/6wrztRCD8K/OuaUaWQs=;
	h=To:Subject:From:Message-Id:Date; b=enmOpGusnp39jpLNerLB+b74IR0+6KnS0VASzpPkTrzGqm77tNyW20V/zGfbLuLK7JD2PjJ8xLG6vqjBpeJFfGyxrsn3sZ7wtXjOPXp9XHkG5+o6Q20hb/bxhgAosB/t1g8SDZyCzW8vl/+GIKI+FIGU5x8FRI/rZ1uQLC78R2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hOm/tV+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hOm/tV+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E051C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758073193;
	bh=7ZtQ6IBaCTtLnKZWCbjwKdL/6wrztRCD8K/OuaUaWQs=;
	h=To:Subject:From:Date:From;
	b=hOm/tV+XH0I2VOylPGrgOUEOPTBXmKwdsmP7qXeZjUkVj0iTXoEN8x6yLNNso9AMG
	 +dFYwCo5spwCefNNqkJrBVa5m/E7jxlqznU3OJhHmEkZw7asMSx091VUsYthA4NZJD
	 +9Jmmbg7vx3Mbtnqa5Vd8NuymByVsgfuJJoltNwvv7jQsZBkg0PKsokXlpYHICTD9+
	 WXsFKZ7pNzLXTDs8eFubjC3X1T3bJcgRWoJddrEllnC2Z6o435K7jDcsXcC5Bi8sXF
	 s8hNZq7e4L4vZYYoC7IYoyLrgVRsc1Is9PCSKj2jmoWCvy4vuWY+rvKflbe5kuix9F
	 9cGbFRu16SMEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF30CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175807319357.15921.7658323181299159847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85a999ee8eb03395401033a6ac7e95237326efb5ff0dc47127a6b7ce1d8eaa11
Date: Wed, 17 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758073193
