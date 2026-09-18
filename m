Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8635364934
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789717834; cv=none; b=Ky3zDyh8cZVYtSNEJs/pgpZJzGCg+IA4WGuviUquITj2eVOZj4FF2/ZQNEGqtNeEhahucjitqs+USvoWL/ALvQMcN/Yk3o/xK3fp1hl9fFM4HsTf96PfUK4VrPJKw3XAp7tSudn/pqJrC76WbMlJXPXzNoxBTyoZCioBXS+CSas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789717834; c=relaxed/simple;
	bh=VhaH4Duto7QnaNzhqRbgS/5+SrnxF7C9Be5eIFTvGvI=;
	h=To:Subject:From:Message-Id:Date; b=Cdra/9beaZpfRJvmsh9ZuSOg/GhHOUlA6wyvY9kYZrmtHmtIAVuorgoQsTIddXdgmzsnd6z60GLzvltL9wIH3hFPzAFgXYVenAQvKAiuxrXwTnMAmp5afg9w3/Mu6LRXQdkndRopmbFCTO+0IYmn/UII+eowLaNNLeliRJ2lAXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocXYYTZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocXYYTZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB32CC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789717833;
	bh=VhaH4Duto7QnaNzhqRbgS/5+SrnxF7C9Be5eIFTvGvI=;
	h=To:Subject:From:Date:From;
	b=ocXYYTZRkY3ccdBxO+8y/gjQdwFWZUhLKZ4RZqge0QyF1KN2kS0nmwZhAg2ypIbXB
	 MY5NcKE0dOmnYd1lbeIJX8KhlkrEIBb4UpwQ42BO/VXnRlo48do3B+/h5w9zAcKzPv
	 mQEy037o4Mi8+74tweoRqeu8p2ztr5ZMWYsGkAXM8XRkE422YB5ABQpLTaUxyDfSeY
	 SpSt/bghqIp//i6aD6XOE5ui9C4n7kZ+ISGJmB/B9XOJ9mAVTR13oteyvp6INNVTrn
	 UoZO76DoQZD0eTePHatX7e0Xu9FQnNF42FMh5OdituZIll0lo6Tl2xf34fwcq5TDdf
	 rFpEC4GLjLiHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B53F0C88E75
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178971783373.12246.10214379753153075210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e11334db0390f844fb91c0e56808894f5a6516b301744b0aea8f1e4f2ad0c3d2
Date: Fri, 18 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789717833
