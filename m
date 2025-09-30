Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A14622F74E
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759253996; cv=none; b=SndhT4qhn/TXc1Zy1V6/0RC+DtZqNpk90Mn2ac1HdCL6XGXFdepxqqodBAVycZQ6ZZ3+Puc5w9wXRubrM2eP/RM3R3NhdHRQCPnOAj/MRLQcEudDf8AbmDGpPydKBXBvqKczImedzeui5o4T7gWOtjBUH8mgd+TxBvON8FYrwXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759253996; c=relaxed/simple;
	bh=bILsrPtuJ6tQgT8EppTcdUvFDmE0O8wKy7vadQtMJfM=;
	h=To:Subject:From:Message-Id:Date; b=ngornrpPWE+96HpKj26eU0i8p/kPPFBkJr2etmZQAm2EhZxgJQJbbuXHKMhHk0zOCLQu9W4w2hclCZ/HJ62O3fFKhpI5I/u5RbjmQUhdWQyfQNXzNd6jw+CjGueupbpVqMsTrKLAqw6QepKJMpyTPU99SwDRDDReIVvxsFJJ8rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sx6tg1x1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sx6tg1x1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B064CC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759253993;
	bh=bILsrPtuJ6tQgT8EppTcdUvFDmE0O8wKy7vadQtMJfM=;
	h=To:Subject:From:Date:From;
	b=Sx6tg1x115TQJWE6xZWbpkiJXiN3eHdPiEtAG2QM6WTdwHqetFLtzHUv831hUd6rN
	 NtSxQFI+F7pWCZB0SNWMUDSE9q0UmwlLcKqsXlyM5OnWXF3Ag5ADH+Rayo+XbSkecv
	 ENUnaDkXZRvqEIORe04Dmr6H4aur23En97vYcvNNNdettBS3X1fFbAZx7LRKuEY2J1
	 X62CO58Sy32dmkuYGlr7ppqtVpEurlPEX8YIEQQBjkhqoMiXB9LeZoVA6ehYkr1fRf
	 VaYk99hW0mhNlKa4B9wnZkNIrWIPUk5HdxuF+pTukFz5B85oZSMW30Fg7WFj+IgYTR
	 1QZ80tt/fFqQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A2BCCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175925399361.29130.7466395773673944616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05fc280f2a1973ead7baf89533259ec7f5635b0ecb8a126956599ba66c351527
Date: Tue, 30 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759253993
