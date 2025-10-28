Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C94328002B
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761625194; cv=none; b=sXxzRcUhX9KZkHVpkqzp234KcfkWQE/pXMdMFudoaAV9PrTouu9kN/DUAsqPpbNHCqmmeUZOSK01MAZcoiSEeZJGJ5VS+4pgg8CfSW2M7+WRRm12Ze+JYtzoiuTa8EcnSkO4d06zEsPLeXMcW6+PyiuDCRGboJ/OMY7kXgJ+9dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761625194; c=relaxed/simple;
	bh=IcdZpjj2mHZbHQprO8yRIDqXSrseHdc085SrVkoBBtY=;
	h=To:Subject:From:Message-Id:Date; b=gUgvY+35TsZMfCmd/KlUAOK/1Fcme265+60E0ZP0eMGcxkLSCIfoWLyrkH3pmZT3yH1aaOuuMJipLNVbLg5aC4QHp4rq7i1t4bk3LDBpfhQAlAnfqhcxHxLlHshQ99PLr0CtvGO+faK/R/wgUSTZRZr6tAAu1pgC9TNAkdeT0+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZajVkZQY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZajVkZQY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE2FC4CEFF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761625193;
	bh=IcdZpjj2mHZbHQprO8yRIDqXSrseHdc085SrVkoBBtY=;
	h=To:Subject:From:Date:From;
	b=ZajVkZQYHIqWzB8grvpFPm8g69HvkvLOdKD+29w3PNuaNCitvKhmqWERrdaWcRmWa
	 pYizSZsqDk0VWSQ6UNF7tOMkRU9hnl8EaQvro0/xcGEurGY77LVr4TcUV1Gggyxa7s
	 tMFoTYFgw38xOFD7vb+Xo6FS9PC0aiid8byy6m2GzgF0NfmgLyMQh5WHwTnfs0T1R8
	 G6sBB97Xrflrupx1Itld52juX2pVywsEZQfOxTy/ek7YiOPsTyycB1hjMAcl1GvET2
	 FSYL7CeuMY9sDdSM1E6jNLqX5epnCYYSvk4PSqDcIKr38/SlCYWy4D3+mItDKqLN2a
	 nNnpDIj70V+fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5822CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176162519365.8146.3803389699404732784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6864acc25b4f4a329a6a2c50a52e410d13ae437414a97a4559451b0ad1aa7798
Date: Tue, 28 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761625193
