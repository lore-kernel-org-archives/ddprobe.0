Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD6DF261B98
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774105493; cv=none; b=O8FxcjH76HKkcT0piqOW98rpxAgAy2WMBylBdnL4EFsnTRAlq9vT/FRm9Xy37X+ZLHyiu0FnOKk9M2To7TFxiIBqNP5VddNZ6u1sgKBcr2DmVhnvLaoBWj1eze/quq5V+KBBJx4ozrEH3kB7joRI2Oi2FKxz4eykSl08vniIzI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774105493; c=relaxed/simple;
	bh=ncCnljByynAfciaq2mHDEwwyIKOCh615BsbZ+rLP+8Y=;
	h=To:Subject:From:Message-Id:Date; b=iLkaWqEk1CbZ/yOs2rr5LPKD8M5RGMsmDna1Q94nHfN7wXBF2ozvNDypoU3wqsFnB3g4MxnaVNbaRgQsE+PB21xGkUtzLxXAaoi8/s/Peq8qebgGsqb93LBGmEuub7Ia3/s2BSQJeIMs/nsELzXUgnIaGQNsGi+Q67U+MpoaxPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5cZVyXK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5cZVyXK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08EFC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774105493;
	bh=ncCnljByynAfciaq2mHDEwwyIKOCh615BsbZ+rLP+8Y=;
	h=To:Subject:From:Date:From;
	b=W5cZVyXK4NyOTVpzTgpFKuqkM7G280ZLLmY9j7h2QEIfQwmkTLpyj21s/lZrL+0OZ
	 yba5YEDV38JO9tyXE1N2Wf0QadQZvydULvcblO/AD19Q4J6DcmC0knRDG9bLG22KY2
	 zMcP/PvbtjEvs0cYlSGhwyeHMMt2c8DMSVtFgg57BuqC6TnPOKZTUZFrm+Eji/qPLa
	 xYf4g13LGt0o9MMzn1qqTUY3aJiCf7CyhZM8tpoxsinsrEKLee9xe0MXXUKbvramMh
	 0C00KoznedT6X5mEpnIzlQ+zgxmjWAxvd7iqKaiY8tgaZTyZbETuLZxmuIrUPqSa4g
	 8Zey+ireyIF/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA4F1094480
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177410549357.14595.10001631315917194874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41c1c5b62b25b279529e3cb47b9317740a17e2958f933af05da1eff7e8f65264
Date: Sat, 21 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774105493
