Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDBF3C2FB
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 00:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740616733; cv=none; b=Pl2AT5MbirSd+FlVT3SdwRjGEroH0l+Sjcldqfx4v9J3Tjsno7iwjBKTv/MYp2X9nTsWlQv5jw1uOWROikF0aooaf0kH3nNEpT5j86B5mBx9ygdMUbgYfNhbG3aETCfk0PJd38CPB20rXIIdfDNr/Q/ICjo1QzwnjCGrlGbzDjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740616733; c=relaxed/simple;
	bh=NwSf0YB/GnW8gvoXwIt2+5yK3KkCXu0S/QroxaFogNE=;
	h=To:Subject:From:Message-Id:Date; b=Z4oRPdyXvvkoPqRjOURQC7/HYFs3/BZkplefbomEx6PCIgsHwqz78waC7b3aE6AJZq3W4oeo2N6qBxpk9QDppakpqQRtHL0jXOaWmjLlE8hIJbEOKoNAEKNydRdpFNBbEm67NL5H4VIhV/r4Tf4HJx7ENjMLSb/3VUOxUBBJ94A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKlCm1wx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKlCm1wx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B41C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 00:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740616733;
	bh=NwSf0YB/GnW8gvoXwIt2+5yK3KkCXu0S/QroxaFogNE=;
	h=To:Subject:From:Date:From;
	b=sKlCm1wxFgRwDnwy/OP14ZF7VOM5wTYszbL/Qd5jBmgrzwAgA8B3SGcs95pHt1hKE
	 JoE5QZ8f2AmpbJ6vHOyBDevzwdJ8ZYWU7PJ7MobX8s5Qu9hONIP95L6Wl/Gb/QVFvh
	 +Rq/i5sm3c8ovBHm3B+YpDUFOK1Hb+UY/vILAL9Q0NoQ/MFNHdgTz9AePKIb8eZ+F0
	 Swxw3G1qB5NPWRH7HGRw4byMtAvZD1m+EpbUVdGuXJ2EiXcTJP3IZqKWYiVaNjAC7z
	 gzLhz8i939nrtM5oUtCS0vDAOXbBa6vF8w/HINZF+hPfuYlCeOo1ljogTW0aDOLFoN
	 SS8F7zYZKD8eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E01CC19776
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 00:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174061673363.29900.16136460416300905673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a395761b78a85b652084730ac5f2c87fc7c2607adce5c4db651911baf69dabe
Date: Thu, 27 Feb 2025 00:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740616733
