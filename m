Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA081A01BE
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 10:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783161514; cv=none; b=OpC6i1S4XkKQNRQ+4MDAoqXFkuue9J/h8o2iu1pxdOawlgOyt4CIA9MUzP34/gV7nRvCDZBOCpRGAf49qup2OCxrtDIaxKmGZHMRMRTYb5Vv0tRLaI7Ju+kAwbpe8iIkwODs4D66lhX4E5iG/RvZN0eclCXQegXpaw1ULljzpko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783161514; c=relaxed/simple;
	bh=Olo1kuXRc6f60YBpKBos1djCJrhzBSVBG8/HBDp94O8=;
	h=To:Subject:From:Message-Id:Date; b=AHELXleMGgS0QauujRWLRfCypRPaZ1WRqBN55cGaVaIZBTi2ORBIJjz89Dg2vFrWHPSN5/B6E292eKCOkLaMYj+F3ULBImAeEuGBDIMq2WMTJclOSO9sqx7Qnxa7BfiRLHYxRil7UP/4Tvh6uDV2Nu+ZCisaTwK2bjP7TsXHo3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMMqO6XV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMMqO6XV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B72C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783161513;
	bh=Olo1kuXRc6f60YBpKBos1djCJrhzBSVBG8/HBDp94O8=;
	h=To:Subject:From:Date:From;
	b=FMMqO6XVTfQfg4ifZr18xeXFpIM8U5RgFYSqw070EifO38nCC5azezmUzUw6cwfOY
	 WkUNXmVgdBInDbPgELGbx9IuvdJvKoYeTqU7/ZweYMw5ouH/yjSQVTO/6Kehy4eMcI
	 EUSO2eZ9Tr5aF/xtap6x/9SejO+buu9BGx1cQn0WAG7BDRl/Huv8IvdYX7ZL8z5z0X
	 /qjLH4sADMY2KGYQ449a2XzzEvANISqp6tvxZApEunet4Qa1fTTpn3ppDbETcrFqVH
	 vk1XhDJ22XxOIGQ2osvsghYdOlEK8YISDSinNoK6XCkwYjdZfts4e2+iwC3eux3fnq
	 Up8gTj5SQo3VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EAEC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178316151368.11237.9564460730597978858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7564bdc2822ea1b6c0e7a247326cfd390280e74ced427f04b8cf539e15fc676c
Date: Sat, 04 Jul 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783161513
