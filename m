Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581C945A29B
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790337034; cv=none; b=g0Vj2RhFuS+VUi/aEXnrHZCUq9OGiCyiPWgiLRSRx5dWNzshm6JQZ/a3Lt5FieVeEmFX7Hs0fQsvhOXcNsJ9WvSir2ZavuEJyBcyOnJ/DJg7O+M8oby3IC5tBbEPNQojC7nfiKRpneAwKNoZLzypHXgXqYIqlbflF47AJB/S1Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790337034; c=relaxed/simple;
	bh=TYgyC5gySJ9LCVLHWi2u3RfqZGnYbAzBJzl+yzN/yqM=;
	h=To:Subject:From:Message-Id:Date; b=qCpz1ItoUISk/Sukv8h+YBU6jzwayritA1vBFO1MSoRrJMIMLeX3c7Z9YjTXmiCV//BdbkNAySFOKflgVGCWya+W8+1F8CkB0/zApH52pObt0dOLq+rv1//DJ5FbQ1tnL1cMS1UMyAwHt/T2PBtV0mLyjIGS0zYPO/Q0xyU8xsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejVp1N+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejVp1N+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D291AC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790337033;
	bh=TYgyC5gySJ9LCVLHWi2u3RfqZGnYbAzBJzl+yzN/yqM=;
	h=To:Subject:From:Date:From;
	b=ejVp1N+IxmeaVfVjYVMSmWN1VWNC/aeOSr3VizYKBfQmZVJbtsZmXlhhrMPbqAzdv
	 li/59waLaFD/uVVTew0Czfr7Ew4f3vHq9vBKBb1m2BsUSjoW9HifiKygM6l1MX1L9K
	 gTMOCTJtcvslZaHrJ+eoRIQdzLYB9BsvOIgXgs7dOYc57mN9J25/o665WmZXZXK7+8
	 go9uYI+DCG1bIWRUajzlLUiN0Hs8k2q27IrKXo5XKLSS9PDdlLWMaZTq9hZWUzbWOB
	 Ebyu2BIS/xpT+sw5bkYxV3PaaBb+qs0FBdjhVk+2oaNlr7ZCOyOOPnHuD4p4hBs0PN
	 +2SOIXAz6lZwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFCAC98321
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179033703368.28059.2906786933396375143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: badc6e6300e0f9edb21bf534d09680ce99f3c5e45fb554b08ee617eaa8a5ec25
Date: Fri, 25 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790337033
