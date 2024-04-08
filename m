Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE4E4620
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712537296; cv=none; b=k7nAivry+LrBikfobw9qAXAryFHTgoQdHCkGGrrLUounRm10OdT1eaa4vyc3ziEjPaGwPIfk+SMoGFYRa0GhKBNoxUpppzVBPkg/ieFqo/+uwCJOroQIUwed/Aww0aJgBFNxqEPfRq9MAkz1ue0lj8N1vIHMvd5cEOEatIZlRVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712537296; c=relaxed/simple;
	bh=FtT5TdTUzPuC0jMHajRpEgyfVjKrB3OzC9T+0AdqmfQ=;
	h=To:Subject:From:Message-Id:Date; b=k0IJC7d8v7tMaXCsupMda/l95zNxPiKYDGJ+gi6but614Zl4uSMvcf6dc+X+3JXXP5Q94YSojGO07ihg44urL2BboPPN4ZUB/TYZEQwdPxYellheJcBvY2HzZTsdm+TqZgxXjBkh7svO0cnCvsurn+QeJ9JcfYb2fnqrQSAcH08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cctrPMwy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cctrPMwy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 790D9C433F1
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712537296;
	bh=FtT5TdTUzPuC0jMHajRpEgyfVjKrB3OzC9T+0AdqmfQ=;
	h=To:Subject:From:Date:From;
	b=cctrPMwyCzKdmASRe9haev4XiZlCyb5/XMcFl7vRGq/nMAiHs+6HgsOKt3yC5nsFi
	 khueGWUmsN/NpyOqwwg03Jrhc9ka48lAom+H4TIqZP1xEgDfkYYSbdRtRpmPO6mVA7
	 JF6tH8OHSfhRM0VBFmrNSrjvA0hER8d51weoSMNd8o63vrrjIOGbgWaya30L38nQDr
	 qCRmUkaflx2SILoEHwkoF2Yk5ZEfV04rW7rU2RIrtHsIqY5nhvCH76iSZpAv6Qc6Bk
	 EnZ0zaOfc6i7pI+xo53iSLI2P0mZ+PfpjgXrV1ZwYqoM86pITOVQzBTOWHBXTHoSDh
	 4K9Omx9TdWz3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65D8ECD1292
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171253729641.7905.13528168389536007074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 686b7ac60eb6803abeb803ca2234c170f40e1cff42960009040e69cf01f0d427
Date: Mon, 08 Apr 2024 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712537296
