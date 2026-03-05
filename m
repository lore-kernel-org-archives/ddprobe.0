Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448E8374724
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772699094; cv=none; b=UARPT4JEdvMYF9l8LU68iffO3MqN6FfxEO3qN6qFIFQ5Zv1PQP86uEHsrTnNEK4znTkZMCOE1rScR3li3aXvj5avIZLhP1oL2+R/f5x+a3D+mh91cS7qv0gYXb/BpGF3rVx1K4Kn20WtdWQyoRnQqARsmNCwWKcjeJIoChhnSuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772699094; c=relaxed/simple;
	bh=wIpGFGDUILAmW9qtPKUuOT0yrVwy9gYC9YopE/O4tE8=;
	h=To:Subject:From:Message-Id:Date; b=KotW2AbAf2/VLj5CZec2hrAoDRBtbRzYmedRxmNCZ60KlzPo4BrfTHfm4j2ygFdanQlfsQ7icMHRsxkmf/RqW9d+ei8qM5N1lHtTlCU+vxsjV0wR475T2VYXSRwaKpUrECZ1d4wiz2N0zrciFV1uiTb3l4rOGsLwQS182iUB8fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJj09tOE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJj09tOE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB324C19425
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772699093;
	bh=wIpGFGDUILAmW9qtPKUuOT0yrVwy9gYC9YopE/O4tE8=;
	h=To:Subject:From:Date:From;
	b=nJj09tOExf7QXbOAT12GT8kSJFK7a5daA0qEMp3gE0BYLav/D41vDTpYsDUMsTlj7
	 aVFWiDJaNEW+DYxeD6BkkpJZJRzJsXoTCcUs+m/qKVw3TuA9d/Epw+e0Fw/gpmbMzR
	 r0ZQ2bhWPXEpgl1J//6qF9nLlUWHdq43aDQb3XumQhJkMa/MTbBXlVxbps0ZXRS41d
	 G106354m/FBrFOA3AxqQL+ZvvCw/1YhZQv35AcEcVwvpS802S0D5wO8E9Tb5NJ8ka6
	 I+1JkRMpAcIk7YusWYnwFIKI/vcICkDBaaA79RCPwgmsdKb3BPCbFM2u7gSKKZE0+q
	 ji8cvEWK+I7NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C3AEEF31B
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177269909359.14196.3842792133061636973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fea9e6f6e8ff56aa0be1017a91bb93a946425311565045c827ccea034162cbf
Date: Thu, 05 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772699093
