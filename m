Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3836426D4CA
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 22:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780353274; cv=none; b=kVBfjkjsGMcDunQ6dqlpWKh8BNguAXdhLWagZQ/yLjFlKPlpdlg5sK1y02BlW/p9oCUmj8NEBjvIj40pnOxWO6QOR1/50c5BO25AlurHFfRxmRY5OD3agszoHa72CrO9jHu8kzS8DOWPGkeLyp1SJope47lhJenlPneBYNFYI4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780353274; c=relaxed/simple;
	bh=6cxBIjX9qwU40mmy+lc9c4Tm+Ti9oYK7cUgF6ddUfqc=;
	h=To:Subject:From:Message-Id:Date; b=BsqO5mOBS0JkTcA541AUKGq87EdHrVkdiSDmiB9i24oNhMs79tK58eKFodmwZ+KzJpVqzt29yc3+6W7aUhwhnOiNay+bUcmigFRxy1/3mEOJ/lkrNyN1ZX1/nOeEZpvgO8hBf7uFoigMaJQ/MSZMRCdE6NI0o/UnkjpD90NXY90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5MmJ/df; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5MmJ/df"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6BAFC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 22:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780353273;
	bh=6cxBIjX9qwU40mmy+lc9c4Tm+Ti9oYK7cUgF6ddUfqc=;
	h=To:Subject:From:Date:From;
	b=n5MmJ/dfNoYREZWnlDXD3PL1rn/WG1ZdjzCp6gUIbAcbgZ19/ndJMA/7lKtBb+xkJ
	 ptM8nCqfjhEY3v8N0tjY13AdfN7+dadJti3wL5cKpPezCQTp4tmYlKfYbrFlp0Hr+c
	 rFMm4Xe8/KIc1tiXB3phkIgvaPCGu2vwyqFBFTp2UzjjD1se9RUYmQk3EMB/VLk4GU
	 73QN1c5t/ec5ZwUgDUx1HkCEqTGtCCjo+f1O/kmyAYNw8JF9HLRo+8zQUScFedsuc/
	 q9IXTpOWp9dWUMjzSaYnNtA1yXkafefXutaiutS2msUy+2FSw8koV9lJHAbvIMkRpn
	 b3qVV+f0n3DJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD477CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 22:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178035327370.20439.12566210040824956733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 079a22e75c06a2025be950ec1414e1c5679d048b359b71f0bb0f8c46a386bafa
Date: Mon, 01 Jun 2026 22:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780353273
