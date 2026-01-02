Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D36B70808
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767324834; cv=none; b=ELLkTlLIVYCgWMpeBQpKIUVkBqz5/CkR6s40xhbOofpvQdeI4/8UjI8shPT1hmfbq7kKXfeXO+rDXc0aU95zokmKpoXQwmsVNL8Hi4bO6yVpk3uvICPC3+BFX+Dfa/VicSmk9G3VR1Kt05Eu+mpK9A7CWm7ZXJOaaa0O7bYdZ14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767324834; c=relaxed/simple;
	bh=fHfvzaEs03LHUDGmikPZ7EaDPJFohy47ikFZIm7+Vd4=;
	h=To:Subject:From:Message-Id:Date; b=RWYiL4JcwRHNtZ4CORAtPn9pUOQmEElbP5heoHBEsY4G64+jhUG/yDaCaye3vjghnNuRiCM+hUIojrplpwCySsd6UyRI5ou+wUECAeKopUumgO3PIqrKN79qjKyd/diyB15QQOZqeICXIBkF9zQ95pJQg5u7Zgby5wCjHNDQX8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXbdZsXy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXbdZsXy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72A2C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767324833;
	bh=fHfvzaEs03LHUDGmikPZ7EaDPJFohy47ikFZIm7+Vd4=;
	h=To:Subject:From:Date:From;
	b=TXbdZsXy2S1UeosewM9tTUPXtCYFCHiaMMdxyQd9H4mML5EzWf6TEmEUg57rolYAo
	 2fGHRCqkRTRrKhMuT4Wzkv+Jd+hSaG+Zi7IiEKAXSVE2aN5oIT4CqgvKzYuEZQIuTP
	 ZasW0HcsY353+UZ8S2Z7rwM7O7gSasr3Nby91xlxWU382pQplcg23XHZ8U+t2ZUZE7
	 mGK/VZp9z3ouoCjaF8IdN/ysVGLcQSQQnEvhV5YDCKna2FMhrcDn7FBHW8CTngGZTe
	 JMtmETrYWuEp/6pP2ZGRpOjHCSeKbsi6HN3t8iNJnv0H3bV44FZOaJGhUrLVaKt2SN
	 pNe9Mgqjphq6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B3CFA3724
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176732483358.2794.1815237134699317125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a16b5031fdb1990bb2fa56017383cc402fd44862df7013448ddd27fb2386c1d
Date: Fri, 02 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767324833
