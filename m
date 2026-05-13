Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4772DEA86
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 14:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778680834; cv=none; b=J59PgoZNp/P9B/3w1Xdg/Yi2ts040KsGIWPdmt0n8TK1bJmz3hQ/bb4mrZvVsirNWk/1hf/2g5bpYmYK4Kr/kNfT0LhQ/3QvcVjX1Z3PplyPoxLhkVhRgDzZEpuvJj3uRq/kMVs00FmFDMm6fdqSGLJXqfxrE2dmRs+w8alUQi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778680834; c=relaxed/simple;
	bh=avJ0KzwKCjnbbW5PSAili2xowJMEuTinSqfWV3AXlj0=;
	h=To:Subject:From:Message-Id:Date; b=KEJl0dBtB9b3N/8MmrrgeL6JBJcuJ4X5mq9B21Vigb0vlvRUrb/pIDCnYz5BimggWzs1f271i3ZCWX4I7uMKFpvg4hTcMi7GEqSZFgLM3Qsnp0S0R4y7qiZPgW+dCJ1MKfaoZk1HEk7y+DQU5mjzjOW5xNI3gPhOc7bKJ/17rSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLL9+WrB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLL9+WrB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2790C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778680833;
	bh=avJ0KzwKCjnbbW5PSAili2xowJMEuTinSqfWV3AXlj0=;
	h=To:Subject:From:Date:From;
	b=ZLL9+WrBqR9czhbhxJ4TFslrcsxQ9uTQ1FP3Pblhb21FjDTFQSwaarS5CmjN6hgDC
	 PZsShylNZsoaAPfFVTHOwvC+zW53o2hYwqnjx0aTuXjypcRxUq/cB9E4BkCWJIof9T
	 tPhi71HwIEX5ENcf3Y/htnDHLyXRi+vzs1G2dCE4IOXtfluOOQmU5Rc0sx7qkZJE5r
	 Wcu13vRU58aemSH/3Y83THEViS4mlHr/1NJAqg7soGc9yM4avFV+PV2mdgGwmDMDWT
	 luw967qEySMwMGRUGPsA2aMMx9pavfNAdibL/1j2AAmdXVhGwefPgD7qRN9XvXH+ev
	 wveYiQsB3PHHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF481CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177868083370.21236.14924054922972760033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 415c42b1bcf33662330678f24be883799a3ecc606803e8365ca949089e3a6ed4
Date: Wed, 13 May 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778680833
