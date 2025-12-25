Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9235E314A9F
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 10:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766658835; cv=none; b=BbnZcmBLlpS8Cc67tGpbL0OUzO0yVrwzyPQ9GcGQuqN1eNTDOL/peioaT4f4fVsEbMA0zReFVKT24wdSXWqw5Lu8nvgarrxTCsbKIBfly446pQA20mTMTRuOMn1C4KjOReNlg4UCHDW37n0fMXeAjYAaHsgz++pIWUXYrPNOgqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766658835; c=relaxed/simple;
	bh=cY5IX1fB243JWGmQBtzB01x1vkELFwkt6bQZW7Is0wA=;
	h=To:Subject:From:Message-Id:Date; b=oH4K3HuGNTCrxDNzxwqeTRPX06mtIZWY+nXsgvKNZ1IhVE7mBctjxlowbcDAr/+zQeJTqSdd6eFFNaql7yRBjMTtLSORyOfu0wxnVxfHev+UoNObaF2KFsRGp2d3SJG5MyCs4bdqH3GLdtg7YZoMM77R/xINnLbBI9sjux7dEFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HL+Wz0Or; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HL+Wz0Or"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CD2C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766658833;
	bh=cY5IX1fB243JWGmQBtzB01x1vkELFwkt6bQZW7Is0wA=;
	h=To:Subject:From:Date:From;
	b=HL+Wz0OraomrI2Xjantn/dPy9LuN2odXyumJE0pobzB+M8/O/3HXDpa3G+UlVxdeo
	 VncHMaPIpfbVqlV8/DoE8K6vcRTCd4JSwjAOFqdigWcxmYhDtg0gE7WvR6lyESZpCA
	 3neyUJ/8WoUDEdrd2tQps561xBfYaNjbIT6zCXab/Vu3+tlFTVjNpBp/qqLKjcRgAe
	 5ou9kzyK9/g6O4YNh4m35aFes20blhoiVOxcTS/WTBbA6KiaJRVVQzKtUJaIFGUPUC
	 kCPCWr0JmnWEzQjmdr0ExQ1wIAByYXLELdXfgVnmgRCWXBaHDvmJpSFu/YMPtw/F1H
	 0o+j0mbfsIq0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96796E7AD45
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176665883358.12195.11436337922019920920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd6806d588449cb37ca3e338265cae0b4025f05a2b84eb46068a4f3ebda78450
Date: Thu, 25 Dec 2025 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766658833
