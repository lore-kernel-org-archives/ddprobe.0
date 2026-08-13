Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E21331203
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786645234; cv=none; b=fBMyd4j0fpoyfNr47cJ/N8hljfjoBg9C/hITix3z5DcNtAuZHRWxJxb0Us2xeWlZ3MvqBEPy3TFEtn9S/ljdPfi7jBh9SKLPmAZ2Vd/itdYOSNV0YFkX1NBClRGpjyN4gatmFfCNzZpe6iPdEVWb46h1bCPIhOhPQGVeqVZIX0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786645234; c=relaxed/simple;
	bh=TgxoCnDjzxdEHt5N7WmZ3RkWKluAR39maw5GYIr5ejw=;
	h=To:Subject:From:Message-Id:Date; b=nIWFK3TcKa8w4ioVOzbbYaNgbN3vjq57OaWObQQ8hXrvjcWNspbb+jPcMFuweWbXJd9bmeO6PeXiSfgenoYUGI7PYfIZzMrz+TQu6gALnaDsW4oDNv9yjrtFCnatI/bBlll9zrWvm24kN4/0T67AB/EGGx/RiOKySznuacFZflk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFsna88z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFsna88z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC323C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786645233;
	bh=TgxoCnDjzxdEHt5N7WmZ3RkWKluAR39maw5GYIr5ejw=;
	h=To:Subject:From:Date:From;
	b=IFsna88zKUgMoxHN8uQekjvNmKDQhRx0bBj+/4wVZsxe6hCpT+ecQcpWisIebI30x
	 KLKPZSmIGVLddAV2XTSaDMrnrNkB29qYJufEymKg2MFE2s60J3ndAHAFpY8Mi4nwWD
	 dczIW4tTd3PRMR0nyhh+cY9GRXBPgNg5nhQ+Nl85aV40pZJLAKtOxf1zYGMCBHfXDW
	 wxBUk1NPr5ZEP8vb4c1gyrWzf1ANS+PPBsaFmqbQvCTITru+fCJBZev0niPP9yJT4M
	 U+SOMSefSYmu5TBXbp/5bKKi/XgnIgKxwnkZEwp0eSr80QFd9HwTVm+vTI+klbeDyi
	 uIzskzNqqkgpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B41C5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178664523368.15147.8824684220452118647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a17b5419636dc1642bda76f4d0c2aeb68109936355665a29fdb8f7801307863
Date: Thu, 13 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786645233
