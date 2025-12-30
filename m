Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1371EEE6
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767093234; cv=none; b=jv43EMQQrTawx0kKY147xu9Z275z/JDX3A5R7aZeWyZwe+ece2CdMoZMiB/5acCxkjAcG0ZKqy6wAgSOhn4SDTdDsSTMrCt45mNaTEPvlyQ10GfKjVy1UHYXuhHRuD8xl1Bv36od+8/wpKtMRweHYgQjEO2q9d6C33OlK3cLI8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767093234; c=relaxed/simple;
	bh=7x58/EXbJouRkRcSXzv6zCqc4w4NMY2qTjGmrQRfdZM=;
	h=To:Subject:From:Message-Id:Date; b=I3WKzccAaLzNBQ9BKjBMP+M8lkUA0dAe/tMOuw2u7TXpMCtlu0ZmFL/ZhA3TbzujwstnyA53LAUAskgDhBWww2ooccfyb1U4xPrZNtzqWQ8BU1tesY5mk5eI3mPkcGNjn+bMJsfpDxdJtXois1KDrdfdHsB6n0QXrnmj/c6G/y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZijOxfR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZijOxfR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8D0C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767093233;
	bh=7x58/EXbJouRkRcSXzv6zCqc4w4NMY2qTjGmrQRfdZM=;
	h=To:Subject:From:Date:From;
	b=TZijOxfRWSUDlwKnRZLi8E8iAlFaCjk8Lq1BCeulvYYFE5PFbOXb0EaiG1wCc8+Ac
	 Q5jdaij91WDGuL82CGMZPVIOuwaN2nlyYsA9kAyw/ZyJMR1OvcUXfvbT2s6r177Cil
	 d7mqgCFR0UFWGCz9ndkagG4gxdZV3gwV1LFSNqxKBuxluP9Wu+4WIPWVWkAp6eWHDW
	 SHauOnfFBzOq1QmXhCOYxh3PfgNcKHzsseiC0knrBoUuXPz7n2QCQfMQyl1b1qtrf/
	 T8X3oivp2/F0YkrHoroVLMnsXlLum1ezYiGTCvXlOzOZBWdNk52bzbmtaSTAN132ia
	 HxmTkwQBhtgyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906B6E95A77
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176709323358.1607.14564705794536945314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f56b1df795d9ff77eeab375b98972b661467fedfc12946cd20c898ffeb3c9fe
Date: Tue, 30 Dec 2025 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767093233
