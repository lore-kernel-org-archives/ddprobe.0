Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE631372
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751098194; cv=none; b=iok69tPxixMze9kyFBh18gvTzO86IWbd18kPm5Jahp1THmnYE+6USBzhfncy/5vM0AKr4u0wDwZB4dLXX+oTgK9xUFT6a/c0k+uaJ9l5mZCxZkAORh8zISK/1uu4mWj5Sje5PScgQF/EUGg8PPqcoPmqHRW4kkCilAb6/b1gfDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751098194; c=relaxed/simple;
	bh=S85BeGMoyT/ywxpIoU5Hl4SR2xu0ArB5BxXPkTbKaKk=;
	h=To:Subject:From:Message-Id:Date; b=MEvpqF9Ke8HyhWmw6Ie1Fe7VCVL3h354ZI42vNoYn/kP4wy13sXJjlbf4H4nzwf9f/bKnPIuAvYzZYJLw8qzE4xRy4xMClJ2lifZBnzT9TEHeG4X2PrKySa4++esBs9MQDsfNjSOEVXlsyd/45H+9f1/lEWP69Bk4tk0OzFGL9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POZjdYes; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POZjdYes"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDCCC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751098193;
	bh=S85BeGMoyT/ywxpIoU5Hl4SR2xu0ArB5BxXPkTbKaKk=;
	h=To:Subject:From:Date:From;
	b=POZjdYesc8J45Fx0S42k7tDajL2IwSCZx6mdX2mjGuSwcDIE0r6hkwLOKCe5cA/WN
	 Jnsj0NISsHekWqeqWcqP2y0/KhgygzQsmgnCAXdP1kfolYH7eCXr4hfVGXP6Bv6fxz
	 J2EXrNHtZtqvEO6pkwvmfCB79XnmnxlzeXb0/E72HFS8CmL/c4SgAMdZxHl4I2jrFS
	 Gov4fSlRjOQOau+KvEOxmgJik98zNv17TYxBKtiE85l5lNRF344WiW/WRVVsarwKA/
	 2nZzUdYZfa4CvQj+c0GEC8FmsPdbAFDVSUvlPd4c7lU52VDKX8Lt3A41iEI0UFhUVy
	 /+cjwORUzZECw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C10C7EE32
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175109819358.796.7384951500072630479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a37dfc326f00c7625b0c92136afafe85396fb1695790ec337bdf892a79bdf24e
Date: Sat, 28 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751098193
