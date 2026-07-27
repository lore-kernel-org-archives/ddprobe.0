Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CFD2379982
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785142834; cv=none; b=rRkWju44IhkD1IbbtrCvXVEz/knoIB2RmmRsXwRLSMqAua7YlTPC5eww9F28bwK8s83cDNez1aJQ1Lg8pFB7ePI3f5Vjc0ySAb76rqWcsj9Lz6tjyrv9hxhrYz0DjGjPxTeoVBmBbwkxNYfBz0sw2V3cbA30EulBnkdy7V49zl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785142834; c=relaxed/simple;
	bh=zeDoUwY5xKOUnEDUp8i7vysDp0LlU1j+u5GywWj3r9Q=;
	h=To:Subject:From:Message-Id:Date; b=nmFaO6PbcpM0pYN8ko8Qlj6JU1nIujPJMxLxv0yU53oWK5U0DCNgIEhYTpbnt17zUadQ5w90v+gctLofLCkqTbAdl4XkaFVLqaAt1oHjDg6h60zlbY08Pg/Z/SROuUVOb2lGY+O1YzNnM9oqptW+zSKg7pxAz2lGnpy+5I0IA30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSkoya6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSkoya6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDABC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785142833;
	bh=zeDoUwY5xKOUnEDUp8i7vysDp0LlU1j+u5GywWj3r9Q=;
	h=To:Subject:From:Date:From;
	b=sSkoya6xQVEQ+M3DgxB/PsUY3Tvm9nw/7KuhZu2hvBpfb8Xg8tkFpanX2a23cxCIH
	 42utkiIyHcnbd2QB/yhqMzo13defQMEIoohmGVh9MUM5/i8E9mm5ce8H0CdrO9omTr
	 rM3EmzF1Bl2d9EJ2wxsvzhcHAN8mY4UjXYCsktVPw4hD9k1l738OZCFyXbX3BAtwgS
	 yOkFxQU04UXyPyTOxpqb+bZwk5NNE4uOKWZ8R4oMt+aDK59LAtzfM8Zjcyj+PV5NoY
	 a6vW22ubHXNkoucZ9Fl692wOrgkoqZvZkbBWTQP07ecHiqOSPzGBHbGfkckogFIRty
	 lDIF/7Hq/CROQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E6EC53219
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178514283368.31755.2693998342987480354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 775db042bf11b22817e523af49bd0c222135e17826ac08a5d7551f3de8615f6f
Date: Mon, 27 Jul 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785142833
