Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041BB277CAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761244194; cv=none; b=rcDBXBDtIyjf2R4N988egfqsRD6Q4MpxmQsD3qoiOOH2zhlaSs42NgD8liF8IHkCKc8PCbQYbi5I9w95WxRU0EhqlZdfazcxfsRFFNSBhMC69dPtmA3U7RFjWQPuCg4yiT7uO7AX08plWVkHEj30q+QTVqo2yY3dfjNB0hW8G0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761244194; c=relaxed/simple;
	bh=mvHf8WNSC91Y50E+vmKK5mCPNRPseEmVCOI+pCX+L5Q=;
	h=To:Subject:From:Message-Id:Date; b=Y7OnhdmViZX9Xf3eWnf2IvLoNIfxTqoa/ROYF0s9riYMr+q+c/E/n9wTQenBzxw8KyWLTk4ySrkjzwUcnk9UNKf6ShGFtS2bc3ylPmVOKoGTDpmozdE6qTCTdp72gG3gjE5p/Z5dJaMaBDSaYufpjRQqsoryE5OObkJhs32/9LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hma+uhp1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hma+uhp1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41F9C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761244193;
	bh=mvHf8WNSC91Y50E+vmKK5mCPNRPseEmVCOI+pCX+L5Q=;
	h=To:Subject:From:Date:From;
	b=Hma+uhp1VzZKnuN2iZfdcrYwC20SuerNza/XpyBUWhhLvbcDzQAvzYA6wdrEq0SJA
	 B8sky5S3EMbzHM71ym2JdxmpfIqTsxKNAU6+QA6qH1nGSs+4fyBEs2Gw4w6vIT7YpD
	 gZztPU6emEJUJ+IC7qWRWPCVIWxZgqVFQ5pllt/1zf32vtVw1x6KDZnrDq9L4rA8Qn
	 VzkydzYh8kfWpMHhDugMGqtzlaY7ljpDr9xxpCuFe9ODrv2m/X604EaUzDquntPGCQ
	 etFOy0Scqc2/nyO0DLjUkNvsbMywXnqoegHuhECCwldKzYmO7SdXeMF4G9CPT5hj8v
	 g0ATZGhznADjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE2CCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176124419358.5807.8558748487145974627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eff0ae47741d649917d9377775e921ffb88f7a149aca953124915c3ac390d952
Date: Thu, 23 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761244193
