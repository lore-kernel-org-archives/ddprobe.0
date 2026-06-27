Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5836A38886D
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 14:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782570514; cv=none; b=tPuET+Tr6wvY5GvEiAuB48J2XmMxqKYjV4+H2yQvvRVVHwHg148s1g9kpV0LOZxmiMJW837Z3s8RPFB+qemL36h1LCAG+sFjne5VqNuHIFq2YO3IeoJIl4+k37qef96MQJtY0ttTPyifhwyl1U1V1zmhkTu2jpmWre4qeQOC+rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782570514; c=relaxed/simple;
	bh=7C1MmT8Qx3d2T/39846VuJGcgBSCp+d9P2iqlqkzrG0=;
	h=To:Subject:From:Message-Id:Date; b=sHtdvVuLQk4TbtDHrozTgaGKqYc6+lFBF/iePjrUOUyBuht1BvFUVq7EUn4NFVk87TT7IL0yPVkczpDII09vqW1Rrlk9a+mB3UTVNrgoUL4pAWfhX4gZciXGUnmSInvY9kjBer4qfSdAXz73uZMBbZcrNizuspC+mvNpCMznZww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PaQBPYRn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PaQBPYRn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAD8C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 14:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782570513;
	bh=7C1MmT8Qx3d2T/39846VuJGcgBSCp+d9P2iqlqkzrG0=;
	h=To:Subject:From:Date:From;
	b=PaQBPYRnec7WNQPFStnz74oQPEb5C3OMqGbymhT5aeq31GeuaGL42aZQTfvUeWa33
	 NneRjDrZ2rY8b9v0B5UcaSAZQcauyLzTG6/dB8+66v2ZDKaEaA36643rwd6YhEdjVV
	 XRrX7Iz5LY1IgnSAssCfmM70LlZHo4TDcf1aInZOORj9f2RBMQHX4wdWVmYqOPENnk
	 LHuZkh4N4CM7nobbNhDpZHVvEsGthpxrO5yCKVb19Z2YshVp0B7ZjjvDh+2FSr+bYM
	 zgWUGm4j0WCSBI//N48QkMCQDVdXuxZ7au2nZ/W+Dr/ikb4JrA2l83ZNIdcRZOIz7M
	 EpxCmyuyIP87w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B013BC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 14:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178257051369.26672.3147661325096390319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 730cdbdd63a65886be0cd2de503aac1afacc6f15e2af91e39e7cbbbba93cb68a
Date: Sat, 27 Jun 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782570513
