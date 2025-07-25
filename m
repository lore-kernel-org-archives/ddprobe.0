Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286F93BBF2
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753461594; cv=none; b=OjU7DdPhknN+b4cQSR6v6O99m4pj3PUSC5Gj4siXbTNyJ8Ng6E5Q0yX55YtuoFUC+IP8qRBME7EG7x6zt5RkKpUg54KstlbIjAoet9KDNZ1FrgB4ru8NZA3U7wOnl3IhpQZEaS6wJn01Aazk5WwANlxrAZJs2yE6zb1Hr/NYq0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753461594; c=relaxed/simple;
	bh=ZgNRuIvDebCFDS9TSQ4Fkp7UZG4oTXatLe78lsvny6I=;
	h=To:Subject:From:Message-Id:Date; b=CBrDHJRHDgidCoqEarL33ZNzzH+VCW7O4u4we9n1h6Jk6sRFiqNG1kOFtXITg4WSlO/FkV5ZuhsQj/2RjxPz9T+CF0zPqiHjNEBvH6GsXOrMW9jJ1Wv4I4VyO4sylMuKwiyNj/STpbe/a6899N7eybfAB/+dPnIq/bkuVETVGcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzsaYlAR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzsaYlAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3533C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753461593;
	bh=ZgNRuIvDebCFDS9TSQ4Fkp7UZG4oTXatLe78lsvny6I=;
	h=To:Subject:From:Date:From;
	b=lzsaYlARtUUQT6gOw2pNIm/LdAeItbVadtMMVa5f5PpzkfPrLLWhqjIS52tDPirkB
	 wj0BTbZMPYT+OonbUfvqEB4WG0uk1VQCam6Z/j07+HMPyh8EOMXqutfvAstUWf0dh7
	 iMqHO7vF4eHivBQSEZVafcoq7qlxf4C9+ef1qkHNd0YM3bsVJwshejvrPayePGVi8q
	 aTWgX+aVkzh5UAYYxZf3/KGoPDDuepMPuMv//4ofr/jMTQOTsDoGLrI2lNby7h2apH
	 V4twDAEPjqdFpur+onLCCS7xZ/TkKrMfGWgtoe+stZEJJzqBDCxna0xWEpya4Jd2kd
	 nn6Zp5tpDFdmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9177CC87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175346159357.12483.10866329473564000678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce802a75e8559d34d2ada673b7393b5a5dfdc1672c1ad7d2a1f229a904fb1d4c
Date: Fri, 25 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753461593
