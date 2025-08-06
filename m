Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0A7215F4A
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754477393; cv=none; b=Pb1E/uuZ0TrKTTDrt4Afb6MZHY44Y1XYjuXrdxEnwQKk+XFgJ+RNxwWnQT1vbmp+7sk66krRG1NtTktPGI0tuTJCTmb+w5dtVExuIHEQ3tUd7XIbGhemJKxaECcFlcv4Mx7JyxWJdesdgAdPcunQLxj5O8SybP/6OaygJHeWpFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754477393; c=relaxed/simple;
	bh=q/iAzvbYnA+inOXAxYxs/C4fykTPbYPLOwLN4xJnUYw=;
	h=To:Subject:From:Message-Id:Date; b=fEXABJW8yEAchm0IMGGPN1ohCDX0xsAEsK/mV7LxsJXagyT5wtcPiHQeWZZbnxhJX4xL3SK1ACpRed1VCRXxWCOv6iPOA9aj4mpyqSIWM3Ggp5OyqgihMnA+repHIk2yGRuC/Ae/CO6NkxtQhMp5HLdlK1HHe+IX9ldsLiodhA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zq0OeLR4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zq0OeLR4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF2AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754477393;
	bh=q/iAzvbYnA+inOXAxYxs/C4fykTPbYPLOwLN4xJnUYw=;
	h=To:Subject:From:Date:From;
	b=Zq0OeLR4zJqez92JDX0uRztBdnLvWnW+kWSS5Akq40b5hk4bi1OMs/ZJgTFcYFu64
	 pdEm6zjiCiCl/c1zeLp3BgKAXIXshuPY8/jZveaRtPt5i5nhFu+SbJOfkE4+5useFV
	 egIDqnVzvdXUgf2WKs1/V6X8u4A3eKSe/JWP/V8oaaC875gsQ4zWL5xK6apAMJDlbf
	 pkIJM9F/+dK/Az5pz8GPHpXMOop3WnzYigmy4zFFjRcwHU86Zea+EG09t/LcyCBsjz
	 KLbgu0dONfV0sCyid8nk7x2L7dR9km2CF5iYMnlo+4P3Vvn3xdiUf8fZC5JcWGik59
	 EAD9xj71p9fbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF27C87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175447739357.25566.9278645043984119658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06c6b1b86a965772474e385d2f243e4fb6c8886b9cb91d7e5cb97f8dcc025ac9
Date: Wed, 06 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754477393
