Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120EC34D90D
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771597494; cv=none; b=tNxf2vyl5njKf3T6D9qte212NkHHUZPbTrxAUvFHbqznSGZ+fqNRmuL2Hw/I0tPBwW1rARz1ZZaAw3D0A3bLYEpnK/EA+wN8b4ELhmLG+ITL5V3HtB7Nbtzri4/r7Fi+2TtWYG+RL/U3/xvYRDxVBXAu0pAohrRKukE/qoiMTHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771597494; c=relaxed/simple;
	bh=d0RpMNWaKxLMiFltx3KYZXgJ8KkvJFfCuVzTKH7ux/c=;
	h=To:Subject:From:Message-Id:Date; b=kveSgBujmRweTdYmiOzqRvYK6QVi006lASVSxBnvNiH7ZjOWcZFBtuE4x8dxSWkxELiw85LYsBhQAEv2oBVekNbMfYFpjWBgY5I5tTjRHtNHbJfim/dT09TFt3Wo/3uav/4ZNdAEw1zyK/zcqfzcFv0RYeL/o0XfVxtZ73QAzeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TkFAIYGe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TkFAIYGe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB3EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771597493;
	bh=d0RpMNWaKxLMiFltx3KYZXgJ8KkvJFfCuVzTKH7ux/c=;
	h=To:Subject:From:Date:From;
	b=TkFAIYGeHcRAg7306/BSVm5qaqtSZoAlZUSh1QFua3RgUBj2yTJMV17Hrk0nhuWHs
	 +QlBJKF/kgfq4FdceTRF0xI/TfKtmWVJNKXWEzLhernZ9Yr3HACfMJAibo5Y4KuIY3
	 uYC+8x8y09WDitMe0JQPuSj7Z/qsmJV8QEj9gmvtcoin66ff0woL0N1Qb7klUE06TS
	 9IHJ3cu1Pj1wEDrWpgtRfwVooBN6AMNy6MVEu/xZdNSXP7d/VzVimd6mV5J69LR4K6
	 tOMNbfVmcep7IXas2WPabxQ1VjEO/+hpYwanLMYW+BRQLr1JECmMt+jHIcZtNodCKB
	 ixdDwC+raMazA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C9AC56201
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177159749359.3956.1940390647486311323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43a2be19aa0e96ec0d0894cc86fb8cc74cbb05b11f6653d22f8fafac20030aec
Date: Fri, 20 Feb 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771597493
