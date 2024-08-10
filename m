Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472CF1366
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723331154; cv=none; b=iZ7EcQgB5IGiRe5h75c8XTNKTTLSTMniLoNJNjmgPk8W54h8hFEAgVCi25WrZHluv8JH9kNZL5XRD0RHn8kdkny10NaGtQSFK655vhB/2X5FfsAxMWfA16LTvKnjiUCXrMwtXurGPu5PK6Qjbcgh/4m/ls77HgFguigt3Fyoo1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723331154; c=relaxed/simple;
	bh=3HW2BXkM0VX8yJMq4dwVVVYf0+kGm40ynlCJ9+V/TZk=;
	h=To:Subject:From:Message-Id:Date; b=anyXfVZlEyaz8pTDPe+vH6HuVpKwGpPC5DRuLF1G5DM00oMDpgnCIeiQigQLq3mY288YpftNartmpZZpS0ql3ipt+WJsr9Omxdeu/H8uXnLOFPjgvnNK4cUAXQH1OxBwG3oprehOrdGChKmD6X3lK7GSwxiQvyxg28pYXQUCa58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZOaceq2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZOaceq2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C5AC32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723331153;
	bh=3HW2BXkM0VX8yJMq4dwVVVYf0+kGm40ynlCJ9+V/TZk=;
	h=To:Subject:From:Date:From;
	b=CZOaceq2vPOWX7H4n9wlKTbz/v/EH6FNS3CirAIY17Z2EtsIaDoN21zx0mJWw7rfI
	 +XnHAX1HDsCsJazoKYau3LmsCnnDhAmj2A9mH7lpZwbhpjHsYVGNThSKTlVa+6h5gN
	 Ti3cjhO2wHl+Z+W+q96sCJ6XMMJl0Efume5Rq76YzBQhHg3+7+YwJ7A0A2gJTDspSK
	 CwUffxt8FhXGUXUuPV3+eyUsOaabNZHiiq630qH6yuQkydREs3IFHNc5MkxhF5IS8v
	 8c8KvJEj+jVZg0jwhE5no+IeI6YyTaqdg4PFf4AMRHqlZbTtILtkuzVw4njuN+CGDo
	 u7YsuuNTugLtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98857C3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172333115358.16750.10540078642525961767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d85cf9d1645570cdc6a1a87d1189bb4d6d6e2996a775277cf4b34897a07f0019
Date: Sat, 10 Aug 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723331153
