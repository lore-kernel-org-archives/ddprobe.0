Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE4D915749A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724877353; cv=none; b=Anf0+/VSF96U1x08/IP7mpX2CmVdQvZfOyCAscYPxlQHj5nC/Ben4gbUMzVDRVVkijiuMSqlXC0l27fZxIZND8yeG42jRg2EGrxkn5qVoxPblNzn6gOmY21ef4/PMbpyIv7qxxe2OezgjSe5YbfFebaOztTPn8paFNW15D4uF+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724877353; c=relaxed/simple;
	bh=7ioYFXoqDiIbANAY4gGMPwZz3FdAFP32Hdf/zzEbpfI=;
	h=To:Subject:From:Message-Id:Date; b=g/0OLa5RdIAflEvaOC3w8DyKb0uorQ79JGUJDYGbYXJlHXruiYSR433GU6+Oh5kXhunR3nYr2LgaqBIdO4LQOj6dDgCulJwuG+FLSz/l3fdvetjfUWn3HYh8vwVBiQRnN0h88wrFno7hXA4PZU/wSuHjdxjnnKxG/yzJ7bkXPLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXxVxcNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXxVxcNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DB6C4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724877353;
	bh=7ioYFXoqDiIbANAY4gGMPwZz3FdAFP32Hdf/zzEbpfI=;
	h=To:Subject:From:Date:From;
	b=NXxVxcNlHsya77OZZcxodwAM7RFbTioRXsCNFgNTPityMvmoMWRSa9f7d/Vu8R2iZ
	 iMdpRdc/pOD8w3Ilg3NDncuSJVNkMefJZxlnCbUHDAEnDcU9LvEFg8d6BSlMvWNG8/
	 uV4NZipacRCvKY4DrS4qYufQwZB5dq04mnPqi8T7BHM96c2fkrf2Xn1IwKLfZI0p7Y
	 PZwjI81Cn/6LBr8EM+iH5ksH/vooYsD/PGiXwdxkWTFvdQSoMo2/uTaMOlzHGPbwHq
	 xXk1pfsOlus4ZI9muzdEYKnniMoaRYpadjwaPkz7cUuhmtxOfA8jFcHLPd4sTxPeHm
	 h62KJeGxm5GFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9172EC71133
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172487735358.11684.14094400205274425691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8700ceedc068f9aadc81ff0e0786446149930a5574b5931da3a0fd762dda1c0
Date: Wed, 28 Aug 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724877353
