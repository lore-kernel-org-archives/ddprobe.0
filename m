Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B28B204F78
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743517794; cv=none; b=AvPN3yeHmRUYuTffPXcrobgxokXp84kiZsNdmXNPhNS1NYFAKKof5F/cNBVpr9QU9Sz39jCmr/wBF6Zz05bRpkyOdGOwAh0aL+MHbCslu7E4RMR5u7HAEnH0A5pKIMiJYQ98EABzIpA7l6HSsySdjWhmnp7EM3ShVT4gGn4xxFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743517794; c=relaxed/simple;
	bh=zOQ4RZVkWJEnsj+Anl/5plTaPs0Iop+kVqcwIttbOhA=;
	h=To:Subject:From:Message-Id:Date; b=sttwV47Yuk6ounl393cAHaa5ICCImTao4F91aRpNejil/1Kgdi5Kt/Xm/6s6nLZ8uBxLtUaxwvRRDUSoCDeM6Srtc+57QYXnRhwhJV+CCVV9SsuC+2kEcY6g1zh0oO302qvpUIsQdgJu3cxTyv6sBRyHyklDY8zGruuBrtlQ+Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cr3TUs5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cr3TUs5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7329C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743517793;
	bh=zOQ4RZVkWJEnsj+Anl/5plTaPs0Iop+kVqcwIttbOhA=;
	h=To:Subject:From:Date:From;
	b=Cr3TUs5W+hqOEixF8vTze56+tifxsXnNjzLhUrJ8QhRTAnAY/Al2M17wnMxii6imM
	 5P3gXmTxFTgx5XgQ+L6DEeD2DIMr5hBcghrvPUPI1Od5VyRfFTF+rVyJiSynnCha1d
	 oym4484vKPwXf4xjAo/apoH93mildL5OuY1QRShq+SINGukCoLn1xAdBZjPQaI3kkq
	 0IkmgG+XIHnbXzpDRvxFKs1hX2nWERdh53JHuy0bEk5EX6tXS/sc32vpYY8H4uNIRY
	 +XCA7pXhvIc/oG/SJ+wY1RO44WcXk0X9qqMal+haMX7wrP27ftgnAMJgHdUCHzB/Py
	 UKWg3keSrdTog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B136AC36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174351779371.17271.9127373640652643092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 124182c4374990c454ca29f2dcf863ca06c34438dc767480dc0742f0a5ce8dd9
Date: Tue, 01 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743517793
