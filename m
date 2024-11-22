Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DD314A84
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732273554; cv=none; b=D7zWz7VHrUXbqbzjvRd1DPkzuo6Ux8Xb5OEBJNC3JM1v7nFa+ZeyX8oIv+JRlUpXoVn3FWfXS8iKT5pizOhVSpLCfIGquiL+wqy/AaEUWxQ5fzAXMG+YkxASZzYzqELomqJsmkWG4ABsUG9yQjCOb9hGVAA9mH/75VacE800wFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732273554; c=relaxed/simple;
	bh=ahSo63rEh7yzoGqNSaxgTRhVUQpkv8YN/EtQzl2kgX0=;
	h=To:Subject:From:Message-Id:Date; b=KEQte1748MijWElOzcysTmwjCCfedS68Dq2J3HI79L8VIJ8c5hg+gUx3nZRrbrQOWYetcUOpcF0VA4y2vvFoPyey/cU4Hya3ZlFn3hPZhk01iyt0BaVxSvLjBl6b7cS1Auj8Q7BtUbGjiakcB5zVO623MpMIYSvuzK3lKQgANCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAB0uAgo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAB0uAgo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B91C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732273553;
	bh=ahSo63rEh7yzoGqNSaxgTRhVUQpkv8YN/EtQzl2kgX0=;
	h=To:Subject:From:Date:From;
	b=gAB0uAgoJp/+r0WAZNpcsB4Akna8lDVGOL3jBL6PcJNU+P1NnDB6fQ7Yi7nqc69K9
	 hkUp4YzQxsLTZ0efVLHHzGMGpu5Ef0tYWudtQn3TjpdIGASjgK6CT8otHyBgiMaUKL
	 A/4BtBR/qbMvGemrmqmJ/ZtvHOBNWtQnKqUDvGFcj5QUZGQgs5atU+Ra57jAicrskl
	 7ofYMjP2eb8JbP0em4ZMYYnTST+Ea0pQzHENva5jt8LvahQZBmT5zTEBK6iG/QzfCA
	 ZpLdxXyElLVlcQwWpXV3NggaE2BnSmA7Wcifc6jrbE0dfW9W2PzjH7/8aBQ9UTwBed
	 uV7T//UKe+xkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA49D75E25
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173227355364.10715.15438553458574730503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab10e7ca6cd7d3d85ada0bb3fe13e4c48e23307736bebac9f2875df183f2c964
Date: Fri, 22 Nov 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732273553
