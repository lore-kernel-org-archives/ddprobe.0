Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A96F18EB8
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721689554; cv=none; b=UfgDTwMcpWhrJc5gZakAsweXrr4erHBt27OwAFQM32B2e/fkK3hHqmufD5rxS42XI0KRks8NseeEGgmVuIOeVwtQQ3hcv3eZMVTcbOVQgbJ1ggR5ap5m2TNepdEr7v7ZEiZHq+Xi+v+8BzP06h6egWT7PzurR0IdDR2QEsgDhJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721689554; c=relaxed/simple;
	bh=HYziKBk32Mg03ZvUFQqWDp3XjwepQP2vV9KGPVcf/IQ=;
	h=To:Subject:From:Message-Id:Date; b=aGZadoyHN7kz70wd2a429V/u+FVjEpd8xiHTlaDCovyOL6ZA08/CxVLa2BgySYziq59lcow5dxyuAr7cqbdn/Wo1YcpnX4BZ9XRYS+9/3k3Ny/NqsbxeV6oq3GIopssvyi2aB44jdjtYIy8OHgN0AN5zt/N0lLoqwSahXOE3Z3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzHp05uV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzHp05uV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B232DC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721689553;
	bh=HYziKBk32Mg03ZvUFQqWDp3XjwepQP2vV9KGPVcf/IQ=;
	h=To:Subject:From:Date:From;
	b=nzHp05uV7e4iKOteG8iQxLKmQ922cpu3JwnY9Bs1+so6KYhSxlxGjkNmQ/iRlrL+t
	 DSRZPxYlgZwoWkdCRKbSYyhsEJ3BnO1v+gUXH4nDoJyW/jGrB+0brSp7N47YMCeaoN
	 I/bw1DZSQa3RMoqNndugkJwS0VjFesN0ZvUqdkYbsDBfdR3JqO1xZG3dMXYm7pTg1w
	 BvHhpNPe9IkpWrySZqi+OKwjCl0KIpfFesm6PwJSY1s1L7fcHezcpz8YDa21vjYrJx
	 60ietZ3twfE7Zi+vd3r9oE/90LezmblXL8mJAN3Z4H5DbPwyzgb3N7TBuup49W8SWT
	 t4G7JWVGNrspQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953BBC3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172168955360.2997.3367586688937869627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24e383f945c7a49ae20b10c833f23d63dfbf01301ce4e02214ca072f4144f147
Date: Mon, 22 Jul 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721689553
