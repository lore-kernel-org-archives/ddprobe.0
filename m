Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADA02FF67E
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 08:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781511394; cv=none; b=mf5+39xcroDRwDf42SqXCiwu78LkXZvNbuvx03XJBkr0DGXYqgAtwMKOwtnW2CjF54VXCWEbjndCDNIyDQ6zX1qrHJ7/OtajuO3CgRYMqDK+/Nc8Td/B5pxK7CC/NU1r/OxEHOQ0S0sg6HrS023m4fmyWZ881RNzurP0rRURCLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781511394; c=relaxed/simple;
	bh=O7oImOkCC9BV/LFUGsVIwDBGvS3x8OUWp5UKNB/15cQ=;
	h=To:Subject:From:Message-Id:Date; b=SAo1t2PEutnjLaQ3U8544FgtXrTpgDfjwWbRyN6df9ewHTAobYy2CsvMe0EzZ47OJUNfSAypqCq3uPpjKOl7UVT8agn5zEs+gAkWXEVhA1kCD8G1CpQZ5e0dcWw5HZLaqQjwx9XTvC4RPavsM7WWikBmT+Yw5lWq9NPKHR7KUS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LozQryWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LozQryWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B56C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 08:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781511393;
	bh=O7oImOkCC9BV/LFUGsVIwDBGvS3x8OUWp5UKNB/15cQ=;
	h=To:Subject:From:Date:From;
	b=LozQryWSD+INyerd2XZVh8hArosek3sdiNFurkQ1R3T03x8EYLPb2kWCTmH7/KvrG
	 Z6VeyorokNpoIjlCT4hI6vLsxshLrIzWahGY9ZgEv0D1H50YkXdbTLskS+S8FM2XBJ
	 pJvaWh6cdtgmNTTPaGDiBWu4g2xdJr9jtAytxXDOW3Uecuz89JcFXGnfrVlXiSkHy0
	 GfKRlPhtpH+lA3J+k2+mumualWZQzpq7TjkWXlJSqeD6K3iBQzLwOauQoA2gkcSAEg
	 xne5575j89XnzSs+FI3nw7YgslIBbsnBvurTFLmTRUlAdJVfJlA+xIscw5KnXN2jZy
	 0ZQ4HMPsuktDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC473CD98DE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 08:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178151139369.31143.15820895914681379306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3410f8606546b01d7005956c6332b8a17ec3443f48a90ee9f9c83814bdbf12e6
Date: Mon, 15 Jun 2026 08:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781511393
