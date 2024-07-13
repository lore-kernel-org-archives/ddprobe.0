Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 750FC22097
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 17:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720891823; cv=none; b=jJg7zlU1kvTFZezF6umx56KJnSNs7hm/gznfNRqOzWDN+/FAfoGU3VVt+dKgnog2Ixd76Eb3t2LQutIeF0QCnDdiOFMv59HGMgYKTSGOElPHbVhbFkhIeHzh77ddAzjUJ6CCL0X51NtCvCfBNLlQWRGcb7iIyx9xn6c7p62DxPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720891823; c=relaxed/simple;
	bh=FudkqGTt0gu8+siJ0oX2xQBoioIRVqbgG2zftzWE92A=;
	h=To:Subject:From:Message-Id:Date; b=pVOotkt+rZOQ5sCH/SP46xX5Qg3RLWly9RruPzQ7nXdHnYPSlH+ycGTC1j+ehWGCA+3k+zI6usRVLviX+qns1Scap9GXxuAF8kflkebgJ8dSyDXjKfmKvANmrPg7EspBuTPmK6nltAZvDjEaWyJH6AiGlzsGHamgKNLx0twzFbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9sq8Qxp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9sq8Qxp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E5FC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 17:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720891822;
	bh=FudkqGTt0gu8+siJ0oX2xQBoioIRVqbgG2zftzWE92A=;
	h=To:Subject:From:Date:From;
	b=r9sq8Qxppvcq0herufHNxmWNCVTocgp2GLOyuOYKkg5HP9GRJsx1DdniUzRNYqmEP
	 gcZGcso8DxvwLiQl+5nVcYT4t7lPLkFy5m/Ax4yFHKBclKYZ8Epm72W3Lu+MSq5URf
	 rAOH7ytSHOrnPecQTbfXIhsRs0K6jMwIwAoEQ4UBVyBq3EWrFu9B7dvHEMDiCygJ/V
	 ruWtlnuL1gxVlioO9uowb6gWjXeBSOzAQyVggmI1aAaASPyoc6QLkKSNc54SflqqG5
	 L4EBSDTaP6c7/NFpsSwg2/t8O4mWwf1Qvb+m6xcZzHTJVD511+d9il3Vox5o1bbZ9+
	 VBpLC9aTSLP2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C28C5C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 17:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172089182276.14120.6499209696666383584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31a17645da4efc7fb2a61a5779e00d68c0de603a8dcf18eb7caee84bcf66a1e0
Date: Sat, 13 Jul 2024 17:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720891822
