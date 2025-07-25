Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B421246BB7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753422594; cv=none; b=GIZqSFrYtNbpy5I6yq8VXRpnP2Kg7gSYu5kXNs6BVVUuUrj3fsbfaHzjy5UyCtUGdSd6sd6lQ8t6BS2AuxJSf6QaGQ5qQaw+dqrD+blQ4Z/rdTZSYh970d/CzfvJuPUlN8c97yHE1EvIZxOTqomnyu0dAvNSqBiG/+EbgPn0xkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753422594; c=relaxed/simple;
	bh=Qc01N1gvE5SSG9BjNx1OmkJlPJ5ZKUBoGE7GQ8vUt+o=;
	h=To:Subject:From:Message-Id:Date; b=WgpWpUbcPjG1iSQfZFA3W7KrLqbxhAuZbpAf58Vhblcn66Q09jeZeQTeEkn/jzFcFKNm/Y8Fa9JwgNy4+e0gTwu3Y1LttJTLgWlBgURIef8RpsCmz9RIam3f9jCS11apxCO4+peGAfNbnVX7Mq0eLF2LXLECSK7cIy4z1shiN1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AddSeape; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AddSeape"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AACC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753422593;
	bh=Qc01N1gvE5SSG9BjNx1OmkJlPJ5ZKUBoGE7GQ8vUt+o=;
	h=To:Subject:From:Date:From;
	b=AddSeapeA9S8gl1XFQvlHaMLO/f86+zlJHQ2IGJPJOb7Jo3jgQPZl0Wvf1KUqVZF3
	 gx0His6LwDpxOjdJylt8U7zrOPRNI9kYymNFjfs3H5O681tA/l3JfLZCD0uDp+X9p1
	 nWcd47712tAv7hv64vPuRm1cRMDj/MrHXmyxxvsCuUivsPS8ZfOMeG7Q2FnQxT2BG8
	 d4roMpxe3RdOzAQve0YKahRaHCFNjqjkKNTShW/jrb/qUgyArytOTrIN5cbM8kdU6s
	 NkbFxPmhVsFodgEaKVR2tekoq6JU6aAsDNHaNC46fGhLRcH0Eni3cYmwE25sopTQ7i
	 V1y44Qhyhn+Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9275CC87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175342259357.5464.18157368802684756248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d974d8be3c07aedf2600b848ac6ffec4f286de570cea0d3f2e051b41a93f79d8
Date: Fri, 25 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753422593
