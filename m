Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D06946A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768086834; cv=none; b=gklA7y9qqA5lCEb6gHyUZTz9d3s/lilRm5GjLtQFm5koC8kXLhjyPVpNkuovJU/wx6X1SMyBusvLacyM3QVGkz5EXYcZ10/LgDdpkC7ZntyepUPdMba0TJswzzdXbRwhWWnT8uDWQoqgK4czllvdU2bNvLdYr5aTIWH8/L7g2nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768086834; c=relaxed/simple;
	bh=MwrnWz560d+4z9XlxqAKx51b0L0kmBz7jdbiBgDUzOE=;
	h=To:Subject:From:Message-Id:Date; b=oF7yHYdOgL42U7gJ90tmZ0paQ6yuy1r9QQ63IFlKB+K+FJMxY+zG2BjtMxBxhyXmWsbF5Oo5aOy1xwt20bz2MOi4k/MvM/giRgRrqJI3oV0T0UpoY4ReI1+mvhaCW4cZu8SLVJDO6k8dyJHRY7FRkyiLa1ovsArp/lVDab3BC+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4vPV12K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4vPV12K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF0DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768086833;
	bh=MwrnWz560d+4z9XlxqAKx51b0L0kmBz7jdbiBgDUzOE=;
	h=To:Subject:From:Date:From;
	b=I4vPV12KKxWpaC6vuTcAxfZ1bUz56eM5dCrovxES7AM6lcHIDmpzhd5FgfUBxTEts
	 gCL9IwqxY6HXCW4D+9lb6acReAZBo8rRzUZ2lV0krDmJzrz5akiOFREUHEwBZRdfKK
	 BsGIUe2MoTLRFsJIqznWmheYolIMC8LUHpDCr+yzp3wmYQs5DIUm8qiKwLhmITxqzy
	 piaHvIBX47jv18LB9PlK5f2pnri0c21QC+7U3n45dEiYuq8k143I9Q/fJBHYm0za0j
	 30ji0ebdPUR8m48iEy9LkgVbLVRjr2XRxht4frcT7QVAjSoSjdcIOymOE+40LDhpmx
	 vRjqNF5YVLUuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F51ED2502C
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176808683357.14825.1754895075160313226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bef38dc2c7c9eafbeeba0658830044a34c2e8554af16c4c692abd49dbe63867
Date: Sat, 10 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768086833
