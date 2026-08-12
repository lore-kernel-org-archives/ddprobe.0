Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FA8339389
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786530634; cv=none; b=qaH5g4CmmSv+EQcmNKi4r0KGwbi3WTkHWevwC+r1qm0jxkpveIjM3dkLr2Avzb/EnZwytQxy7Gg0o8zus+Fx0EsL0GOKk6ORJd1psbIVrTqsGOY3V7RAi5qVMBqFIrkz1XoqsDT0tQqd//B/Zr4CCbEzMFykMDJ32d48yNgZdYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786530634; c=relaxed/simple;
	bh=+WrVtuUds3QmYNITlwyGvU53j/duttIw41BlsDvGDRg=;
	h=To:Subject:From:Message-Id:Date; b=Zk5DNLdPr9TnjegBoZGLmW4SRIWJeG9iSZ5qW4eRoQmZfSipAoVkbgWiepsRk6njyFVpzZLH9pTtcSPfngZKEwRfbwga5Hkhxfx9zMJH2HWNpqt+vPHhUGKX633QP42nqWnPFr7Ozf3VY3pasogOFFcSm1Xfga0tX8s0fC6Mx2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0I04Lb7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0I04Lb7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA86C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786530633;
	bh=+WrVtuUds3QmYNITlwyGvU53j/duttIw41BlsDvGDRg=;
	h=To:Subject:From:Date:From;
	b=E0I04Lb7FMr79zNHzEO0WMZlHxfbs7O1KKprBvbeOPuVX1PKyQF5GAfCoYSgLZ+vQ
	 np9UCgPpHJYDPivbk94IVWpFWwRFwUSSGhlTd0ede/HdVsXU9AZ+1BpqHLveCQQkNo
	 J/2Z+v+fmpEAGNWq3dmPkqlQweCUbznYxVYSduDJ+CJDY8HxSgPMB1qXBk1YVS0EYH
	 6UJh+ckE410yJ7irfzpOiwQ38kB11QzHOERVsRl+nR1p7ZgEt8AAgPMvzg88/Yjbb0
	 7c+7OR34z/bdYVmkL1BEo+j6zUWN1G0I3LngXu9BTEsngoNpEUPkLa1iaqm9cGJpE9
	 f7X+1YsJVI6pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9107C5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178653063368.10435.9399573671809654614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 628b79f36657bf1309c5fe17e032b5db2ef5f4ee8033114f03a142d3b4e5c0db
Date: Wed, 12 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786530633
