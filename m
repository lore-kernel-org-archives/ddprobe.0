Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4423C1CAA9E
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 07:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740729534; cv=none; b=Z9qiQr862DdsRSTpEtu7tQo72c2s8bLUBSSGkCweVSjAN0E+8wK1DqHem0mNgIYAlEH0SpAO5ySP5lqRxWNggFpqKbjUatq+908ja8Q99anuce8Y6hwGoJL97HVk8xLPiYUKCcl6JBFcb7e1eFRaimf4RMYIqFw4JZzkdn0yYl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740729534; c=relaxed/simple;
	bh=mtopunbBJIiGAfXAFt2mhyZ2CUCs75eLrZLkriImBfw=;
	h=To:Subject:From:Message-Id:Date; b=pzUlBYEdrLvMn2ICtlcfjWKVSaXFzezJvPrfhQrNlKR8Z9wefIGkMP56R9jWUxWtdN0x3oPxnvPglfGZXhF2YOMWOPxGVc1210vF4kjQaB0aFRYEs+/unbBdSyVJq5ltiYOOGIzbas38TeFB03YlAXtvlpr0wQuZ18Eme+DyOzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hqg28Hs5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hqg28Hs5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AFCC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 07:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740729533;
	bh=mtopunbBJIiGAfXAFt2mhyZ2CUCs75eLrZLkriImBfw=;
	h=To:Subject:From:Date:From;
	b=Hqg28Hs5m+DGVztthXDeyU6Q7rrUH/SwHsVDC0ksD4G8VKFPCZHeg4GQuKXYwxJmQ
	 buaPoadabObzX6Wn4gaRj9oMRm98LK6n++zGB8oQqhVJ+8cI9rJ4VBO+rtmaqU+aKU
	 ohtauK5P+s883CNbX3tvKuCoRyRLPzlXKO+LrRdoEC02VZqtkYSX2zIW3yHgLpl24O
	 pxQMbJ6Xx0D1kuHPEFJxUJSP4TOMpYMKWgxmw0AhNp3s+b5SUbHF6+lOfniQiN6XKc
	 Y7ypHIgxH1Sp3cOTdifz28I85oJz1pfmT3KC7IplBlvwY4XlsxBXotiNVQv/wpnbKY
	 nqSLJMpeWYCUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96960C282C5
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 07:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174072953360.9299.16868587764047057019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45ac8ef904fe655526a9827144142bf71fa7c1cfee3eb733df6a05277e9d4850
Date: Fri, 28 Feb 2025 07:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740729533
