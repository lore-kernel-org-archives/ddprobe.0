Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BB04A1DEC
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788457234; cv=none; b=t8QL5G9OLHRgqVjJUFLfomUS3tYOdrTSKo/ys+7o2S4/5NIws5AyvqTwfDZY7BnebBf2djzWr9FyoA6hsZRC32TOVgJNV1E/pRUJd7Wtdnji92lgrjRsguM9E5aPG+G6rgpfa3s2RXiBtYq2S234j6TSN8P2MjcpqW+sv8XCb+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788457234; c=relaxed/simple;
	bh=psuvuJDJ/gOYraL8RLhKQB1e540FDr+My5I9k65ZGk8=;
	h=To:Subject:From:Message-Id:Date; b=HLM+7Oy1K6RjJVKL02zo5BMN4D+U6KX5a/hIgrK44WZ3Z5zXkdrop/kAJEmFfZyycA+dYpQGmkOkRiWMLpNQq7GNXYv3d+dSTbS5grAEqdhjofdVnAssvxp3S3VdjMOOgcW4TVkdJuUdLVyXy4B3zhIsSQyPbi1yPmXcwLT5sSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTvcMRfn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTvcMRfn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5932C2BCF7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788457233;
	bh=psuvuJDJ/gOYraL8RLhKQB1e540FDr+My5I9k65ZGk8=;
	h=To:Subject:From:Date:From;
	b=lTvcMRfnJw9BNaUaW3NpUe2Yu5go8w1Q3WdkJL9f8kY82N3rOMqmlRs0ofLIprlV7
	 hradFrYO1J9qrBWBStg5scXmfAN4SvHtA1/jO7NRCOlj1+YZ7Z5uMkAbddaJimVFZB
	 fQXMDHgOfe9fLnzU/Y1C+dl0wkrCy4y5GQHe1rG2XqKvthMS27Sllj8c1VixbpTP2n
	 MTemBll/zlq56luQCGpNcklrtvGPhhCBq4zspcJJUOgsoIVh489RMqoxry1MdT1NJv
	 B6m44uYk+bzjCOZJR1mG26rW97Y50DGpRErrP3v59tAUGCwNZPTe6Wj4tbkX1sjko2
	 VvplbrXidSaDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3187C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178845723369.2673.15175340016778527990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252df979c858744a43a7a48ad33e3a43e3db089e452b4c92c6c0df3ad559928f
Date: Thu, 03 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788457233
