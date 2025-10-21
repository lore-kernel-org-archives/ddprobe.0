Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443B832B998
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761038994; cv=none; b=aS3iTg97vcamI4WgVnARF+XiCQzhxdiGS9/V2MChTyiS10zeYqVmfWb8VU+ffCnh9nbAe5flTd58b8Eg5roFZxarYuMhKLtO6nMPEDJA58QcrGvWJ9VHg+RjwHnAAY7f8C/o78dt4N102mLeU4qW9g83DIEWEu68FgO5GVS5+ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761038994; c=relaxed/simple;
	bh=zHuaT7Ogwo289rF8WOJs7S5MDT+gUCJt0OVxYsraTKQ=;
	h=To:Subject:From:Message-Id:Date; b=Dguje6wL1KR6JSy9aSC3AkwrTZ9WiBkyDpn1ecPBBTE8gAbBs3o5t539+UI7SPdj1NDJtzoYveHYdnDsLakcyrbrMxeof6E3Dtvaqo5vapGd22cVBN6RagVTsRlgPAgGHlaonx6vc0KZyEDbKONOEwB/ZuANtncLYeIZ6gy5r54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Deq3LXpC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Deq3LXpC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61F8C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761038993;
	bh=zHuaT7Ogwo289rF8WOJs7S5MDT+gUCJt0OVxYsraTKQ=;
	h=To:Subject:From:Date:From;
	b=Deq3LXpCznMbawdVDPH2cZ8d5ldgBQdsVc/gtC7pb1qmS6wKlCRxcbuycS4w8dd12
	 hqHw+nKGNPTDTn5Oa3LGQzoDd3L1y/YwPhL3Lr8BqD3LBZEoz/eEe+0tlNzpIlW4iZ
	 M4mqTzwDle15ItkpQXFC/Ur/G99XcxJTgzN1MLc2KfYe5trvTZYU3xrCaY7k6ZyUkm
	 kWqFiAcWmU0OSoWnKQjC6SZiU8Qzxz2/Fx4SrFOhTLzQAZnvUZVFyf4OQ9MZCzlKod
	 684ZDYFJvLW55WDKvFX4rWLcrwXbyh2d0WAXzhii99bRBTLAn/FNgbVJ2+uD4yg8d9
	 P1p7wN6AXQ4IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C98CCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176103899358.16682.7946447328799374758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7545899f544d1860de323c926d65978f1ceceaee8aa14bbfa0c4582cb70627b1
Date: Tue, 21 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761038993
