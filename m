Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF2513AF2
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767399234; cv=none; b=BU7sGnLgiAulWFxfuZcDz+NR/hfjcecO1KFs3ED7IQZ/IeM8LxyfVBeh+0QRFO6rMsg1QIfdmBWPodAxDNJ0k/XoxyNtnLOR8z04D3LpsONcdcpDsOjWGCPcACmtOyz1dC9IGq+F9dlrDBH90CjDx5PyNSoHF62Ttvb58a8pJE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767399234; c=relaxed/simple;
	bh=4g6Ga+D8MPYERuvRXMOJVvJ1PZYobLtqFu0ec8Jn1J0=;
	h=To:Subject:From:Message-Id:Date; b=b0oociT8m2edH6nsibMqCDlNERt2rTpWOp9JLsosb4Hi9AGfUBvE1fQ5T5DYNiwadJ9V0w4WnPfE0zKXdxF9gv2ro+vkoGHn/PIpdNy6eNMCfCVSS4cgN3tlLLdWEUyh29jy0iLJd06L6ey1eKttX75ZeskpbVrIGYE9otOgsNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqmZMgYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqmZMgYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C5FC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767399233;
	bh=4g6Ga+D8MPYERuvRXMOJVvJ1PZYobLtqFu0ec8Jn1J0=;
	h=To:Subject:From:Date:From;
	b=bqmZMgYxri0dCFbUHbHo5N3taXwZ7xef4kTkN25tfNVC+lPZgcXMLuurSEtxay7sB
	 uyEQ4brsU4zXaZ325B/lNh3sGF62k3tYp9aE3cyC6ngCgTlTTP6TjQp5AtBk8tpGhv
	 TOX/b/Bb/sljhNjtJXAezt/uczlmLsEYNMU8jS8HeJznv2CIZQoHbC1MtbIKZMpJvN
	 8rp/gTB6386zleFIDomNXuLaUPHSn8AQ9fXWc3AcHb+AOoKCQGDR84pqpknQI305NA
	 QkrGMtRlmHeOW1CPpPbKstm9QO/BZSA/hsHjyZZxy2NynSnw9YWiOyL9qS8G1KjCks
	 bu1pjdxuhm2BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D1AFC6166
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176739923357.7906.1445790405730992772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d95932a94968310d1d503020d2df1dfe996e99af3a3d0b68d0fcb44049c0ab8
Date: Sat, 03 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767399233
