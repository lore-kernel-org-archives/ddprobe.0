Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08ACF17581
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706084297; cv=none; b=K9DorMVwuecv2xR1ex5yaUuZLm+aFe4+KWpm+wYbyXI/YCZKhhCI+t9tsAFf2rzIS+mq/l4jSGlVb4R8ehqvk9INE0ffNxxzkMIdXC6XQz3A81dejMsoiVldMOk4g/K00cESdtWmMm5J1AoEADqnlBWdM6Nix43sN88t1R7UffI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706084297; c=relaxed/simple;
	bh=YDoIgiaNehg7KLVtQFen46JSwPnvzSc6TvI3jFfmAiA=;
	h=To:Subject:From:Message-Id:Date; b=gvHSUOvZoLQqmYWcMgCFlYi7uvDV4SCX8DtMPKCXAifUSojg4B0BVeCUEVdlxwfmK11iwytvAx2DGuz2tFeK7P96DdtMQyGrmWm8eCSaw2Ex6QM45oWDjb67uRck1JNePetkC3p6Q3BxI9nJLdoMKejBiIiIHr+P7ZblL40kl/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SfqXDPQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfqXDPQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F1E3C43390
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706084296;
	bh=YDoIgiaNehg7KLVtQFen46JSwPnvzSc6TvI3jFfmAiA=;
	h=To:Subject:From:Date:From;
	b=SfqXDPQe149t93pJa5oiALqG22TK3hGmA/2ZKxIFe8ca+gJRCSeGA3A9jzYkGsrII
	 xtyWU/8t/R9N+JfpRc8+tDH9SDDrhFDeiybOTfLTctwZC+BtO5fDZPVoMHftKcaQE9
	 o5IuLUsABKMRYAX9d1ivrDNhVEIKt/UoCUmZIMWmX/m9yw5cVQ0SHlN65ENXb0hXE1
	 TeJ493VzwxSWyACAgfirt7DFQ24uHtbk6pvtdeVioY4r7+x0LsSgOVBSR7j8Wvtja5
	 ahc1NJIwn0vzxtpWkp45E+IG2DzaQpDf2C+A44mpx8adxvf8U/GEcfod4THi8pc0XQ
	 OLFvccSpwHdQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C74C47DDC
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170608429638.26409.15748130514930484316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb9da93fb477eb8fb7818f809c08c43b874576fae079127a332cd8664b344ac6
Date: Wed, 24 Jan 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706084296
