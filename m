Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6D930F542
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758604794; cv=none; b=u6QDPqPDep9s77MBpdayK2oK0oxOUDmXSr+vOZwFW2TWEc7Of9aryzAwpGUjMNlFC921WWEjqjvC4gc//QFtyXj76uGeg4FnQMdYt6aBtjrGkJWsZT0eGZctIe277x5tKfs6P4rbzM6V8TcqatuoaDj+W+cJHsMo0I9UWDbB368=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758604794; c=relaxed/simple;
	bh=7qN8EEXrSp14akKF2unvGckII78dnTxOuZvh/B5riyc=;
	h=To:Subject:From:Message-Id:Date; b=rL6ohVPpJgZD5KD79wffNHkAzeuZ0MbRO1REiDFWuPX+EP2kuHjzwT7uCTrJMK+Jnr3+WmvHWE9vTv8vvU78zJqw5WHOQPQeX3NNF6vSgd10VrtM2jGCsM4wvikwJ5nVmqLVhujuLDp0ykJGynMCk7CVZ8T53u3F+Co3BixzDb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjnnSvf8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjnnSvf8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6487C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758604793;
	bh=7qN8EEXrSp14akKF2unvGckII78dnTxOuZvh/B5riyc=;
	h=To:Subject:From:Date:From;
	b=qjnnSvf8rAv8DzSC7Douyk/HCu4FrOF7e+JC4GR5htgKBFFdZrWxwEzADilLE9upo
	 4wuKX0tkJMYcp2ah1X48X6ls3ToR5ULdmEbFlv9gFI61btJA8ErI7qr53gg1Cqmmcm
	 4nMUgf4uYC3wDP42KWIT7bF2CkaaBWEtWIepmLmJCSGBdLExhWY08MBNoKFiaDsGPC
	 l88wY8odxKDrR9B9Yi69JUeA+1nwFYLEpjJ1x73QoyJ3Y3xE6yozii0sfmoiJ3cXju
	 adxwgXoNSQp3OpYiBIMDXm1qBJHb+sUbm2L/OemY+IqJatwj/umq14xdD24tIBrHYn
	 Y5O04KZE5hqmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957F1CAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175860479357.25833.17911507943319894210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e5b863ab6770aeede31153c1f2d673a357973791b6e25520da36da38335c488
Date: Tue, 23 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758604793
