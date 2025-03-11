Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52FD815820C
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 02:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741659534; cv=none; b=hAgneoMo+oiqgvOs2Za7XRqVYta6JavSnyqqPQTI1BACGwjzGtx6dwY0ZTalFRszOvi6KCCEqQs0cbfhpSg9WvmoU3jC5nSjiMABQs7heJ24I7ST/dYXxDXVAXj72GVBdhjXzxrGVxmklMha3k9HhHkhcdd63mEQIZnFFdtHZuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741659534; c=relaxed/simple;
	bh=lI1XFUYCAj8/XriUWmO1UCjmNn9sOh8osfq7EOx2bWo=;
	h=To:Subject:From:Message-Id:Date; b=CEejQh3BAonZHx8fBYV0WOXcf42Pc1S7fOoyDVE0yDqY8iyuXOgY3bNPTwIZ9PsKkVOIlseOgaOKsJV44eoKt0XVjQJKQlPOpcZ4SeD0U1QIw6SEO/frTQGgRczURV0shWa6J+mFA//K6waj3QoD+7N6RCAMYmLkEu6K/RhOe4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqqxAPJp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqqxAPJp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C66E5C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 02:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741659533;
	bh=lI1XFUYCAj8/XriUWmO1UCjmNn9sOh8osfq7EOx2bWo=;
	h=To:Subject:From:Date:From;
	b=XqqxAPJpNviBX2Wz84DFAt1X1T+oA+E19Be4sVjQWftcf+KWiRJNyfA6zrLRX6XDR
	 rms7yl32ofKUVjb/qStVDr4W6ABNSbYUopkq2CDHZ7EL2rWqjxKt/weIN2x29/kD+i
	 Pne8nKLdyXGqoMaCtLsap5Cy9C8UiaEG4kIzrnOXp7L4WkHbC+WJsSxEDCL50gGkAm
	 oAKkXVD4UIDSdVjmrHVDzs7fGcBUy3APO2jdzlK9mE+BQe64Z5xG4ZPraqIVrteSH/
	 xjPtY+gPH/g6h054EOOzpW4iXa95J+0ScCVQ55MKvgayNOWrwy9avSBfa7b+zpcNqW
	 3KYFMjneNChgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8221C282DE
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 02:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174165953361.21134.13479647618499637028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebeeaec94da0560a156f6f2923f8b212578a8018c4e388a11917d73f77a7389e
Date: Tue, 11 Mar 2025 02:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741659533
