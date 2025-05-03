Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437B818E25
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746236994; cv=none; b=kb58zXmlu9tbh6YnIjfiE9xUSqe2LV7sfidyJgwQX6cwGnn0+a19adZbtpZiWUyJawHp86l1Krci0bF1jcz0FGoeTDm7ul5pd3P+8v6QMPxx3pquhB6OMM8OUi9nidRCdu7ytRsPMC9v3QOHiPpkJ46orcsRZS2K7P1ZS2Dw4Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746236994; c=relaxed/simple;
	bh=Dogn4E/jeWK6UYmblH4pouQKLHjmbMP6f9o4hGvRLTA=;
	h=To:Subject:From:Message-Id:Date; b=RQ8LwFAMfHHaWjS4/6EIgWV6Ra0rDCbvifqEvHvL9k/EcgG3u3lUqG8q5FqQ6Lv9zq6mVCkpSc+Po3Ipz96ZW1pHNia6J7c9mvIbJ32OlDk03m/dUgrSjio5YDKGCSbhksJRzrt9jaGDngo/KiA2gKOkbcIvLQXRdM+TbC2b2Bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLr/TS7o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLr/TS7o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F71C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746236993;
	bh=Dogn4E/jeWK6UYmblH4pouQKLHjmbMP6f9o4hGvRLTA=;
	h=To:Subject:From:Date:From;
	b=XLr/TS7oIuN87lCeooqCs/2jMXFb0T9U5MOweJFioYaflgWNSm1MQ+R989d2vPs2u
	 718lcc1B73wghex5yFi/s5SXviZNN0X3f94e52IyApGLM+71m6cABtoRih8mNPJWx3
	 SgFqrHP6dmEJUQSLfd+/IMkWtFEkct+iKPDXpN/JsZ4s4hipvBl9yv98Col4D9B57y
	 vSNNxaH0wji4exEPWb2bvSBQVfrkmxScEs44SDo6K0k6z2EaoOFcRs4tkVc+raTZ6x
	 tVa1SCqc568AnH81Dh/rpdYaz+B9AeJaIkg7/131fWFu9fNFXe/WEcpwGissM6rshe
	 60OZ7q8Cs2wuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DA5C3ABAC
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174623699357.6963.5718235930787851949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa0f57f24dabb2982e51bc19e2d70a65a23b20382e26d84c94e2f95ce12fb42e
Date: Sat, 03 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746236993
