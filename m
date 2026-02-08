Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143E4202979
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770536634; cv=none; b=ahyziGFEDz/V0CH57hnOIpaRjLftPxmCJ0UPhzCxxu8sATmfcJW82iohL+wpGHzsMm6+5935Sn8dP0drzvY/9Ha+E88UNa2qfR8+miY1g9FyWG2yBtydvtdvg3Z6yz9xhWRGG2DZiFja8lb0tmgVxhiG5V2K/W1Mz+i1umpyoS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770536634; c=relaxed/simple;
	bh=z5rGeK8Ft9j8O2LnhNHhKEDknkoo28bhWvWjBRvrvbQ=;
	h=To:Subject:From:Message-Id:Date; b=mv0uX2JoWFDQdnUFq2L8lySBvmYpSQV3mXUQ5l77hr8BehGBrZZZd2Ch/DTqULOClT6O1GXDx3BVlRkLM86QQwiS4jfiRGLlsyyzpRjc9GmDS2gpg1B66zNjb0yf2NlkEg+lRderkdc8B9+ajmypaYf1LA2Dv42ny7WrXQsLvtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8nPk57s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8nPk57s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D5CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770536633;
	bh=z5rGeK8Ft9j8O2LnhNHhKEDknkoo28bhWvWjBRvrvbQ=;
	h=To:Subject:From:Date:From;
	b=r8nPk57ss6uNHDaFLTFGE5Ajb4i4vH0d7YW91wUv8eD/Z75tX+6grbV2s6coJyFPh
	 KfU3F7ZYSGUU2AI1dPN1nRaJ66CZdo3aYaW6qE3F/uRStMR/0J8wENldkTKrdSvWhB
	 seDKuEsLMtbb5IF/PFgp4HjDxq73f4MgmpjOS+rEPOz6z5gbvwChiJYEL28TZ87HRM
	 thcc5UPVaNAzhGDIgujx/k+KD9NibIDnMRHP4E2QXR/5ts/JUC9432JDCBTStfqZxG
	 QNlRcx66X5rCCopnVG6K8QsnCWlL4BYTnbaO4iw/047fVCqsOxHdD8iMopNJmmPYjJ
	 HiQz2B6QZLGXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3D3EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177053663360.13706.16609231033360127995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eb220685f0e5c718618bbb0cf534559fb13ba9f3c5c4b8a80bb34ab071838c5
Date: Sun, 08 Feb 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770536633
