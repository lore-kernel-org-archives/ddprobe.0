Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA013BB115
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792306234; cv=none; b=ClpJXVWpLl4rad+oRX+gua4CuRtzgPA+9ldJgWlcuAB2sdEBIZipqPV4oQk8Qscpbotl/4pZNINr8KvFL2z4Py/egcCWtqhYJkWA/jbsZMPp0ISTpWjeHAxwmDLA2aBtx8czVtHFX+fL3P2vkmY9GMp8cKeGdaohaPJMoW/V+Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792306234; c=relaxed/simple;
	bh=dNOPICEMnr+Wg5U3STQLqrEWTS+bP0bkjZ6KavmTJ5o=;
	h=To:Subject:From:Message-Id:Date; b=RSp2zZy/gFSym3krF+fKiHaD7y6OhTFHGD45PPDzNJnM5LjetnI8oGf/gq1NivjzMR7xMZtlDNTmSoWdcAf7MmVcp+ydlLImhZk2k1KOuC+ZlEYaZiVtLDZ+H1QJYD2mdVN+QA2mMt7pspTlfeSxLXp/oxnn9zabmqcpMq75x9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jp6SbwHi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jp6SbwHi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AD3C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792306233;
	bh=dNOPICEMnr+Wg5U3STQLqrEWTS+bP0bkjZ6KavmTJ5o=;
	h=To:Subject:From:Date:From;
	b=jp6SbwHiIpOso0/KIQ1v9tUPN+18JTU9gCXdA7uUkzDiIOgxgivLDp2h3rhOraCsi
	 wXLMoETUD2MQ5o4RWarbid8sKT9GdL3NrFXKkSU2tdx3vzDKJV+wSekRcyHiLP1Twc
	 iVvnRwbN/9rGeiEj+xO02qXH0qXF7L+IbYMHE4haENwzO+X+D8+w6nEqjm22cQ1YW3
	 03+JkxjriBtSbuFCigwIdJQYxUrqCM+9eboonoDuO4lRs6zh0h3ViLukvCr7UwRU8/
	 boEywwunaOkHbwEtaY6c5qkba4glLlF2LcguGEeYgb0MSAIimfnjQnsKaX36BgQrzA
	 YieS+WDkhbHqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF61ACCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179230623368.15856.11598280870677882478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e0b7fab77e78fb52b6202f4bc4ce333ab1428818ab3989dbc8eac3e7de9257f
Date: Sun, 18 Oct 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792306233
