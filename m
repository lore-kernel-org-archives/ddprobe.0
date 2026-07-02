Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA92311958
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 16:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783008514; cv=none; b=inJLT1p2sBeUEM+TESkMVFFhjiZVDNrTx7gCWJU0ZWW7/BmuOMMjizTVMcWf+2Q5WwkTgGROUkWb5ahNaacfuJOwkTifmQtsxZyBQ4k+C3Y7/7Nsagasem8oQ4H/egwDcmUQmQsAUe6uRgN7JZUFw6IolVld/691rvelQdqN4a0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783008514; c=relaxed/simple;
	bh=OgjZs5iJUIj6LHyZ2MwWQMskt/StHc3dhMQcD5jpov8=;
	h=To:Subject:From:Message-Id:Date; b=T3/BDnSxzSUNLAyCYp4QwN+c8xG14dj1QjRCgH3yOVFKK5pH7M5cbQiee+LUXyz6F4cA5VeSlWUhyivQcOIxC0nDIcD76qXMGt/xLu055hyv67E/dF7ZMMd6tcKNvX1JeXYPxDqfVsmQ9CHDU36UhYKaKeKEtSdWEQYb9UsK+Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwKxiur8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwKxiur8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFEDC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783008513;
	bh=OgjZs5iJUIj6LHyZ2MwWQMskt/StHc3dhMQcD5jpov8=;
	h=To:Subject:From:Date:From;
	b=iwKxiur8vpZZhC3C/CGHZu0toUdtpmJ4JOsbjRCqj1z/l62UZzoyG0/Jq3/XYkJ1V
	 eB+JhakHvjI6IQ5FLKxIfrl0fD+mRDib4DZlZbEeErKMSxlRH1yJ9U/0jUURzGU95j
	 tKukOHAkDNF0SFNKv50dunL8PV/0ahQki0akqaZQGacs0YjlsP0a/Hka7MxNmUdz/z
	 8OXUotc/DAthBnCwOhsT5Xmr43lTQFrrqsRyDNo7bGamxWtN0Iu49+NdkXG2Pm8Usi
	 wWpeiBuVzXc1DNf1PoWMueezbpr4I+PTU5JXpSyUGYNAQi3+G597dBBfPqLaYigbcD
	 GnEldLJPeGUHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95FEC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178300851368.30087.8688123176782690605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d1ef63e7350bbb3310e9038ff278afc9ceedf0274222281d16f5d7bd71ace3d
Date: Thu, 02 Jul 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783008513
