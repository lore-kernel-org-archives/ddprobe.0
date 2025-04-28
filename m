Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A0515624D
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745816995; cv=none; b=rG4gOFBC3vJEJLu4KIzuGFAtr0pD7fifPrH5D7NI7GQD4oSiOAH2XeTpY/O9ud/zX1UHWm3yKJIwkmxbVYiyVOHk+UvnPYcTrPjlM6EEmSkQGnUY3ju9jNUYsGRyQYfig6scK/dLeZSRsdCerlvAXmREluCxl+xYpixFB8pkZRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745816995; c=relaxed/simple;
	bh=MbnuNQtuMz9DV3qYCbFWPVGF3Zbw8+Vmxc/JyamakOM=;
	h=To:Subject:From:Message-Id:Date; b=nUSyPEcmnnLvjCffi7FQbQIQLtvMKVx04/nYt16vGKwAdayWJG5XkZgJ1r4eiFmAx3ZlAkhAizujfu7z+ukpNEwAGOiJHUqHRbQ0GggeryOaA2OWaHFRr6O5wOsV6m4ZsorDgqTx+RLxfPJAKWE49MHNl3dQth03fletUgoYx6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UidGcn6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UidGcn6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE68AC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745816993;
	bh=MbnuNQtuMz9DV3qYCbFWPVGF3Zbw8+Vmxc/JyamakOM=;
	h=To:Subject:From:Date:From;
	b=UidGcn6xOpxiYjwgkGofhxzL7z4ygAhhQ33Or6DZ7glS9ZfQIGW8xyyZ+93lCPhAc
	 /XM9ACIrAaj2ntOqP1mSefl1/4cPFXzhsjq3BsltK+F02w68BOvOIpjelfGLS4urEb
	 uAir0a6V9WVLClCXXKdKTpAhiqjUOvWULHk2+ZprhcnM97iG4bwRpnCTNkVQYG0gmx
	 rpuZNhrpWPu7KDKAAJo103Zq2HpZ3e2qT3zn13Ec5Gx3jcuUfL+c4XD8r4JNtm8iSC
	 VYEgMO0JkpxpcM4HJwgMnTds3ty2RlUq6NJxnaLND+FQcrg/NJjuK6WM2cFLS/3h5W
	 VV0pp6/2Php8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F01C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174581699368.24602.8465463913535426510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af0111d53ae2a7d568ac3d14a13add82865a642eafaccefc5115e90fc85c8c2
Date: Mon, 28 Apr 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745816993
