Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0648237F72D
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772714094; cv=none; b=o0N8xksMlKeTZNMGx7E2lVIv1lpmmC9Gh1aGFr3Wdruoqo9rCYCEn6kabzRp6dwCBG7OTiTzsF2jtcQpN0KJziKREngNbXMM43ejlbT1VKvvUaFPTpj9oQc3DAIc2mnfPX4gVU4+9mwGS6Dl9Ea/M1xvHlR2UUrwvsPNgBGcaM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772714094; c=relaxed/simple;
	bh=E7eAIyajFltsnWNUwIPCjxybtRvwE3/jrDQUFKBaDyI=;
	h=To:Subject:From:Message-Id:Date; b=kICNjqWFHoQLtC8K6HIveJfQ+FClwr1Mxf5o2zja1GqPpEY8XPRHxSCEKvadseRVseAKY/yGXFwnDb1pHnBgtEqlPOClvpzbf4dxObDQS4Fw4tdDAHOklhpPLdZ6mAH9nCw1WC1YqgKYKT8wiolbEQRU8Kvx2HF5RqzJnczOvLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWKbBWKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWKbBWKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3899C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772714093;
	bh=E7eAIyajFltsnWNUwIPCjxybtRvwE3/jrDQUFKBaDyI=;
	h=To:Subject:From:Date:From;
	b=nWKbBWKsRKlEFMXt6mxsS4rilRP6TosX5y7RoQAH709byicM7Mtqr51B/7SQHmT1z
	 g9lhDIZ9X2OJmGNK9bXi7gkcR1aJAxdzFWC3ItQVcqcpewdhCn2sYnfFDO4G14IW7G
	 ICucgh1A475nttWlEypLAKsPqIAcnYk3vm9Zjmo71yTpU0XpGBOJnvuWzEO2uQOldT
	 ysiaGSYMsGM8lDBkjeHBcOnur5l6aptaFK1wEx9CXvnIniBndtV2OiKuXT3u2YChLm
	 mjMMkF0FSQF7/e25iBMGiI1r8QpPo2m0piAaz9mhu5KxyOOfLHqEZYy8FHlrSvx1eQ
	 oU5XvCj3UU0xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A76F30955
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177271409358.14245.17068176151436524117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 724f3157fd1a366bf02d6bb75338f60f652b04b6d2241a667cd3dac1e190a6d2
Date: Thu, 05 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772714093
