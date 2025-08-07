Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDBBD239567
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754603993; cv=none; b=ScpkXWIF/EZX9ejqYAqn4fGtS2hBEoHJ+bXMqAlbpzqHlioY6q1iCLg8rLctP6PGyrbvfuojGrkSyFkMuDamlImJkFLFUMTtnvt3TBXk+6If01cNaJCyBI8O81fAwEMMUh2XtWvXqk/ucSS4BU00n9Nbayf0tEiMWRxWgF7tIf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754603993; c=relaxed/simple;
	bh=iAlDxWjdER+IXLCiioSYSTFrimInDQ3FX6Do7OvQa/E=;
	h=To:Subject:From:Message-Id:Date; b=sOLTHT7LMA9TZFVZLAKsfjo7qftuztRQcOXqF/EHZ3aHLBDxMfXbldDbKhcBn5aYN9TShd8DxNl0t2Egtc4EnlcLUmtqSGZyWauDdg1va7hPCTPAvO0ak32NPCM5V8gKUNIiBEwyWxCAsgJUqXqOCP3Th3nSeDo49ZMEtCQ0KQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMo2JJTe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMo2JJTe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B62C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754603993;
	bh=iAlDxWjdER+IXLCiioSYSTFrimInDQ3FX6Do7OvQa/E=;
	h=To:Subject:From:Date:From;
	b=qMo2JJTeO8p0CcPLO0CAAU4+/SEEBHF8lMgu3wLrBLOw8diqtn1RyfTuvG98doy7k
	 N01ZLtKYWlYWlJqjxAqNTjkept8ixdc7zJd8Ynrt5Ni9VDUFgw1Dt1G4x2YQKTNUfB
	 qpd/oZjz+jsxZoJ11P8+0MbdByrNYJTNZun/00xHol+HYEhBh7zGDv1Ov2bovBlBQW
	 /vOaqa9mIOe5QWvcjzavkm2XAcVJCros7XIauvUNJ3qH+DtUjX9LIBEgV5kvi3GaOR
	 zek3X7vZDzeHPMbGgYJTlxBGsRHcnUM+uY/d3RoBJcxpl5EZSRDFtLlIpKoELj3J62
	 c9p3cKHDPF2Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905B1C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175460399358.32554.7842114954256795662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2268c58bc4f7660d60bdb3c75fcfda1143ef2b79b72a4fbff263bf8d256d32cb
Date: Thu, 07 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754603993
