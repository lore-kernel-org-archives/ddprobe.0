Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05BE5175A63
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773197694; cv=none; b=l4YFK/bkUnbh8CaANbu/C/eYivFrjEoSEg/BFFyOOEccf9qjubO9uVRMuKnYSz9xkjLrCtJrHL5TgQgPEymUjebXqaE7xi97w6/o3JnTYUhX2tSPxtwc6KE4nuV2YUY2Wyk+SX21wjdZw3Ap4pRHTKOO6PxmQz5eWvj0KmlFpJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773197694; c=relaxed/simple;
	bh=HU86BDA7CZ7qadO+IbRC9e6DCSBfwa2TVOiUUy4FEds=;
	h=To:Subject:From:Message-Id:Date; b=GBoaR6iyoS+yWQOvGbOSge5gjqvmB55Rf3dZwWhTs3K/waJkaVbRgnFV8YK2PROV/klE6wTYdyEQ+muFrrdlOPuGTAR7cdq9dDjXWu18W1FmU1zXTKmGMFD03uKHW9QmfITUh5XHSaFu2MevAnH+EZFv1J0AZmVJP2ZC9cGs3v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCo7CL8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCo7CL8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3663C19423
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773197693;
	bh=HU86BDA7CZ7qadO+IbRC9e6DCSBfwa2TVOiUUy4FEds=;
	h=To:Subject:From:Date:From;
	b=jCo7CL8Iv5JB3MbsqDBUz7o8yGz9LxLnU5d0bYVDxaUpaySRyHbugTSqVri73kDv4
	 VZRWWkSk6KTdbhJRhFSTZtaFtfOV1WOT6GPfFKRJ0Raq/TPlhcRV45EHE2Hkk//qAz
	 4gLQXZbfQmTvFwPapF5qTif8cwNmkn1mudAA+ilBkJ87suVcoZbr0l/px9g0ijrvBt
	 4eMu7iaEZypi208C6Ii4ssFuYDpUyOYDXocn62OBSl7TIzYo2nqWHmKlGIwp2dSGnv
	 OV5Gk4nAigtiW+DcmfiHACoyB7Q4XFo3mZ6R9/5nkHVdDNoqiHyMbxps9LeKUwH/kJ
	 ISBw8xymNsSOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD90FD88DF
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177319769358.9200.918468433931831571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10496ed6f3c2bfb46c2970fd9eb85fd8205a8691d914b4191a0fa48af985cc42
Date: Wed, 11 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773197693
