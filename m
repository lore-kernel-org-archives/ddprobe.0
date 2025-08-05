Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C5F2F30
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754386794; cv=none; b=hBz1SCXjUF0N9pZBFv/fQ2t7d+2IDyNDPLn55rRnA2GbFaDrzOdlVUMKq1Blnb9BU17TYJ39mYOfc0eeQblkZx1UR79/SK5L1O+gUfH8X7zVel9loJKy9KdPryi2UJWagdJ3P/DloaOxkWFXc2kDEeIDUmKbGGNV4RLx3EXqL7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754386794; c=relaxed/simple;
	bh=J5hF12SJq005vYrtlCiHqlSRu1ZEEoZ5mxOLvuaiskg=;
	h=To:Subject:From:Message-Id:Date; b=pDlCzvRBQkiv6tz7V8y7r3ya/ljKPLDFqgZqs1r0dt3xAUJLhZBTABnhAaMaKh0TvKCrKN0R443GHgNdT6GQAlB2cdwlE3AiVk3EPCGkoloUTk99nLRfwk0IQk9d/eoPiR+kx2D/hbgSEdz1BKx0w0Hadx7evmoQIncMBAD52/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LaRfs4DT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LaRfs4DT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD4FC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754386793;
	bh=J5hF12SJq005vYrtlCiHqlSRu1ZEEoZ5mxOLvuaiskg=;
	h=To:Subject:From:Date:From;
	b=LaRfs4DTCCYvJDtdTIrMQTPA4i++M4h0StoMZXnOcXvA/SHctIy98GC2H0SZZXhzM
	 N2IMQcJ9x40ikI1Q60B5fcCDygYWe4RKwsEBSN94xoW5ZqV8u2s2o67uPUB9HuI/0F
	 KvWygVqyLM4AY4gJF8NDHLZT5uR/flUXudqar+haYKQBUaKEKMgOAPnvJPK/VO9lq+
	 kUO3pZADru858jQA3tDoowZMOwwTSlyOqbZ69/+xwr/rIil2TZ4gqC5I33JzLntCK7
	 QNYy+MURtlEotg6Uxttx5/BmKlZPYzpExezhvihoZn7ZbrD2e4FtP+WJDKEqet7xtY
	 U39oazOGooWqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE8CC87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175438679358.22641.3274827321971797391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef2d1ddaadcbf4f776d23d89825c988d10de029acd5474ee24ca9d4f099a1885
Date: Tue, 05 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754386793
