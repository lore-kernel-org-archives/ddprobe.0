Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E80219EB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757884196; cv=none; b=WUtLubZHGYdVuf1JPhFRBq4xgmlxAmnQm3i1INqFoZIdkL1ILCWtTS4jxcFEcWF5DeNa9pnK4JAvGu6p0jiSiQxzIrADepaaFnDqrNrtV6Rhs6Xw5NwpmDr9bH/eJmz0zyh4182q/rJj1DWbRdDLxAk60jvOyEF6JiZgnLkHrgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757884196; c=relaxed/simple;
	bh=NqeTe8io34GzixX/WAULiSl4+r5Ie45CEnX7Oc0y9Jc=;
	h=To:Subject:From:Message-Id:Date; b=PTMD0FYYZrw1THqsggQHnpst/VaDTlbNJjHA3GXs2hASRTku4AIkb47tQJLzHv3Zn5S/c2l1w+9a0H+h5f1RsPYm4JWYAPN2hwwr3ims5rWlXf94MSkbwqQXClgcuyFwhr4XBeYWgXrOWoSkii7dRUegfWJ0FYZQ5r06jGJNZ08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fi3Bk5EM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fi3Bk5EM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A2AC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757884193;
	bh=NqeTe8io34GzixX/WAULiSl4+r5Ie45CEnX7Oc0y9Jc=;
	h=To:Subject:From:Date:From;
	b=fi3Bk5EM5EGuYsm+uluNmVLrPYzrUZAhPhDVdLmF4lvYU8OfJ7tsVoajo20nJZMGQ
	 jh7wYZ9QYYVZUTMo4YvE9C7T4bx00Xe3FyWUT6q0VU/AsALXDTHhFqUsGd6J1R1KYa
	 t4GA+mNeZraWPdXTo929qLSdngiOuEMQwTQM4SC4LEmmAywm1cTTYUIqI5NnOQEjtR
	 ijoyTU+KGWBgpr7U8nVfkFCqtetdsi2vxlrdnTbI6NBeS2GmnrrYnr6Ud3Jzz3PxFm
	 MlsjADfnrncZGPH8TRc/ASkr+u5FSb0ogyjLuvXzufhE3xZwMiYyIiw7oWd3OkjNHt
	 rcRWP36jnEN6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E965CAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175788419357.24718.15766589787707377256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08fd3be97633a0314460c0fd6acedb4a8039bb7d4370175274f38c39b59b7b59
Date: Sun, 14 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757884193
