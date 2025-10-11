Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F61DAD24
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760224794; cv=none; b=kDS911c18Otq/yl9M6hEEQA5m3ncmUjhoN+zLmoUJF2roVATC3+J8SPqEmbq6f5iQjKzCFFCJYiD8vszO2J+g8KyuyVR7dP2c3bRzFu6EWFTq96niZqmaEKopNUM3accx1kEVWsf+ZhQAiIjYeJHo8vJ+Ws8DnBHtazc2TMd3S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760224794; c=relaxed/simple;
	bh=/VrH6buYMek4SvslGTf4CcJo5JnajpyKhwMR8aB6aSw=;
	h=To:Subject:From:Message-Id:Date; b=dnbCi3x4f4pLessGwOTP4BB73pUBy2EBC2uCW+baXJuYX6ZI0MFBFzQVJHmU2g5ALcUTnEQuTXv/vpE7mpwdTD1MFGAdWvaCdy2jDhr4uoIGLYdosACTleUrq2B724caeEn9HaL1XHILlaXUzkJK5074siQh87pizxVHKqBxB0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBiunG+j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBiunG+j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC559C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760224793;
	bh=/VrH6buYMek4SvslGTf4CcJo5JnajpyKhwMR8aB6aSw=;
	h=To:Subject:From:Date:From;
	b=bBiunG+jDOMHdQTyBZ6kjnoLFnh9K6emsmV4XdkS3yCu9Ay/WlXCh3Tpqi4KgdvmD
	 Fv1HAqRmkrwVaAPScNiTHDGMsyVOBDDHDQkw2gZaVCfUodUKEeD56TaszMDNRb3G/o
	 5SlEp1lAtTJD3jpKtvngdz31JF1iA4GX9OsnUBZATKPVfkOxQkvSulMw3DfskLuo5k
	 P6B/AmaImMF7TpR2DWcOUfuYc7qef4ehGjRb3MiWENxjxPM5gKAIPEseDyGw9ee7AQ
	 ju9ySwksP20+ax2Y3kfcjWlrjqwF77hrt+awE/qt+wzIqhHYMmdSeaPyrVvSi91qyv
	 8IaFn/kszMxzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B71DCCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176022479357.5595.10219365946987836734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e659a76f1f1fc156c7832a53a6687b5f8a15b218b77e39f75ac409138ef11718
Date: Sat, 11 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760224793
