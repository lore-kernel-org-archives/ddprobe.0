Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7D041DED8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 09:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783331315; cv=none; b=mdjAXu/9Q8Sz7M3+Oq+Hlzh13Q1bj6h85bZ9tVAV6oEdc0WKlQQh+HUmMiB8VaevaMQhs3qp3QuCDT7G1yDM7wDfq711W244VIsLnd9mo55ogRzGOK0tov3gyvQk58l+LASRiKHtiXypSIBTw8GI0FzsTURlxLvZZC1Ana4Uuro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783331315; c=relaxed/simple;
	bh=em7myXzo7eu9H2JIPtM+69AnlPKGhZDE8Izmt7Q9YKE=;
	h=To:Subject:From:Message-Id:Date; b=XCbmnVeUzfrGDsOVsGN5TyDQcV5gdEeCa6AeDtycw55S0Ho2OMmWaHbeSWqN22UF5Ko9oswumvM2SzdglIwoGl69dMmV1cFw1x+w8C27OGlLT/+36E01AIJSuwpnosLm5YpPNpnAzAWIFeHJMH3R3GaPWerdjwIWJAX8IfIDDm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfiyNQja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfiyNQja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20CEC2BCC9
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783331313;
	bh=em7myXzo7eu9H2JIPtM+69AnlPKGhZDE8Izmt7Q9YKE=;
	h=To:Subject:From:Date:From;
	b=qfiyNQjaOauTU8/Atb2Jm87ODqFkPv3C3bzQgW3ywOMcop2lxxvD3vpHTBRCNUeal
	 wiygOCFLP8b5y+MYGiIrNvNjEyXN+7tqNqwgb9ZvQJNgrAfOPxqOmBpzJNbljElAdP
	 bzty9P8JLjUJKQyZFhsNSptFcnf+aSiWcJs+5LGtTIQbwrzlCF5DkU5cly0t8hhDrM
	 F+lfHRcOwBcZMcyX9Bf32xdd34Oz08jUQrG6FGjAC7yG5/SiNUAXBGFj0LYAZx+5il
	 iINniEwZ5nTcp0/WviSRx5Y9AOwOgRGpeaRCJNJq30EIhpQO7IHLLzhvGiXaGggMZL
	 A1yU8YQ/B8yig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA119C43602
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178333131368.10656.12726179794082101897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b8dc8eb7bb1b2cdf48b1a52e3a0c7ee2e66cf35bcb163bcf2362882eac609aa
Date: Mon, 06 Jul 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783331313
