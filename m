Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B77331ECC
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784941834; cv=none; b=o/j9TAMKcuZzZfT2wGGj2CtG45JMMHJrEqN27uF0rqN/Dh2oySIjHSB6KHZ7h9wsi6MyJ4Bpm5jUINCXAE+BZSDUdhMR0tQQr64pabvsqRXNk1i57I9f6KnOuMBKBlWjtHapHI1KDIzByl+zFzqi9I2Y3t0qAJSFknUW2NOTavM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784941834; c=relaxed/simple;
	bh=cgoWiES6/zG1FfSl1yQdO+272NZwhBCyzr1Ol+6uTYU=;
	h=To:Subject:From:Message-Id:Date; b=cp40mz1UVhBWdl47w2/cuVyrQRefeUqRHHaIgqjrdJQULm2Cjs68lYeuVRe6CY6JPHTsYCcsgSyXaEPJ1+FIFaodwdXKtL0mSFHzFl4DlubpzxS9RN6H6kxabsMJiWXc7lCpaIXHIUNJBYCeTWLvjodDxM7x6b79Qg4NvJbaWR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qwgEPwiz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qwgEPwiz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41CAC19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784941833;
	bh=cgoWiES6/zG1FfSl1yQdO+272NZwhBCyzr1Ol+6uTYU=;
	h=To:Subject:From:Date:From;
	b=qwgEPwizxw4DP4z9u5GEGqDQTkv1vK4/XebUUvDh08WsH5KGnRlqPj86QqeWQrp7s
	 YqgHQHT806hnFW/WirNqv0Ugd4Nf9j94Ws2oX/WRXyDCvF3IGPHHiRRg7R4j12uzMR
	 PuNZIySSUtmQCbmadEUJy2LmgA7B8DLzfrLmJ3ZNLLCvD9Fo2MaDWsjRHQEZqytddr
	 wY+5b1qWfwRS48ope5ynFXmP7mtrk/JugqpJc1rYoO5EoRi6HM/tfjh7xj5uxxkmIP
	 mIor8D2Rx3L9TNjaojWzrxSMHE/i4QudfBTl2kcsM5OfEWgJvZpakkYX/anwDLtC/f
	 6BhLwZLVSTrKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3E2C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178494183368.26601.2094648819681515581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ed54af1eb9bf818e47eb85f1cd0357868c6c2c1841feab12750d79e0326b9c1
Date: Sat, 25 Jul 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784941833
