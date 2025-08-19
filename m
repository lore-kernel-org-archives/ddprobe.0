Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6041CAA79
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755587394; cv=none; b=C25Kl85cDOoEHYPLwMsDqIzc49/vrWDUm3X1XotmtdJlkmg/EvXuJXCwQFsc+xDoz6VuYN3RFL+sxghMW2BBC0N8+d2+EL3+/tPQkUcjq5dUumctVwsvsQUd7V0lqCfMuIIzyI5zSbJrXaQnn9mhc+ETYOjyRMY0UAFeW19yHO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755587394; c=relaxed/simple;
	bh=1tVMMioTphb1y6RPscYCYlisMH8efqobeR/4YoQhx0A=;
	h=To:Subject:From:Message-Id:Date; b=pM29IihSN+0SWvZ6uvS0GbJTqVnPO4mM5Pw/9pd52qMp6iGrMIE4uw/yrzjF96KgwsdHg3Zp7T6YYHzKrahChcaIb6snTGjzpEIZ/VjttGeieneAzS24AwH4LTvG3WTVa4cih+U9EAwfDMfdc9fgmh5vdPRCZ1gmbtuv5zNITJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ASdzZ/tO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ASdzZ/tO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C33DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755587393;
	bh=1tVMMioTphb1y6RPscYCYlisMH8efqobeR/4YoQhx0A=;
	h=To:Subject:From:Date:From;
	b=ASdzZ/tO+QuiB9uynQxVpm5ZyiWOCYH+9GnS9at92LviyQDFiWN5+tie+eVNFEm3m
	 vzMqdvKDEb2ogwgqzxlDP82ODfBcxXdHLfPcKfoTlEu5XgBa5by/n/Z1K1FO0FDYzu
	 EVOAgc/FUj0g9C8BB8Cc0Neu2mWBwWHx7TV449qchzx4ldZ/Ax4o8K46dB03JwvDQ+
	 UcH/viLGg5Wjo2vy5fK+KIKFUFAKW7aRfFmYRPTFkW+P1BZaLuai08WMSGXn9a2a1J
	 Evw3HdtmQTG/y5Oaf/FN8hVCtBrZfuaC3yuY5qzoIA89NsTQ3//7jjRVqmuIaOt8i9
	 nuLw81fTJ/YGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0F7CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175558739357.26090.7488684852220879205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 771f089e595e9e9c1bd68f44907e613f5f47b40f87764d30e88af4ae7b1df256
Date: Tue, 19 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755587393
