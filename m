Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070FF37E30A
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 07:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775028934; cv=none; b=JorlpfbV6iwsj+f11TBBH5oywF5H2n9WF0TJyAwu9fgarQF5S8ZQ8Ai3yykUtAt/NWlcohOUoc1JfoYEgBVVLxhEc9zeqhWONuJRrcLc3pCzlFC3onXfSX3c3IrDcNu421trftkhsBhXC5Njg/yQRc/hT6ZvDCsizRc2rXHY3BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775028934; c=relaxed/simple;
	bh=4JV1+OV6sd7tMbpEaB2hqBEhoq28n9qQ5YzeqhSbvGc=;
	h=To:Subject:From:Message-Id:Date; b=S02JhjeSEqz0M6Cw+NFL+OsoqebELOe1LOO2N0+KlHsgoxvFuLyhHgCQXB36XZasSUih092tHhVVCXumzJL3/5qks08kgYu3DBRoAGg1RpWMOmZlW7LMJruwgLQU1/Gmwk2gvmN8bVXLpVw9bNhggFqask44b6tGg8Nx6xWq9ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCZz6r4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCZz6r4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B43BAC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 07:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775028933;
	bh=4JV1+OV6sd7tMbpEaB2hqBEhoq28n9qQ5YzeqhSbvGc=;
	h=To:Subject:From:Date:From;
	b=hCZz6r4Np/mdJpmH+Q+Q8qUlGJ4OATnGRlKJ89fl2gagjZyhLZkQsonclt1QNnkrd
	 uWEhN0tgRxr8p04P8T9EiNZqikl6Tlq7BMdgvjF/VN9mPUtygPPNpIczcfWRL7LUyJ
	 Ef1usArT6Nw0ijMXQ220ZCZ/cvoVzE8ISksKStqDGxosErjys2648YFzjifHy2t6Oh
	 qe10nxP1sF3RlR5HIZTBI8T/LPKol4UBwD9ayRfvR70hrJtTURCDIxovNdFOBWZckU
	 ty/8dYVclKH7hGT2O4HN4qgDI2+4ujLbswN7EmJOx3RQs0jK2xnkmCAMub7GCKQQ3E
	 ClJmZ6KU9F6OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4ABD3514F
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 07:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177502893369.7551.1315044425341107433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ceda1566292594d71ed107468547ed44d3e27f3984f282b9a10c83d73c21d19
Date: Wed, 01 Apr 2026 07:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775028933
