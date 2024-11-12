Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B53204002
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731376554; cv=none; b=HNhDyYVZ/U7IWZjwrlZSgodkdHzAXQxcWl+Te7N5KeaY6lu+PgQe8bxecmUhWRNTA0mTdc7oKX9TgYjhC6gNHomolmdohh3Cm3u0ndq/aILuFwMkkM00lnAPyi/8/cDDb4c/IvTTLy59vrBt4ribHjoUdJu3hLUNPAoJRBfzRAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731376554; c=relaxed/simple;
	bh=9BpJdpp6J3buAG8Zt34JRJiuWo8q3G7ibRCAHoH7snE=;
	h=To:Subject:From:Message-Id:Date; b=j6l3/iShyfGMxjHZ2Dd6wQlTonnT6j2rF+zbmdfrqdoBhYURQHt36e56OHaGGw1Wn8ysHIYQm4YfCm3MbjkQ697mJf4qGf3jGxdHSyaIlHZFPS9jGcP4FIVuq4ukDnFuOeaaDNhSXwnHhkAs6Yls8kVyK7NVuyIxUjkqkgaHezo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NiU1xOMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NiU1xOMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6492C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731376553;
	bh=9BpJdpp6J3buAG8Zt34JRJiuWo8q3G7ibRCAHoH7snE=;
	h=To:Subject:From:Date:From;
	b=NiU1xOMUol13GdMyzpq95Kg6UVCUydHoU84HNnFmKbZGxcRl3Gc0UVigqe0R0vKBn
	 XqNUqtpbPiGbh+FTHJWUKu3jLws03DWAn6JnDPXdMM84f7C4gv3R+iffiO5gpBxnt+
	 eHaSBCX1wY7abiq+djlo8wrnsrXr10cRumVHEO6i/NhJSEFFlVOPEqXbS+npUatoyz
	 u84NdslREQmCapbANQVJj11uZm72Vnor6wkX1mbjASI96Ye2xk0WO9B44rFaSTCRzF
	 0kN+dl9vyZh5wSXE5eSJT4W7G+v9TRdCfx1ja4KV6HcfODVgmb3sOfQzAbu32+Il4h
	 K4WdxZAPsx9nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95136D41D41
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173137655359.6048.3197031207588344198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51e340b50f44be15eb892c47d5a5b91e95c620961fef3e28483c58dfc7099b1c
Date: Tue, 12 Nov 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731376553
