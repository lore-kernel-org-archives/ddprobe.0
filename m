Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB041F4CB2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756909194; cv=none; b=CiBiORu+be7OqQKr9G/nUPMwLG1bdB5MOxXnPsN6nYI2j8WY5GyWrLTIVJsH6KCXD9ZHY6fsXG6i003bUDEH9TWHSrjMv/xY2IJGeFcCheIJK9ELbpMvPoCiCXzDV7bEZcg+w8H5TnFCIv4x2NBLJ04ZNrFFrdjjlCBYpimWMv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756909194; c=relaxed/simple;
	bh=qgfXJAATUnYp1LQSRLwMFhLT4zU+GgpkTKjCmo5cb4k=;
	h=To:Subject:From:Message-Id:Date; b=JFXin725mijb+W09yAkht/6yCezqe4/AItVq1eR9P0eFwO1w3kuj7t0RDO60pkOpYraKwYBywz3Qe7bk1zbUGtd6WdCDpH2aV+6yXXmmI2fkWDD7WPzKpK1cJ4akhDQZr4hasq/8CgOLcP+Upj0IDDoTYwHwjJUu/cxxq1dzphs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWW8+no9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWW8+no9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15DBC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756909193;
	bh=qgfXJAATUnYp1LQSRLwMFhLT4zU+GgpkTKjCmo5cb4k=;
	h=To:Subject:From:Date:From;
	b=kWW8+no9rSEmuSrH1cqr6zrbFKKJRowEBW+7QywPkwCKAOStBDccY/K+F2W/EtbnN
	 x38sp5K9jZERRzdHRrCX6JUISydzUGZoe+296b3zG2uQ9DUBNTaEyM/LWhEYlonc+j
	 xIXjlmOc6lsjPmh9z2GmUlPXbPeQeucz3wLlriIfK26+Lho0CARSL6eYv7Wwr+Q058
	 yeouLOw/RFJadx16keHz1Mf3W3GEaJHhunn5geqqkggZe52bRcBSA1f8h6/RZjNAN7
	 tSTbUcrgkXDS0bupixL6zdDsrtDM9Z/oDprLF23W+e2W7L3glAZfT3EfV5J/XcxOsn
	 xAVwJcPmwUMDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7B4CA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175690919357.15693.14893403091819291067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d20c6f72edcaf4dfd6d1dcb24bfd03e7b5f69ad203bb82861398d0841710d84
Date: Wed, 03 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756909193
