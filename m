Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265FC1C32
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753954194; cv=none; b=pILxxZYD9EAadwk2JUroDfgOKE7t1yEUGw+BwDqKx7Eo0u4QpSqFnOyvMNsbww52Uq2v/CGsUBFDRooYTpQ/ZekxjjZy0w1aYUt62Qo54xlkFpreJVtEkF4PuI0j9nVfOSyWz3w1d+rEvcXbEMmkC6qo+TA/o3gVyya1u7vB7xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753954194; c=relaxed/simple;
	bh=EQZVUJiT5uzrd4Ic0LdZrvn3q2XFWh6wgC4BQJ1VCtY=;
	h=To:Subject:From:Message-Id:Date; b=CgmXqckCC+Md6fXCzwzQzFwzqfMb+B7vXElfS2Z0VTyXZSwmSiaq46JEDoQL8U9HRI9Yd1Wn7uviFz8u/D9GGNUklEJ7cRRxXZwLSOUD0rTOG3eQ7HKVN+PMKCsg/WWG4mPTi/voOxxVITWnDy+U2g2mNvHBcxDPoKS8vg+PTjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DIgT223D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DIgT223D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4D9C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753954193;
	bh=EQZVUJiT5uzrd4Ic0LdZrvn3q2XFWh6wgC4BQJ1VCtY=;
	h=To:Subject:From:Date:From;
	b=DIgT223DiX91EjtrjiAR2Hql8w86zvew2YEuLGyzlGb/uXxhas+rREUIw/nXCA+Ou
	 A3JD32UElB4PqHB1ls5z1i8178iMu68hJDppyz03z9xSl6AcmtXpv1K1fnMlbvrKv4
	 UMMgNeIKx6dCC8W91zxsqOZG8VRt2whsUPFASuD79Bk4LZgaiBNXuphU/lJ0Z0h45y
	 4v1EVkI+ApmFcaJOUzivR3LeerTLcRyRGwt1FbyBTl5JIFgPPi3J86NNjPezyYz9XQ
	 pezfMjo4LwBuNR2WAbLA7j8kbZdVzHPbFlJwc03b6MDBCnf5NRyNWaLZFFpqjvR4xb
	 SyBCr4BZFRAAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7E7C83F17
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175395419357.12109.5981408934508149001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02fa56be9ba23aaad159f14227594639a44373591bfb33e7776fc2c35ad65601
Date: Thu, 31 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753954193
