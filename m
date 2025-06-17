Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39009212B31
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750127994; cv=none; b=C5zCx1idKxJV1emSU5zqGiuIzQe7dJbUx5m/2svguetv+/iCIRm7eCCDBR2gETonft2+MHAN968hzlXbxveSMrFYIR3cTuEKGA7O1yfj3kq6UcLWDUBcNB0qJoPdoQsBJgiRV3N8MIpMPWiJnaMVRRd/aoxNJX47lnFUR/laToo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750127994; c=relaxed/simple;
	bh=HyMBLzu9JVDEeeCiD4dxG4Sep/WcRy/gX/z5ELbyJYs=;
	h=To:Subject:From:Message-Id:Date; b=TPp4qjbFsSyvptD5YUHeZqZevUdfeMR/rsaCPTxPxyfYCrAWH0bpctHTNcptCvr+gekZLPa4z9xC1xkVIOIbk0X4yK0nBQE0SlA49Mya2HMtgiyQGwMkAPD5/H+uRflMitzKWycmvUpPpmZnu9ymlcUr3gr+oBSCzBrrPgqXjqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GoxiASZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GoxiASZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74B6C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750127993;
	bh=HyMBLzu9JVDEeeCiD4dxG4Sep/WcRy/gX/z5ELbyJYs=;
	h=To:Subject:From:Date:From;
	b=GoxiASZZzjERkadp9O8MudnstWdNr0a3K7FcatWhkZxJuCnh0/IkjLXT+evx7rx6x
	 l3fzI/iGhXqg9A839VHEdAsFZ9ksj4f47iVdpiQ7w/kQdaB6E6TjSn3LNClLup0cTd
	 adhBJ5aYgmN5CIWi/YoXreESN+gSd8IhImLkDhPDBcA4zql7KKCK2rx7jTheKxfw4M
	 yVSRuDTSNMY2xV3kvUovnbPldCFjwARDW6E1ilrrT0/y1yxe1hPc+BDTSUhPdugkPT
	 k3sVqEFI6SvWS8Yzp0kY59dquvGke95zRw8+lyIXlgwwNHFi7wMmFJ3Gf+E+fk+Mg8
	 lNRHIuORpNGzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9038EC71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175012799358.5960.8220300254776579065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66ba90d8d9cf41ff6697b491372d3383943b4a3ed2ec778f7739baef503d91d8
Date: Tue, 17 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750127993
