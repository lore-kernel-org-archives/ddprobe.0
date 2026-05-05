Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E081E4963CC
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778018254; cv=none; b=FytXRxbtGwKvt7LqZ8NlC+ydfgXTD8ThbJFMV4gS9IXhKHb2zZ9L1e5QmnLbBpsL69OZqzBeE2C8xqtgQBF8P+71XrCEBYWkJ1cDNWud1k/S53xPjM3DTRx8hT7VYXUyaN+JBdpEdJOgYeYZ5xDnSpUOO7DTik2T/MveS2KKUrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778018254; c=relaxed/simple;
	bh=6rnDfSPEY4+AGLD8LIwl6Pdu9sBktUp+tk4MWVA/PHk=;
	h=To:Subject:From:Message-Id:Date; b=jv3yUzEvWngXlUCqdoc7zI/OYwbdzOEBjYMck5xWnBS+trALqyMNeCriNTxSbxt4TmoMlzWwflH8+shj1lEh6zoPexG2n8wZQSfRmDiBTy3mdUAbuhqs2bijSSBe7/7Cxi7Digm34fd8cxYISN/WhTM2r9eWbQj5GY2ztYXQ4nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqhT77iF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqhT77iF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9817C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778018253;
	bh=6rnDfSPEY4+AGLD8LIwl6Pdu9sBktUp+tk4MWVA/PHk=;
	h=To:Subject:From:Date:From;
	b=bqhT77iFahRvfIqCvRiw2p9vAol3++aoDj3NcqZDIqKdi5eduSOQ87d1faTogJsTU
	 GWJR3PtuSmxFHMrtz6cUinXSQsfXaBFf/iVENLNuImdHv6RhtK+ZB66jNeFdo5o4bR
	 4ksXraMu0WnibVxdb/fZ9PpWGRdnnuKThg5rwluc5lFYEfY9S7zfKXnLvWThBDOJdD
	 Yt4kmUMlcs6/EJK1m4aP9Jc55WLjQrhOzSVqYwaD0gU8NJ/rAAHIzEtnxlwfeFB3Yc
	 +q9A+/w4WPvk+h0Qtg/ODoQxF2QLhg28ydPnn8HVBWgPEusrSUO3gZeeVQm/mSkciB
	 rg2tAxD9+j/Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC99CD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177801825369.30088.18234674598149131735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd48ffd12d9df9f1b7afa6029bfda816453eb453e6390fc9c1e4b7ad035b2d84
Date: Tue, 05 May 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778018253
