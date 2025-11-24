Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7A91B4257
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 04:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763958114; cv=none; b=ROB/ejImUBzVMvEQKAusPYEs9Ry7eeBRT4tVVSyVsRX1x6/LfauEacZh4tZNG0k9zdpQ3xAimj3/TFKyNqAc0amx4BKsOc7q4XvJZMEnT0fO+fyAsgtpjscmTeHW3LRMzLeVYkQxhf+IGru+xMi6WsSi19vZ8LJ5HhyGxnqxvGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763958114; c=relaxed/simple;
	bh=VnTlTm1UgC9OXAeyQZHydvHO+F/nc5jaZjiTg2oC+v0=;
	h=To:Subject:From:Message-Id:Date; b=n9OWnzwtpMgaGbczU3behC9XJSjlP0VRBxiu4P3tQMM7I43dCpgzYj0ilVaNSurtfA7VXTa445KxDyNVHc+iVdIBf0JZgvK4US+4K78bA/SaCU3N/o5WNNXqoS2gmtxsa5r10Xsr72WlDI1trbDx8wSDoB44JAI+0xFC3kCyEdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLCNiWEf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLCNiWEf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D2EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 04:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763958113;
	bh=VnTlTm1UgC9OXAeyQZHydvHO+F/nc5jaZjiTg2oC+v0=;
	h=To:Subject:From:Date:From;
	b=OLCNiWEf2rewCLb5Nu9af+iABzhKlkF5VaF8Ph7Vmca9W73dd42CNwLyhKwUZHTee
	 WsKHSRIx4sDgdjN2v0MzmJzwbcBbodcsQDJYDRpe8i21gypqnuOy8K9gPkI0fWKLHa
	 4x5abUPWnlOMDLqDt51DDsXpxV+aMTfmNgJx+BH+iukgMrLEagcDnLM1CX5d9xc4yz
	 fE1ucwkdACzxcVIoGDxOnbVLeKopDDzwunHz8lj5hUvv+fmZ4pQDEgcl9uHyg32yaB
	 Nbl4sDpLZJys0dmT0PLdflG450woGTN/si6u5BTK02v7Wcb1u1geUngXP3uZDeEcWK
	 6mM4gQepvTNaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A348ACFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 04:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176395811365.9468.14953098263605133863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78e1767c5af2d745d9d3da80cd912ec2317ece310e924f966c2b9b8ddd9c731c
Date: Mon, 24 Nov 2025 04:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763958113
