Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F15D92475E3
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768851234; cv=none; b=YGHj1M2DUX2beUthYW4ZS1g7vLBHT/uOX+OOd0aYQJuWp+GJ4Ae9D+nIR4dw3yIyXxuPxOUhNHlyrnDN384ar3odKwTxUouf7zNO7Hua52AMRnruvcyOKx8DtKYxJ+f3cgyhdo0Zei1aHWNGw0/81OZh2NiWo5Eya8547hCFdME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768851234; c=relaxed/simple;
	bh=9JZmS2J/4DZmBDGAT87OVSLpnlHb5XMLrznaJxqgHpI=;
	h=To:Subject:From:Message-Id:Date; b=Qi9ktJzFlkC+Sj1BemNm/iH1bq2CgrnVkmpY0RQfxb2TRv5AiS86W1Az3TaW1hEh7aEs9SwZEiciV8BqnTmcMo0w8VLWHOh/Yoyi4T40dG9g0YtK0Z+yH3VwLXjvIsitO9NNN1veUnR1Uc8QQ3xPY4876xkokg3KnO/i/HPoV/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOg+UgrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOg+UgrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAC0C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768851233;
	bh=9JZmS2J/4DZmBDGAT87OVSLpnlHb5XMLrznaJxqgHpI=;
	h=To:Subject:From:Date:From;
	b=rOg+UgrA1KUkomk0phfCN9ucSg/7EPP8WZuJN8litP6EpmwUTiIPy0RaQpdu4T9xw
	 seYujVMnLdJjKVQGljObMFmm3ITf8wO/57Am+Bawhpov7QyCcPN11cEhIyXWm2auw2
	 FEiok5ronhWk9ftSNG7KvZuCkLkJqBhC4VoAa4UWztetZ2GiCgvA8dUranZszed3ZG
	 xcXpO0UY0ciH74+hc5KfgNCB6F1bu/S3DMtFuXJbo6Bkxj8AIljcBbTvA9JOG1TuWw
	 ockdzS7bpZG1GrHbFsUILHNnpdaqEN7XbdPyhPoBM6zWfIT2Rfcy578whivGLCRcaZ
	 PeY2jF1ndUh3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC92CCF2DE
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176885123357.12345.9023155974403360263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c818beb823c377fd08fdbe1b738eadb38e50552b664f9015e41c3f8dbe80a0e2
Date: Mon, 19 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768851233
