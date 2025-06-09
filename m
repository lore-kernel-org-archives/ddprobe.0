Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1AD1459F6
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749460194; cv=none; b=LJWfbSsLaLYMi2v7/mBeYexvHWyB8qNAk975Ji4z+aLC8fWR2NsOCubuKbCSy8BTcxqtKOseDRifmbjKEQo3YbpXyds/m/J07jvb1yln5a7XGbyH/YIWXQby3q5MtsW5v/QrgC5bOC/OBjZEBWRZ1fDCqgFT3N8eJml/MA26flo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749460194; c=relaxed/simple;
	bh=MjTac96p7Cv+y7aHLMcSiyPP0DI3B0GhjMp0TJP9t/A=;
	h=To:Subject:From:Message-Id:Date; b=kqpRVlexrHhZ2FL4byVOurO+O/qDi63VWUBt6wb/yp2zwgeZapt7TQSRfa81T9mx5ZIkPa+w3ZQSqyTyNLUxAyyuZ/iRtQM0EYD4aF3G+Ym8Ct/66OnAGQD+9rvztBVGH+vtDAsS8JxlFeydQs5U6R+oTcONXE5xqxy4AV6BDSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBT2Bjdu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBT2Bjdu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25C1C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749460193;
	bh=MjTac96p7Cv+y7aHLMcSiyPP0DI3B0GhjMp0TJP9t/A=;
	h=To:Subject:From:Date:From;
	b=XBT2BjduMIdcZX4NfzQg6YkN8oh3RPW2LELRl8M+QnCagEsUvGqrAwGQIgaWUhQmV
	 gtnL7FyACOQbcMUnPjFMBloFSac26mrn/yvwOUiPoxUZ+bUySquXe7LDrplf9foGKw
	 tlnKUCLzyRgqTWR9DvMEKIuAxLIduyxArVLz3MVBCjfx3b/UrUZuk/UdiW05wuh65F
	 fUu4jchq1OFZBDK300Xt6g8HZ8AE7mxxyqZj3WJbehOC/OTluzpH5/sLM0UGo4jM9Z
	 kJZ93JXM8Me5jWZFk97J9NH2ytVdywL/lMxSNwFDiTmf1pQC9Pi5Vb9HlnbOWpltj6
	 gCeLju68f3+eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F39FC5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174946019357.9909.10750851131840336118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de7b1c49bd8d496513688ede5e3d584064fc65c3f3b7ab479fbd6266d75252a2
Date: Mon, 09 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749460193
