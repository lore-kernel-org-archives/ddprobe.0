Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A721158DCF
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 20:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780863874; cv=none; b=RN9pojFIHmnPf1kk1OjVfUlv3GEyTs3fkddng5rjgsANog+rRQ5Yu+DZoYsc1MT+27sFllTER80Eu77q3lI+HP/o7kykCSEurYaGp3ToheZDBEv6vPe8y1Sj3wIO2645UMmtWhcKCBV3tEI+1dQXhDY8ano6vVsHjZWL7qTPwvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780863874; c=relaxed/simple;
	bh=UBMuXJ8YLwagt6go1nDlDqrldq9WGSA5Wjs+OiSPqew=;
	h=To:Subject:From:Message-Id:Date; b=Fh4TxhbMC9dB3N9sJFjv2hZz5ZaO0jYYVKqune80BDQ6eXdQwJRjhhXml2fTcO7TvJ6ZeJjyeXgiyphZKu7lSE3Gio1MgbCr8vggbPgJh8Ir47kJqyW80P7TVwuRpgnn2A4z4hEVKNHhQoKH0wLuYwCWFdpOLZcbaMGJ+WejqyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=puGurvgZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="puGurvgZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C87B2C2BCC7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 20:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780863873;
	bh=UBMuXJ8YLwagt6go1nDlDqrldq9WGSA5Wjs+OiSPqew=;
	h=To:Subject:From:Date:From;
	b=puGurvgZiccj6ImfSbCWxfHYzEOxX5mcOBoKQNIKUixQS8+TYuwe8VCB1F/5AMTbr
	 5pfcT/ZOkYfOXEDHjw/eKia2HTTy+OO++us1OrT4n1DvGwgape5UJdhR7kU8VgX5cT
	 yiPUuZq3Y3hvOhPe+yLmZ1Uu8vPhsUsKGzgG/xfuurWcjUQHUzNc6po3zWtthIETv6
	 uwXK9qOnug+XCCVdcLH/7quxcq/naR2KMNaX05ep7QJSgaKC6MmUjcz9Ihl1rVIWRQ
	 cq0r/wlTzdbV47zoe/VEI3qHSnJ7QkCb7XPhWNX9+Xnft5/zuQukoxd0+50ONw1ZrI
	 6vXIcCnRmcPQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBC2CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 20:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178086387368.23099.6585087278763740341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bf3d3b077e25166a4bdf3c552862616821a4b584cefd1b1324508419a800a3b
Date: Sun, 07 Jun 2026 20:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780863873
