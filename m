Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2156A39F16B
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787220034; cv=none; b=VOqHRufZET8ils+FRPlxk99jW/LfonJPVi4WYaeMBBxxgWEdFITEx+g3cX1Sin0Smban72WT0SmqXpVuOn87ZJBqojyGXHF8SVfCfAmdE4qIsdpGhpmcJd/3IQXlcV/qrrkqUlq9EOjzEy9PvKOmKR12KyRvIZXeQ7FZgpOGgrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787220034; c=relaxed/simple;
	bh=j43v3Cpa1RjFUZTrbFJ/AliREYeEZ41xkLJ8JXTgsuc=;
	h=To:Subject:From:Message-Id:Date; b=AQhhOs6cA0aXG5sMVySEjF86hj9XeDQbkOqHFjsF6V6fYvmf/wh0beuTOtVDxeAZ6YZIpxYH6BPEE7gv0oyAZ/dxohJH1ld3RZHx7YQYdcT64bs8LBGtht1R7jooUQi/daxtwusN4NqGzEhQ9w6pDYcEsWPSQGLyMRnqb5y7ew4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDQsFTwA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDQsFTwA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DBAC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787220033;
	bh=j43v3Cpa1RjFUZTrbFJ/AliREYeEZ41xkLJ8JXTgsuc=;
	h=To:Subject:From:Date:From;
	b=qDQsFTwANHTBNwV7duB0M7M6muGLHpSCkvlXRnpVfKN4sUQ8252l3auTSsKRxCx+H
	 NE20AN61U0eE0WDXS1mZCmRVVak0jaCzHhbFnjwawadh7lqB3St5CtZSbLt7K7fhX2
	 mw/BTyk9+ONW0CrAsKPYfkyNn2bUrSMh/wsdYXSErqhtIOWdTZlpSFnED+prAR6mZY
	 WtqpizN4wfTWo1NdpzDmJ36hISXx6U2VtkxaKTmkKwAQcCDjeKmauVIWsYOX7K5Mty
	 7PdNwkhyM74zzBHhR9VCq+mqetveAtBl8IvSMGDyTuvp/O6vPjKkJHG8xFbpUB62P5
	 RM62u7xOINB7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3C1C5DF82
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178722003369.1234.1466114843817141723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e3c36083f73b3b11db0520aea93c0df2d1264fe5780b3786aecd78a0df2f92e
Date: Thu, 20 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787220033
