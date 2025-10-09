Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CDC2D9EF8
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760005194; cv=none; b=KQGFQhVvboEYH8LrqjzJmi4496tEyfHWve+XOwSZoJp/pdgbUNyReiAmvYBgb6pynB2ZV0ievI12uwivg3rLKG/eK40fTWO2DZULuCPT/FZoviaMGGIW4fP4tArIC/J4oiW5L1hqugoLMn3LvaeONr5rtEBD1YECU/rQ3JbTgIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760005194; c=relaxed/simple;
	bh=Tp2ZmI+372SpGiFry2fAPO2e6ERB4ZjMX2ROz/Tg7dU=;
	h=To:Subject:From:Message-Id:Date; b=HJNgi6J9mFiOo81Pepzp2UXREWo+DERb5dEqfFOiD1NCO3ik/trpi9rraWDXLt9l5E7Sv0HJOTBf88DIiygbh6q+BBreY5G8QI1i3W8U4H4pQiL3l4W3EQq82+Ut1EsMM43Hp2S+A+VMJ1hAuBTUgohoXZulc+XBFs1SlFIJjmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LoZ9e2pJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LoZ9e2pJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C27C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760005193;
	bh=Tp2ZmI+372SpGiFry2fAPO2e6ERB4ZjMX2ROz/Tg7dU=;
	h=To:Subject:From:Date:From;
	b=LoZ9e2pJgDE+Q4X5/gyil8O6KUUrHn/cov5QHQV92KXHsrGX6SDLmM4gpM9Ql1osV
	 +QwjtlYDwaTsAd2+gOFC86Y9H8y25hG26yoOzb7If5oN11dxADgkUo6671jzmIg/fm
	 Ol7ahFAg11J2ifwSHwX0x0fPggEmKkmGdWy2LMg0QcJcTwGDTLXvMXwA+rmc/QSPav
	 +8IayW7CzCU7dd53Ly5FcgOXrQj2wLi2FO8gdb4c6i346LEB33rlikP+qBzh5W3TzF
	 j7PpXTQ7UmGZc4dImcdgkE8n3JfEs58DS/vN37X2D2M01l4j2L8Gs+n8xeiHr1sGfM
	 Ap3cZqjg/ntMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90113CCD187
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176000519358.24176.16610095118883796316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b5778906495e53bb18009ce0e0db186a3896d0d7fdf360b5ca080ea10095aa7
Date: Thu, 09 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760005193
