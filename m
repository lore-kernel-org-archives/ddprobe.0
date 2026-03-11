Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3610A3B19A7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773214494; cv=none; b=Jtx2W/Ve2SrgtP/43bHdTMVDCmLGsuDERLGGVM1vNvpOX4zq7TlqUsVZgG98SUsxbv1ig5cCokKvt1/yGowNcUwvZpRwj3FOYtmxJC0qFgU6nM9j0ikMANryTpv0OSb5KIZwXde8IHhV2OLnvi6s40UlcnbH0zKhzpGI/iZdNzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773214494; c=relaxed/simple;
	bh=t+wm22Y7LgbZx6ctakOlfc5hlC7Tt7fZGOP1Srfkn9A=;
	h=To:Subject:From:Message-Id:Date; b=omkZaFwnpnjAP3lI+/lnGKEm/eCAs6xS14jtBWOP7THE9T4SsZp3MfIIj76uCogFeJMMYPygmFBHNMtAcER8iVwKALquPXQVQkn5NeVJBz0ye0Ne8edOsjHb0m6vu6FfwotpZmKDutRFg9TTt6vvr1+iWEuJsplgmb26ubETUAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KI+hde46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KI+hde46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AC7C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773214493;
	bh=t+wm22Y7LgbZx6ctakOlfc5hlC7Tt7fZGOP1Srfkn9A=;
	h=To:Subject:From:Date:From;
	b=KI+hde46wcsjmaWJWQqT25O4OI0NVKkXSk2Zbrie9Bz1g2CKcJmsp2BXz2/B9ITPO
	 ZftnVOWOCTR+w1uEBT2pzZ4BB/4BN1nnh8QsHJQlhO+wdBzFmIyqWAQkagA6aoHCpU
	 mim0bIP+WadgWmrDHfVrs8nErGvyX8dBSfstkBfl5bzaLlkZL/d5KB7IlmWUbJ2hrF
	 BPXd+Cx2eH2gLVTtx1JX3zj/4WVlRUFueliroseau1H7SmTb3RRj4AeAGF820PGdzv
	 48OtoGmLWFI2yYfq95LpgfrWxSHr7Utkssw/fa7gC6vs+R/PKSIALlUUpv/eP9uMgy
	 bmmO+r3SDjSkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4CBFD063E
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177321449357.805.5419877685595208300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a6efa7fc6baa9996b64faad6520b2bdae957f02680b22c83aff71489ebfc56
Date: Wed, 11 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773214493
