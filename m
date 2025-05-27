Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C8FD2FB
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748305794; cv=none; b=aneuU3sB21YNetr0moi4mPpaPjCsD6f4CjoP1Jvu0zE0ejyoaqB4YA9Bs65fC+0IVtmTdOj4qK18PMLowUivdoS+43+WxDW1QSFAJbLevahyrZt3XbZ/rL9m8LNfx7/rnCn7gxWBXGwf+EIPZpXcuOHiN20qF0sq0oax+kt/1+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748305794; c=relaxed/simple;
	bh=fbIFOkXyxCaygfD2DrdRv8oZYvrWelIuOPlXoxM/uoc=;
	h=To:Subject:From:Message-Id:Date; b=srjsU4FmFqzS61kchThKrSnPMV3r7u+7mahP7uVuHF+wy00WY9Ec/9CShBp/sId/T+AEVY0oxJV4YOGOrAYGzooFYjxQCRyWOY8kKaJyMAPyE0xaW9iDstIjPxD0Zc/g1dSdbUBqIXIFelnUXCB/kZmYtjuKgdthMckNs08cUWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+SHsTNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+SHsTNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06C0C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748305793;
	bh=fbIFOkXyxCaygfD2DrdRv8oZYvrWelIuOPlXoxM/uoc=;
	h=To:Subject:From:Date:From;
	b=h+SHsTNs6JHjuVglke7NRNSZ6GZF7KOuY5tmfpV0310TAGXB4rFT2zRuV7IAJ8wre
	 jGFUA9GYQnlz2zIpRHvJG2xEDXZsnxtbo/7pikk6E70rXMaHUKhicNKdjhOTNME5dQ
	 swMwdFqD3wlyJtI8Tv3Dm9KfSNc7BdNzykjmRPiSIaR7uNY5/d7fzPVAriNdreHFaj
	 QzhFdJ+n7QQhCb5cjdYSntrA/NdTVpQmnlcG7zLUvUP7NdSS8IM7OJ//XoidmQEiWr
	 DeoP7ixohZyIuTUAl6/8sZaKhJRrRNtskl/WrkvGBjCj+/QNuOw/I5O07y4g3RgvAp
	 hfh/cILeUBGvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E82BC5AE59
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174830579357.3664.9717182718619019279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5736d082cec02c60049c74eb10ac3240fbe32be607a54ef02ba0f8a3476fc789
Date: Tue, 27 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748305793
