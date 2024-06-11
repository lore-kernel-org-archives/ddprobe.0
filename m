Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCE83A1BF
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 16:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718124503; cv=none; b=hQExdDsXSLtFwRel8pSFABV/kFKlqa/nlXfNVKoppBE8B9VdM136d25b6WOVFv+5kxnJIGIBIj0AxEJkxD+FCsuXb6TyfJxFE9zKYdGSGCvs17y8beo4BnXM/7zdChJ5Sx2OFDVtcKTL0CGrTXnRLOKtSL8xageFRE6M9FZUTEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718124503; c=relaxed/simple;
	bh=d75f3YvXT61YvbiNtamqb54SmfVO2y0Nrh78jY5H1NM=;
	h=To:Subject:From:Message-Id:Date; b=Z6kY8/t7m9uv4eU1LN4VfnxPecVNjj0Fq5+7drwJ7FxRH5NkD+4K8xPhHt6bcMfrfmvOUcWFcp3jinoTPzZKH3MPbyob6ItPxJZ81ZMZaz3n47KmB/LUIG1QhWgAjEye/GN0iQ+8h1b9hE7O5v62OAUoUJMqElUNizhLGtd84TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDtf2e+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDtf2e+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04D5C4AF4D
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 16:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718124502;
	bh=d75f3YvXT61YvbiNtamqb54SmfVO2y0Nrh78jY5H1NM=;
	h=To:Subject:From:Date:From;
	b=XDtf2e+dN6fX8dPVbmLGVHxMv0sQ6PT6KnRhz/ACkGXC+2P+KBl7DSJ++ssxKGpyU
	 PVS18rirCXLZ6VOvRcxO8I2koWRUVLiwq3wm3QR6E6Kqh0ds83pWWn+xxVsDhMUTR7
	 KWs+neNHq60nuvX+xiO+mLapOlK4grxhsHAtuY47qY4ZDZzZ9yHC2xFf+ki7KXkZcl
	 fnCWs1dD9UdGOO+dmtAKzaJ6MWhcbkhCO6Vh9+xJKXoRs1yqv1Cnb+lFANm8S6EE4n
	 RUy47/Y6we1rPwnnXW5my1Y5Wbfyha4ss4Sbs+l/2sXjHsV60g+APT/XeuE/3s3yB9
	 SzqgJaW+gBbcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD47CC27C78
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 16:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171812450276.14048.4733392010755614107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79b331575a2ec6ea82aae35ab0dd21aa51a36350ff6f7841053921b5d87fc647
Date: Tue, 11 Jun 2024 16:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718124502
