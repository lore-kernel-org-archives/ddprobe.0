Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1B934F492
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 21:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781384794; cv=none; b=PUuHRMDuTs+nvxv5Aw3faw4QJ1ezxYr0YD/Yq8mFSL0eOIoEBT70F1FTnMq0r+V0o7IXGW4ONxPvS5XB0ZNqlkdsoS7PCrLeefrmmdEs4WOYAbaM1DKrSu20WtHu9tsMTZZRkmuaSdpbA6AaZ6RZ5gyoAsoXklOrzrdEohATH4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781384794; c=relaxed/simple;
	bh=su7pSIQg4TzVdvk3tNwy26334SL7N5szShatgfs/3Lc=;
	h=To:Subject:From:Message-Id:Date; b=e9nKUesPC8DPRZudbe4ndIFOOl2e11qMT+5nRpYsvlh0SX3IgjnHwW56fiZ0nxUbB7kHbZGm9mkVvkd3e136E8AoIj+C4TkfnW8oLNpH6DBif02ZkYS8qvlKgSbxIbdZNk9Ud4Vco3OechRqHYswXQoOUEbH3Pc8lgHlVqMuwzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEtYaHgQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEtYaHgQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D26C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 21:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781384793;
	bh=su7pSIQg4TzVdvk3tNwy26334SL7N5szShatgfs/3Lc=;
	h=To:Subject:From:Date:From;
	b=lEtYaHgQMgu++c2JVKVpkI8soPdwI6sjQh2LLmF9XGkoC0LsNFaqmptDrkM/X+icY
	 llWUewjBYLg4nETB3yDsl7DPCcLJIKtQPbQXCkoRCbGko7ql+YG132hJvRhsGfOKnd
	 4h/cN44UgzwA6XWx1wH39rgMRz+CkFwTqYezNrcnMlFKME75VBcyTXSrt+hearWyQy
	 jjFj+GhTqJnf22g1TUALPsi32yctlb+6M0xG8/7n60agczzzD1Mzvm9xElDcbQKJEl
	 2upworVeg9j483jEQoj6KYoW7SqUD0IpyxbifGkIO2BxJDitGgHS/zpqthPGe160aA
	 EnAy+WlIl6nJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB45DCD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 21:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178138479367.31747.2114673354945872147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63a45ca226b4288a90a3fbd20bbed3a9cd37a9b9ec878b29cb87e121efde2488
Date: Sat, 13 Jun 2026 21:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781384793
