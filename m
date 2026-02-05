Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248B02D6409
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770285234; cv=none; b=mNi/KgDwbHQkWI1WdxfMynbt/Sla5YWIoVFvzu49PeWx3BIgmBq4GIgn519QQ4SO8NeuxACYqgQSuOlcnYJXFIzhssAVLjmbi2e8RNmJaphgfKmWe5/TekSbMIcfhC09fVpSE63GLbj42Xjaag9P3GhUybBlbOfowrVgCExTz/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770285234; c=relaxed/simple;
	bh=FZ/XJtvLlwYDdKRfnfgYsYsqE6vr1K2wrR3p68XJxLU=;
	h=To:Subject:From:Message-Id:Date; b=ndAZ64AXcEO6eYKXNOKDYiIApDK7JZIOKundRkyethNhcOIoiJ+8Ru+/b15UIIGAtspDE9yqL6d5zuh6Bpf0ngY7H3XNlnNuznR3xElEtZG2LmSa2N9sX6bZo/4C5MNrgfX5vWeUeXrwSY4KTLsG0B6B77KNQdNCmfHMNVT1a4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgFFs6l2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgFFs6l2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EB4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770285233;
	bh=FZ/XJtvLlwYDdKRfnfgYsYsqE6vr1K2wrR3p68XJxLU=;
	h=To:Subject:From:Date:From;
	b=RgFFs6l27HsLpJd47Yv/hCdqXNjHlbp8pKIfHhRJFxlPwQbvhsjR7d15Dr7sBCRUQ
	 vSpspRXr4nrAXV21QSWuXE9NlC+VWgWgSbFiCwv2Qgj/C1Bjobz4vlJaaR0JYduWZX
	 7ITFGdspIxqGnzOyihOkCcH+/3NjZoaL7AEZQ9zjt8/SdJYIUreK1/V5+qC/k/v8Ki
	 wJ499zRvTDPD81PdS1Ftt1iysqauKZsnxC9hyuWydbanWr/CbmIBpxOWTdWNkENmgK
	 xjuQCAoefJzlMJrxoyoIeFnbv6v5K3k9Twsl9tdsxYnct2Wf97xGmqv5W3yPunppMV
	 R/NPy3ghHH4aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94349EC1E86
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177028523359.28063.1801972418882362573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8e0521b5a243a140c099a242ef5852868525c43fee9dc54d9881f0412380040
Date: Thu, 05 Feb 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770285233
