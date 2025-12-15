Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B77A1DF75B
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 05:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765776174; cv=none; b=Z59+BgNB7ZVqnVWFvGnhLJopoFApg4ltYC7ADmaHeHpjXWH9tVtt23vKWtCFSCQQFS2x7ubLRSCU+LRFsfQlZHjorSPcyIid7b9KxoN/aiaRhFfdShoF9p2sVpqegUZqI6OoiX/t0aoLfeLUMXNXGIvb2UJMnoWl19eCkihV4ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765776174; c=relaxed/simple;
	bh=MbYd5FGuwreEgLQqXMP2SqTA8gT+YAkOjpHvgKU3hJc=;
	h=To:Subject:From:Message-Id:Date; b=DUHLUdnEKLAAoepPLXmgjAsAjiD9O6NFU7B4tRuFjz/nSL3r+W2Jtkd3F0kU+U/3+cJgoIIhwm5iiZMoO40xWzVq7pgwvuzVpY+MVgexDa042TQt6xYfEb4yNyVIjK1iW1WBBbaUPDDbHOI7upxa2s/5S0prTsVWOSXmTKJWNMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSNmGfzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSNmGfzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F3DC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 05:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765776173;
	bh=MbYd5FGuwreEgLQqXMP2SqTA8gT+YAkOjpHvgKU3hJc=;
	h=To:Subject:From:Date:From;
	b=sSNmGfzZycMhn3WYcrb7M1UNi3+LNE/xDBAI5OzPwT6RwQhDieCSlQwqmDD1XfKtY
	 hYrP5XByXOkhwIblNHJKI5a7YnAB6sEVgIfvT5lJ4pDn/vCbwQ8GaTipeSBK8+05Po
	 E/+TKAgsmhGt+gDsxAUb/c1X0LJ5blTnNjUvDHeseA11JRuRfvdEPhyfMmagaOooYs
	 m4R3HjK7lkeeE+I7kvWA9aRRuB7Z5XCQvl1v0K+GiVQsBxksPory1/RTKsGwbW9JRi
	 wpa8WFxpDtebsNyWIDjHNJbsC7qES6c3o2xFBAp7LcIpE0UsZZd5ApDep2e+4PUMEq
	 zQxetlVSyGFJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94295D59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 05:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176577617358.27033.483831511906457815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4baa29b05072940147ae6d43630f0cfd2c66e68790833e10305bbead0162810c
Date: Mon, 15 Dec 2025 05:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765776173
