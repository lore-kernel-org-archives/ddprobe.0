Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6B5763F8
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725081954; cv=none; b=sIN3KL7E34gQJs6ypvAiBK6CWcMDyNdUD15NAX70LmFawrHm08WYVFkn2bU/PkHAB4A8ovaLnfncbJVqOwJKICuYkOUF1H9KllV7h5avAIo4pcNLZAqOQJWFDfWPllGUgxyA23odIGjCWGjnQc1f5aIEmKAbP1mdgCUPGn5JqaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725081954; c=relaxed/simple;
	bh=fZ0W1Y3EsOyKoBz81i27eLcLLo73AmKqQhc73dRnZvY=;
	h=To:Subject:From:Message-Id:Date; b=sv1qoihEOCJOf+Nw+8IpE0n3Mxz2qOSrOuI4If+wU9pS9stuWrUKH6DhUt2lvoykowRJwwoTFMERC5IlQA3oCG7uzL0om/98iAeVcANOfa71O2HTxIt5T9KcxhcOGP5XYdUHqlasYUx4QFOOsE9UgpuvONbcLE9fhUxSmnXNOYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cVWLRCbL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cVWLRCbL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4465C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725081953;
	bh=fZ0W1Y3EsOyKoBz81i27eLcLLo73AmKqQhc73dRnZvY=;
	h=To:Subject:From:Date:From;
	b=cVWLRCbLER2R9ZW8prX0UrfbgMFFBmzyHcuU6Tidtxmh/a8rN4Rl1MVrdqx+6gCeC
	 737Q1xa5Jf1ncbSnCm2MompZ0P5zN//BLweXjKvZqyDnQsF41j2Pyc9ji5BB0/jkZt
	 Z7uso+dPSeBDMzu0S076EIOUN7PYRgDhe4Z12p5gUdv19KujoxDP3O6xT63gKzS213
	 mu3UGqmGsmIr0v6Lj87bK6x3EneSc9o7RiM4FMZhPHXpQ+P9XHmwl2IHPD9WPy1Hfh
	 ABiD84Js5OhtPru8DnaLD0Vjg1ywNj3WrgZd4e8G+zkcb6Z3lKH4S0PaqhK4rsgQUa
	 ffWwe+7xcoYiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F628CD1293
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172508195360.1769.6628822905483793215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad465abc2e3d69c87c351ccc9436eecea7b1a067af63fa84d692de86cae67321
Date: Sat, 31 Aug 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725081953
