Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EFD21E53A
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 21:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713733223; cv=none; b=YYmrsBtTR44lA8Fs4RvbvN2CuNncckNRuup3C9zHILvj+vO1EtkYrhb5WxjX5q1hgFUw5k13er/fpSbO0y5EDb/3VvmRd8jzs0+Fw/4AtGmvAdFZ0EV/ASuohYjN7l97N3w5PaG5dWx1/sWQPqVPUZA/4poG0zmqQVusqZ+S8wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713733223; c=relaxed/simple;
	bh=rx6yjQY1w9YcWKRYAqg+5zLi/Ek9WNPwP3EapJW5Gm0=;
	h=To:Subject:From:Message-Id:Date; b=CfEReKQ9EyOh1qzyzNBx9D7HaxGTMUC3VNiy4oTlS74D/BOnrjR9MuR6CJvrQ/DS+quI9RcqrTLOXCATQ3ZDuCPsQBLdDFgDYr113A7rFqoxFLsijAk2d1Wlx9gErsMSEhNrAS4Kg9xre2hbGaUvd1Vi3Hkm/J+scn7zC57Q/K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1Skflxd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1Skflxd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE821C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 21:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713733222;
	bh=rx6yjQY1w9YcWKRYAqg+5zLi/Ek9WNPwP3EapJW5Gm0=;
	h=To:Subject:From:Date:From;
	b=V1Skflxdo5aGDTR236apEiW8D1mTh7uDUnvwHyHuyy9Zq4acrwfvnnj/1YC4lxFQN
	 7VBYDD8QcA8v00D1JeA/SHuKMpN4GtTIcxU5wzIGwfmXykMjetcVqkqU6SC5v5ZsO6
	 ihJGt6ryX8eAXz6Npux0Y8a2EQUKK85B94sbfefLjviKNLFR7J2bHa2qLg4d6ehDgG
	 8Mi3UEHoZpBtDExdL7KZewM2Tikda2eTQRSdSeqV59XCuWmditNkQYEn6I2tHyawjN
	 Npbgq4/S/hf9cyiPiiUwZb8BKVRd/lCQhN88VB/EjKAeN5ZR+KTxZIQJPOzEqtdMnZ
	 oEdKCDz51SyQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C25C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 21:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171373322278.21583.9235850032857213054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4482daa5d30693e476ea34d11faa0022392b0e6b1f87f8e126da33110cd16a54
Date: Sun, 21 Apr 2024 21:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713733222
