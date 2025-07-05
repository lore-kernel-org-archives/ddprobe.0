Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3D3AD4B
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751693994; cv=none; b=ZF2kmfJCVzObrltvM6BTW50veGDC0CcsaIKJvLgav/LJ6f9oJsDSZ97/pFOTkc70/FV0urULKZ1miW2nnEJBh8pNxTzS2plQuAJKyAWtHJV9IRWZHmXyTakecgghwUvmjb6Vubbllw/hJavlu7YHI60kXZU0CEixEbLi9zejpBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751693994; c=relaxed/simple;
	bh=o5Uz1eNz2bPPfo2kE0i33CW3tZbrrT+/Fh4GjlcaAUs=;
	h=To:Subject:From:Message-Id:Date; b=JsFCoDGIo0dVlrRQnKsWStJEZXJluxrtY/lOGD+y8F32bBtJjZl4Bl9EZviM9xKuS/WMr3aQeiCejU5w1qI261MTVDIXstmokPynR9P8jJ65rLOd0Q7pVNvcN+t/LAYOM0NiYeHTjUXwMdBAAMHFLX35ds8y0VFG7UmjUo4/J3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBj1UVX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBj1UVX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A96C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751693993;
	bh=o5Uz1eNz2bPPfo2kE0i33CW3tZbrrT+/Fh4GjlcaAUs=;
	h=To:Subject:From:Date:From;
	b=HBj1UVX50NxLGndq1a+v64Qe1wyb2kxEtEIfdJnb8LfHA6dXxE4XqmqL4uUWccgkZ
	 B8uCb2tyYCDWGTeUj690CgP4se7psFw02P8BVRi0Sb5b4QYJelGP7bTi4a/9LOsFWf
	 pXRCwWsdTAlpLpO/VRt6iHyf1lHvx2iiltP1I0qcMsPZ9hAdxGcvpY4P1dY7Lur53U
	 todGOLQ3aIZJsNHuLmTqgsXp1Q3muAexGbJ2cJWigVc+zYkWVl90Juxo2W/TtsJGGX
	 KEE7GbCz9wwXa+/aLSmN51NUkisG4k7lzOJGv86O96NiwSwHVpnov4EPPNzvMqEyIM
	 cXwPsO6ePHWxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915F8C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175169399357.21581.10711734506846446549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 561b8cbea37dfeecc4eaf38b124b115b830b50006026ca8f35bfb4c3b08b9ff7
Date: Sat, 05 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751693993
