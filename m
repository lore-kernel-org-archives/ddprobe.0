Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165851D5151
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772695494; cv=none; b=VhN93ssnbWOve7S0J4m4CB5CzIdVdGXQhDFN3QnbwSNAxWdKe9gc6kUTYN7DaRtheHDeb4jTfE6MRkoSfEHX15KDyvWWhoU7aLRm2loizFrnlExHZjVdpOAy+6dnpoQICFNXhVfnKbpP74VxxqVAKI9VmD+9NHgchelUjNxlODA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772695494; c=relaxed/simple;
	bh=4jVejamUroqgAJjq4VLLUxq+2f56n6QdcoHTUP/iEYU=;
	h=To:Subject:From:Message-Id:Date; b=ej2emF3hUv1/Gw6gt0x51pNpVwvu0AtKqTlEl5COg2pVphOC5VKcbYRKpAE2MwDmqdDIIvFdkXH27zRdbnb8UuQfa0lSC0W32bvxfYWadV4lNlAa37G6VXlwJyFSHxD14TiZXSfw3X6j5NPZs/14SEZ0IRi8twicWlXKjlK043U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDTggBmH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDTggBmH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B712FC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772695493;
	bh=4jVejamUroqgAJjq4VLLUxq+2f56n6QdcoHTUP/iEYU=;
	h=To:Subject:From:Date:From;
	b=bDTggBmHmRZQOTFFXZ8boHz/YXp6p20Cymrt6t8u1MFmi0l0pVf1J2/iS1Z6+3Mbd
	 Q79HK6svfSQlB9hXGpkGuQcJjQR+cj5/0k3/Z8e6aFLmXFBH4f+WargWm9DoH8tg9K
	 UWzBeRZg++Dyf5b8bxp7uXRrEQdEMyJ6yo5/arrC7sd1mDYTB7A1sXCar7bkRXx974
	 aJTjUw2EGm12Nzej7JHo7r1Xa9aZkDOMRGcX6z/kBEAIgVL1CiwbtbcsWaApu5xGUK
	 zKpyf30FYrnSsBoM+KE7EGOK1g4W4/zG4dfjLSKZv9+CjYtC076vwYoUCAnvDhKCQb
	 dIYRJL9vwlWfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A67EEF313
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177269549365.14149.14952922403198500508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 974e441af3baa9edd8d105676ae96630f3fd639a4e494eca9fc7075c5cee35a1
Date: Thu, 05 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772695493
