Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DD91F5820
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759176594; cv=none; b=vD9tD9D7McCeldFlXGGjLCMsQhhv4S+a3HDfOK3WQ3llSx/eqrxvdd2Ktd6DX7069orhaj9DIAdePOLrmSdD203KSzZ/xPWfH8dFVkaG+GPxH+wzlHJVeRHjBFF+Ly3ogQlZCFc+PF6vCHfxAWz4jbIDjxU9ukHJX8bNuyfCTgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759176594; c=relaxed/simple;
	bh=mqAJXH9U6CCDRnOeW0UHqnkw7QmvVwZhZU3PrqOKKqM=;
	h=To:Subject:From:Message-Id:Date; b=CUG0FdxQGXMxM0c34nhLv+7XbwCQQmHMX6F+6GnP/Niz/81x3x135cM/qJycfIcpRBppjm8qyyxr2h0bY+DSfxcEMCQkgzzi99jhlu+akd8Yl70S4M3H2IESflvOUINXmoy5oi6aw+522S+wWgrLHdZ/ccejwZxuedpkBNLB1RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o9mW7ber; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9mW7ber"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9103C113D0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759176593;
	bh=mqAJXH9U6CCDRnOeW0UHqnkw7QmvVwZhZU3PrqOKKqM=;
	h=To:Subject:From:Date:From;
	b=o9mW7berhfV/UJNfiZQWLLNUqDVrM+JS0DOH05NMqkGz39h5dDeLN63LibS97RY6W
	 PWIn/ozUyn1QVVBb4JBj60HvqgI0vGHfaxRrX2Y4PT2swEMIdz40BKEHyoaSX/F0pT
	 JOJdWj9fszl7/H5c0zDPgh0ajAhg/V9NqGzMxsu8J7o18TJd3XhM0Qvg4QhelpAgrM
	 6snL23e+vmqdlyt6rf3POPOM2PfLB82UzRbztepMuCgKH0jfLhmxpKjbKVIloSXWgg
	 i7w0qkoP/Ylcy3Gew5ktR8Fqx7oW6oWUYQUyv2HYHz0PYosCevBGO39aTqZYlpnAkN
	 07+jdcH2ETImg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF5CCAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175917659362.11318.7123969814289416254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffc164eb8d74965d3536dd79d1da0f5d7983a2d996bf5660e53a38c904a4fba0
Date: Mon, 29 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759176593
