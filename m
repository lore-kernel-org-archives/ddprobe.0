Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4289538B132
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 22:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775514334; cv=none; b=obKSSrQ8Y1irkGE6YDrJr97ji04XPZNUP2YZyRF+qovmlfPNy67YA1HCq5gu8yCQWyv+ZmYermfwT/GI3nxsBgHq+WHAZtRj2L7NMb0LUVkP7WDvFe4sSgUTLhmCiMo6Bo2iz+/NpHxzLWjWRa8djFocRTXpsWOJvlw/StliMxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775514334; c=relaxed/simple;
	bh=3EUJIsET6+OWOIIuuhPXRRjUPROnAY1n7XBA5s9ROvs=;
	h=To:Subject:From:Message-Id:Date; b=ofaIzQM21+mxPZdfP6ELMldS1xwIS7gFq1r9WRcC5Oifc3BnEat7VAoijNolRzF9NVcChoeDnjPq127xt85CnwTDaxAkKf2A6dgNygUGK4aNqSapif3gJD8Xl9G8JLPf/+RaMaVZrFXZb1vAHmgz4XfGhPotFGfy2k5JvrUn1+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPZGuQZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPZGuQZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CE7C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 22:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775514333;
	bh=3EUJIsET6+OWOIIuuhPXRRjUPROnAY1n7XBA5s9ROvs=;
	h=To:Subject:From:Date:From;
	b=YPZGuQZ+vzJMD6ix9u1j2T1Z6sMr3e2pvl1wPvAs2aSPoEkiBmGZygWvEPGtPU0ol
	 H88+T8zfNMHYvp76v6NB1Sg70cdqJMJWsU6im3JgKotskh76YtQzsSojWy6J4RVc95
	 r/lbbWwC2fQ+iNc4Lit1fr4yN3VVsvZ5ydEoEsZlBB8L9xP4jO731q7pfQ+laTNpJ8
	 uUuEjSs5RteiR/VoM2N2qq/pZBTEFCwntKN/0gMsyQg9O8FLG+nrWGa7Xo8dVyYLBD
	 jE7dQIaDmAHveM62DqkuOrcIstGuT+QJfvT8gUb2f1JtPa6cjIKOQy1ZuteKdoppNT
	 LbTCsmNzOixMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA1CFB5175
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 22:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177551433369.32079.12486090694531395704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3de7e50ea244f496441850f9e13c5434b310ff6a2a84023f1be68a05d391f50d
Date: Mon, 06 Apr 2026 22:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775514333
