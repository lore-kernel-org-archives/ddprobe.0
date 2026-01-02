Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFCB30DEC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767354234; cv=none; b=kUL0FkgCeG9FmJPFhmpUanS0R/AeZczojwlhMIgJ5OcOIDH2SiAhJNJfYpUU+l84LOfTNYkhen3mVmSUz02UzCzODcKp4Z5nxtHPPKpVbEZ73IRBkJvcliwiev8SfO2LmvBveGAcHiHRxMnAMCxDAPL3kJ8p1G7ILRmScOTVkHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767354234; c=relaxed/simple;
	bh=X3k2Q+PPotjb60FCW2laH9erl7xiBo90g/QoaUkTZCY=;
	h=To:Subject:From:Message-Id:Date; b=gFzGRzCHWfrClKmxxWbKqdGQrN8q2T9XjuQYk3fWwFIQFIthP8S3OfIlxfBhuQedIuuX+wuZtekCk7cXvzcDp0AQGeup5QxJ8Q6tyk302p1JWi/TtMFUuTxNVPg5Lhrb1shDHeo+VQn4+pG8ra8T35+xYb/2QO98l8UQdnWBJ4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9wuoD+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9wuoD+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DAAC16AAE
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767354233;
	bh=X3k2Q+PPotjb60FCW2laH9erl7xiBo90g/QoaUkTZCY=;
	h=To:Subject:From:Date:From;
	b=S9wuoD+2Qx/yHly760wzzh1zlJEsEH5McrDdpDLzV/B5chDO8E3bq8lkp2DSfrd0F
	 2+3vANZFgncysjgqN0xJEXos/3bunjjXckJbAm0KoXLO+Wkfn5gMXmz1sycaUySg5o
	 RKPFai/DaRiSbZnTLPMiCnlL6j3/pkSNE79URcSp1WdXw/fVy2T0zSwDY4AXU0ZdzA
	 H+QskiGXmkvExF+cNsKyim9ZLRRSzju8AaGMI5O8UChyRXpIVFX/rl6ZwaSERfam1n
	 8an5L+cTqmDm5GcTOd25M5kMywdrVGniyd9phjf+JHu0+jpcMBEzkpRTUmZYPeKcVq
	 rgJ3dd9MaByDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C20FA372F
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176735423357.26419.14771481874250979007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65efcc7f5322109188b751686fe874a458c3e6dad5cedbf3d315f77ce0aa455e
Date: Fri, 02 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767354233
