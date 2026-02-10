Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1807632ED22
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770756234; cv=none; b=W3vaDa5owiOkKgfDHRHLHesEXirol/8YpujqJcqNHBsD1W0cANwzAMo5HUy2fQB7MGa4w3eGTzpLbqR3WrhEOEkF/zGqsjMzfYGC3qa3EllEXbPAIGX43COuoFAwJjLOatn40G4bCd/4qvDKcdFvSWJy0P3FEE89RYVoobmHQAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770756234; c=relaxed/simple;
	bh=j4JC9VexGUXgJQ32kvJ/SW4DtrrhcfFsPD9zUZNjEJA=;
	h=To:Subject:From:Message-Id:Date; b=OoDIjDqcGfH2eUkIqYInOY5F5kkFWzl9bjiwtabaBfyxcImRm+aw83d8MJIYvOjGP1B5fFSyhuCIbN3FMMUbpo6I1F4R3rlFR81lCA8znzxrRSNS30LxG6zVtRLM+5GzKBWvMip27Pp0thweHD8N1z+KXqtpTACnf+LDf6Jc+W4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njs2bzC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njs2bzC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06CFC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770756233;
	bh=j4JC9VexGUXgJQ32kvJ/SW4DtrrhcfFsPD9zUZNjEJA=;
	h=To:Subject:From:Date:From;
	b=njs2bzC1gu3Kdp5sA+L/HrdHVL/X1W/9X5pjm/Mx/s/VVZP5sfL8MR/QD2BI3MSNj
	 5Ek54BQnXBn5cQ3sAhvf3nbQgbLzQADsEvL2/kwJeasabMeTQBVjMS4j8H3VqbkUCj
	 T4+62X91SSwj7d+YQX8Ik4hqBHZFZ4Ic0jdLGjrGmrVUri90cQt4FpMXNpAohBx7Ev
	 1tOFKeKQw3XGrYAkmcfvEUa20BnFiTRy/uFYUniv8usB37UvTSgYAq2ubGef6u+4OK
	 F3pvE/cQxr2f2+T/u/t9ZkKPJu8Qg2KLRIcbns9qwzoZ/MOhoBrFGStkQuQZdqkStB
	 OndH5Bk/ZgCsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9154AEB2714
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177075623358.11272.11170978891749137116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c6cc4ba42aa73584e2b43f9212d62800f9d4bc95bd5925af200fad94b516527
Date: Tue, 10 Feb 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770756233
