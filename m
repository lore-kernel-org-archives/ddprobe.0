Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DAB29BDBB
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775807254; cv=none; b=REQjlRmeKG0A0zVoV14MIz643eWyTzbsAw5m1CVswRsc02s8LZgrHLwgmCZTu4bw2fCYIvXU/P/NUzedASl+Df+c3RjsXx/EUdrZjjwp8YfvNt7lQDikOMRftvrjTdYrBJBdpp83zaoNZSZ+2D8awlPFjGP5hXM8rGyXf+CKYQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775807254; c=relaxed/simple;
	bh=Q9UJ7n9I/J1xJDRxoqmtXMgPrScOV6ElN2vaNqtEX2w=;
	h=To:Subject:From:Message-Id:Date; b=U/iYqpHbGihNMsKPyg0m3/NezkfnAdNW2uq9+PQxc3EUW0557QKGQMO8AyXNFpgMpyhBMGBQjUyIatSmwmSJs5D/hGf4J7Fhq0SmTe6Cfyg8sAZBH3j2CatL9WgZmhO3ZF2eIEm54GIuBIb1ya25+zZ02zFEEnat6rgPF+GoT/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vfn/Dvnt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vfn/Dvnt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E87C2BC9E
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775807253;
	bh=Q9UJ7n9I/J1xJDRxoqmtXMgPrScOV6ElN2vaNqtEX2w=;
	h=To:Subject:From:Date:From;
	b=Vfn/Dvntcdn5F8vAY+Pw27Q+orm6yRliMuQoXveQvOWj+T2YTYmB1iQBTlg8dDbYr
	 EIiJbN+wtzSs3mCPg09GpA6F6c/zhawZdPq8KgiOHirRjcmRCJjC91vDXFBUU14E1F
	 InfPoWpJ2q16CZysK2WXJCk6tohZdJEWPv/u9h2N9bJFSgOjPLldEPDDeA6HLXWUPc
	 Bzn5CzmpsLyfExEoewsh80SzZegjJ7AVILaPFvVbCj/u5f8ZdeRZ6SuJCygOT7A9tQ
	 zBU7o+3JTanU4QE3bP/dgr/Yyb4EjoVGWOvjPz4wLlnvjiWPK3DxjfhHBv8GU7yc4e
	 Tawd7j6TZ5USA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94DEE99050
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177580725368.13971.13668356706210701891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5217a9f2221673334728333811898fbc2e215a48ca5f561e017220c3fdb4c16a
Date: Fri, 10 Apr 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775807253
