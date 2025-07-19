Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191322D613
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752902394; cv=none; b=Lc4RAhmlXVjUQG+BllDFxThX5G8LWaKQaWx0f23sueBpsW5Uarr+gpkNprpVjJmctWAfZHDBr0mzDlsasIgEBqynseRhD9eTPJwsOX7ePuaEM401wMN9Wk6DGsBNjHY+X83pkqoTVcChOFeeE6QLGWSDxdQLdevuPQhGHPn9bRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752902394; c=relaxed/simple;
	bh=Wmp4rDoL0O62zgCrAl3QgJP7Ee4s/50mJXZHsaMP/L4=;
	h=To:Subject:From:Message-Id:Date; b=a8FgFssug14Z6k40UUh4WVgzHHOXh1NreGPDyjf0OAyjfrGVR6iaGIYYTxHbGiiqLYP85uJEN/dx03phsJH4lcGKkGZlNiSncEYR06SlZMAa3qiVTeRIFgJcnGts7PV2jRIQUk+jVrUzV7ifIkQUlk9H7WFENgS9JAZPOqBaX70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1m0PtV4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1m0PtV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C1CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752902393;
	bh=Wmp4rDoL0O62zgCrAl3QgJP7Ee4s/50mJXZHsaMP/L4=;
	h=To:Subject:From:Date:From;
	b=a1m0PtV4sq6Pb1o+m0IH+CbZkOpP1dnQ5j4wG0JcoSnVq156uKiSSJSWhXubbgfbT
	 IjhmfPvggTkQpG/wg8kPgphCelthnDEtl4X2mJKUyVWCB1slC7pjCKnyBskYOLVDpX
	 6JS+wv0A04sXTI+2ZbtEN468WZ5+RtcJk+SrU9Nzc9HgFnYA5RJj44ygsFa0Kate4p
	 xhleQfvGKQgRDfM1LdEmW/w5ctT4/4vJIFG/DNwxzJm7UmglLYMrW2EI0s3JgSXiVK
	 0BZdvYas/W1xpHEupQREfGT4kIc/E3BVK+y4Ve6VNTBiC0k5hFnxvn4lj0bd1NzkGA
	 HB/WFLks2aKrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E956C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175290239357.32628.8334499831583197340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 133ba40bf12ab39338ada6b569baa141eec6b682beebebc57b046fa9dc40a5dc
Date: Sat, 19 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752902393
