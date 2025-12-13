Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D4C4A23
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 02:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765591374; cv=none; b=l1oDnhpqATw6vtC1qdA+Z0avT3vlf1hqO6dHOIl3PG26WeLqzCDYRTrDZavBwww7xY2caON/cXabuoR5IexgC2V0WkcMBVTbdLHxKXbLLjpA8gNDH2tNjWKCVmEbKbBhJvAsbdSoHnIj/lgI4O3jdWk46NqalGKPii1oYw6flYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765591374; c=relaxed/simple;
	bh=AhlQwS+OBoNFgOF5UChpa4zSTM0j9R5K6A7Rei66htI=;
	h=To:Subject:From:Message-Id:Date; b=Bk9fAs6dlaGkkvnjmsi6uBSGG3A2zWHb/4GNfiB7yAw9DmeZlYT2FGF1nr06xeIHQBizDQyrLg2DVaMBcCVFClJrkPiQ5h93Yum91yRXu+UkO4WZhbLigWM3LIANpt74MQeIJxEmbUKgy5TQDDHrdbhP1to6kvoNOX8Xgnn4esQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mD7kWXrv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mD7kWXrv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12D9C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 02:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765591373;
	bh=AhlQwS+OBoNFgOF5UChpa4zSTM0j9R5K6A7Rei66htI=;
	h=To:Subject:From:Date:From;
	b=mD7kWXrvl/zJAuRQO0G8uvBIaxQ8pQtRWZsrpWQHmlPD3aCHQ5EpRFqPOfi8FNVEu
	 Hs12W5be6ey+fdpeJl9W0M6sMTZqMChNmq1Fw8WnI/M/SDWBCOsemhCATA8vFcO8yQ
	 KVEL8Ht46umeLH0fGW9zVpUJJX10EyrhNMX07+3QV635C5jKqAdybXnnJSYdP5MA5y
	 I6PvLoC8k7tMxnpT84LM2b6VQgV/DxRGCFT4N2Zcf0mrt5e4odTp5sB3BenGiaorsG
	 jl4G1FNwJsbVssxtFe/2/j1rbhhtLl5G8anhlcHxg7eE3STiJ4win/hgDf0hTGzueA
	 wny9A3WSNCwFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DB6D59F5F
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 02:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176559137360.30720.10899111673052672152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f612aa0c35e7b879ab5f563ae447c5fa61e7927f6193b5f80a1bd2fa3d0f8a4c
Date: Sat, 13 Dec 2025 02:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765591373
