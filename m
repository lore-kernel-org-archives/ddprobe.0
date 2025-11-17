Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172CC33507E
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 14:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763390514; cv=none; b=c5ZxR1xkB+BXK8hWE12ZY/Em8LZyBkzKlp6+8wRZcjlhMx9RTwe4YVufMpN2kB+UGTB4m23o1MF3auq5eWFxtrv9W7/1B6EcmwvDVQRSvDG0OjzUfXEIogBmDPcD+M3foF3EXYjEnUd0CKZ13waKtydZUjW2U+CnV/CyuBGSH88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763390514; c=relaxed/simple;
	bh=WwvRO7X7BfbuBSgHguznGaI3cxj92Me9zBXitbQ41hE=;
	h=To:Subject:From:Message-Id:Date; b=T2zYvtRTGOuocNMktbcDxT7AAgZgmtVLRg5sMc6wL+JoQMAvQruP6setepPkBE6kdoCAn+A/qPHIJKPPKH+AhMaisztzOnO41BMx29BnSgeUhQdFqfH5zGVnilMJc21p7BtvvQmdWPTi6SWD/s3PkISvp6tpygNAsKHEI3g68xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvKXCcol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvKXCcol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D469C19424
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 14:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763390513;
	bh=WwvRO7X7BfbuBSgHguznGaI3cxj92Me9zBXitbQ41hE=;
	h=To:Subject:From:Date:From;
	b=tvKXCcolKFEa27SLMACfNYVSLUX5weAmunhq90nLWQsES6pbW0oXRKgEruJshUSqF
	 f9rE82T8SpB2bC7aVTkP3auftoreZs5xUsWtcJz5uYT36ZueOpXnV+9swZ4pUfyRyH
	 Z1zC+XBAFw6nj98KuUf3KGf9fhbhAP19PPZUZVC4DGfwukKGSdbOUJ5vj09o0oGy/0
	 +PaqSLWlAyLcKWkgij1ygtHuDA9TXOpR0P+mcK18iJC4l2XfSZnV6eNow+BUuCNJ3O
	 MgHZAiQ4HFMItY2DCnXcJxaaqG9uPjoPGdAjdEUG52mmL3H1+/7RblzAXjvVY/GFIV
	 ovDILqXt20i+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93095CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 14:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176339051359.7314.8603537138569735731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4819f37837484f0cf0f74579ef71b6a18eb7a5f6f3847d8ed5b6e26d8b12f1b
Date: Mon, 17 Nov 2025 14:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763390513
