Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3FA189906
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762657794; cv=none; b=c6cu7cV/btmBx2NtBYQA2aYcBe0Ep4nl5szPfh5xoYjHWhpxVU95R/fDzHqgiX5Kdn2V2fZR3u88j7LbFaYrL7mnDe3I0T5Vh2TI8ew0nJowGgIfLcpSNKgoJ4G57KjeTHf4DpW2y8+dzTOHDwd8MUaB0phn8L0rlffhjU9gkVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762657794; c=relaxed/simple;
	bh=v6SsqIOhwtmGXF0uWZ4PXgmJpX7RdBO/XsuhI4+Jjps=;
	h=To:Subject:From:Message-Id:Date; b=AQGt1sHK9C8robE0l5hNP4BlAcltnkzUS5lojvNtkhiaMF4kgc+VGXHMoCRZ3s0zXdEpLRHkClhrvA6ZNP0XIhcGt120sqZ1T1lQHwDofNeZ0odTcX0k7UZVwVdE2mteKbqLKbQ/BgJAPO71tbREcArui13wJkqA+Gg42gbAatY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZgN1Q7O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZgN1Q7O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE448C19425
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762657793;
	bh=v6SsqIOhwtmGXF0uWZ4PXgmJpX7RdBO/XsuhI4+Jjps=;
	h=To:Subject:From:Date:From;
	b=mZgN1Q7OIWhSqCZxAyHX+7wR7pzfJHsZzOLjjqwsbqL43RW/Ote219BsU/t+F8x4I
	 cnIQ2cu+2sk+gApf3b9JVFS0M/Qon2BvQhFYcz2kRPsNcysuEvkGfOKUeBD3nivCm/
	 8DmocfsbJDtIheUVHaKSsKCD3isNKwAXWsjxIqT4o9EWXF4V/n/k2mSm/vppf0i+nm
	 voPEgKjbuVt1TBC1vVEpt8PGfxdZTDCsKQRX3hT8y9Tj1HV5kzRhKVYbmHX/V4I8Bk
	 9sro1xrHjVXlcAX74pN48H3AqSgQSHdH+GEb9h8AVhLME6CsTBH3qjr+Z+FY6cIAA+
	 L4HCFwcefk7BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A108ECCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176265779361.12862.12919429941432025888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6421de6271cbe98e934346dc8b72b3f1ab5f05f2b243711b0c6e325eb442a50c
Date: Sun, 09 Nov 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762657793
