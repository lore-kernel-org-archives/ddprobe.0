Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0EE2E54DB
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756796395; cv=none; b=ag8mcpVZZXMo0SSrlMB2AVaTR1g7wfoUfXjTu966FeOhQdK2BvE+GcWb6ERY1reUZSuiwMr4dn5In8P2AIDfDcdDJs3zFrb/lqz8ziycMRLMSBJUxPobHi+Go5RAdMQZXPDN/BFdc2PZcXSFB64BW8wQVkZU1WBmr22tkKx2aV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756796395; c=relaxed/simple;
	bh=oLa28NS30laUxS869HSK/3KEVYdOq8fx1iiwmp+TNqs=;
	h=To:Subject:From:Message-Id:Date; b=gpUMTF8TW2ggKP0ju7Saj+CBaTcmUpvPsJIS8LqoWKNTahYdMq9v8YRCSXcSS+seD00yVAQBGRmCtqV2jAn3pEilD/Zfe3H17C3zQBw2sBqZaoiw9BqfsuVtCR3Ta9G4EY2LYxI1OO9u8k+t+x/ILnmv9buAuQOkPAQ43WApvfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bss0Y28H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bss0Y28H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F295C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756796393;
	bh=oLa28NS30laUxS869HSK/3KEVYdOq8fx1iiwmp+TNqs=;
	h=To:Subject:From:Date:From;
	b=Bss0Y28H6nTZuOR1bBzFS43ZffmqPPUQsqIFAxUAiD/5vwaY5eYTV4uRZ/dEMVZio
	 KV6dsdirM0ZUma012RAJ7Y2xptxalyKLanrqAIy4OfUUU5wtYHkz/L/JDl501+odO7
	 h00dIsaDGxZrG3z8j/WhukbyzbxmWyBxQk7J+W3tsELDRL9qCSw1ObIDuGBNJPE+V4
	 1SDDJwHDGI+Jq+At4nsgbjfmPxSS4QPJN639J78hUjWH2y+SjyI+PUjTNLMV6aXIvB
	 qhjX6a+cjQYhcwuMoZKh8fXacUQdkt3+PAg2IhVCQhALiGs3rXYEs7w4XRvVyRzT52
	 hDFPrB4ooB/sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E63BCA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175679639357.13800.7444105236947100128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b96ded9f2a98fc7cfc0d40bef643f9b70ffb1411307531dd3cc1cce1ceaa5b7
Date: Tue, 02 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756796393
