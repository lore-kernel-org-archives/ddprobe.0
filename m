Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659FD41BA83
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785405034; cv=none; b=P5QkCiR5cuvQuQXuO6h9aMtxTf6SNNMCoGI1cAbDlFPDVeQXQ5hZw4PlTZQodbJZ/MBx/nR2/R7nVgUBVDUCPpCdIO9bruH8TgP/DgTJs2S46NOZmrY5dzCwO029oGZ7m53qoMCX0HXIW8udHcgbgiDiJqvB+ovOpqvH/R8yuXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785405034; c=relaxed/simple;
	bh=iYdMMjDBrd4o7sFnuT7XQ0SxJrtfZ7RyXw2mQxp20Uo=;
	h=To:Subject:From:Message-Id:Date; b=G1XiGIEAIZ5kyWVsgbNnBHLffJ6nLLpsuG26Xq68firoe0zMMDFqPvL4mXuzOCle/Hp4cmLIr2r+pevsEmxXQCN1jS/BO86XJGgoEjeV8msaEHueWB23a3BUDrm+1pmH7+r3OthPUTdZe5mKkYuodYJFyclzthK57hBUxWuhsx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5eRSvxG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5eRSvxG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07D3C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785405033;
	bh=iYdMMjDBrd4o7sFnuT7XQ0SxJrtfZ7RyXw2mQxp20Uo=;
	h=To:Subject:From:Date:From;
	b=V5eRSvxGxs4iiWEq5KX3JazvY7q9gO7zSYMsNAq4ikeXQyFv9f4WolcFMqhkCVpkK
	 uNamQiPasMC2KNCa2hNbNdw3m9WXL+ASrOfyUt+bFDMIVZiz0u9e3/qjXbBPuoRbp3
	 h0MrLn92nrWAGsSJpndL0GNYUea2laQN2WmPcs2HPmfpFj0h2rjLaSzgQcW4t/T/7B
	 Q8hlJRRXMxYC3b1+X/pd8WVPBLkaHdTSOf+Fz5NSfsua6qnKzTkSNkVL+uJhRdFXG6
	 6/BrERzy1VY+Y/LbPlUb/RCY24vCf/aNwwjqQbkE3zjn4/9lNKMT1N5USb4WcD0ek8
	 rXxPdHw3wg0RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A955DC54FDF
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178540503368.4223.193164512545615398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 892ae7a204a402cd37778c7f33acc49e41fd944fd64f060f3df7a6d9825dce04
Date: Thu, 30 Jul 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785405033
