Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C0A642377B
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 15:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783437514; cv=none; b=F+iKaGgsaItUhwRPbU32duV3n3wZDLPN3qRdgtyafNQpXv9Vde55KAB2JqVs7VLqITJUZSmpQyR7gYqKSB0ce92YkwJjMAaW6ahontUlLw22dHbOTCSqSWVd8jvtPHgEUoYOMgj/e+TXfwx9JsNSMomu3qdRUMNhdWXKwntMrIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783437514; c=relaxed/simple;
	bh=Y0lNPfwwy+MP/z5XWT8XjTDDHBqEOvdDi4sUr3IiYpY=;
	h=To:Subject:From:Message-Id:Date; b=QOy1Ng0q2kSV7906kOp8dOIkCL8oIJd1OjuMS/R2Tx95Xj3Fh4xHCN/InaX4QTH90y69J8B7l+zwU+UdlL3vE85fDdmf4ZgGufr4Yc1kIta1FNvX26YtmAbuh49Yui2p2Z5QMQoWwW/KJzcn1ZGllgLkmUi5MARCDqBf+BMBbgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqG6Khi7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqG6Khi7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2DBC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 15:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783437513;
	bh=Y0lNPfwwy+MP/z5XWT8XjTDDHBqEOvdDi4sUr3IiYpY=;
	h=To:Subject:From:Date:From;
	b=PqG6Khi7ENKvIbSNexsf4rsEyHceB1h2a+jf10FVtWAq57qmFIZRz2VyukDjh8AxD
	 1Nagl664kZLEpjlQjN4n///kCUmWlkK0huTlD2rdn7XAlwTibFnmCuKxDvzkihQoYE
	 psLnOPHWqNcRKOb93JPSEQrINEpwjzlGjQWss9wF5fssWPGgM8w/sVTFC5ds/UOzKr
	 PJpDnv0d8V6SWuxZ0wV3pTqqgXBTSJUjRqBjAFU5ieXPp4R00WaKVRCs2O0M2HWEcQ
	 Zfq/Kh9xbIr8rofoe3Wkfcn/Fcv1kyJdsHhU2PN2Y6+bhs/X6WRBnxGn6YE9+wQ+42
	 hbUTPK9aLa9tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96F8C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 15:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178343751368.28939.10323674995788607016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d14d872b9c1c91ffd3746e3c66865ab0d06cd5facf72ef6040ca8846eb7557
Date: Tue, 07 Jul 2026 15:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783437513
