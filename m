Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5687A448D02
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 11:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784113714; cv=none; b=khJLULLv58c6w22Ifk9zmIAEIEtBZIAP6bXaps3vBL2b28nXbnYEN4V7IPn2DOBlHyWfzCxDlnXFYntOR9qil+g3GxTGBWebZj1UStvQos0lYRt9SGoP4rFsFIfVSII1gFZgtzlJZ7B4lmuvCb0O8fC/6R/tYcB7kNkxIN5/Qv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784113714; c=relaxed/simple;
	bh=e1inM17f6QAoUVCxY4/IHj/nt/Cmu45SFX3vha6yQjE=;
	h=To:Subject:From:Message-Id:Date; b=h8DZftLGAYHAFD2s47y319Qfl73k3z5WauswRIM5enByPxmLZnKF/gNoI5vATOmSBb6hChNbHmkqvtxR95YvKH4kPA6N0ZhmfH65xHS7rvSLwjKhpAFsxljH/kHeYZtATKeZ5kbs+z5SeYKtWIe8H3g+TCFc1o+kX8c9set6heg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=naoo0pIC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="naoo0pIC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC601C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784113713;
	bh=e1inM17f6QAoUVCxY4/IHj/nt/Cmu45SFX3vha6yQjE=;
	h=To:Subject:From:Date:From;
	b=naoo0pICCtHky+IWJsO1x2mV7EM3deKHE40+5TjdFUvpENigVyxKu15K878mXwtqX
	 UxUCPX6VfJjRYKafUmRbXYSX++Il8dK5Tg1NRTIUbXg8mGusiJ3eQ434q1zSAJ36FW
	 jN1uqW8VSpL2fiQWDom6GxYv1BUFVmoJtr7XNFL9ofGQP0DM0gF35m+rVquMLCKHqA
	 vbl3VUJm2x/ZqfzT4SvalxMgeiSWkGpQHfRQJpmswn/hF517OMR1Q/tRYg6b1WHdrR
	 W5MQzX6jXxem95oNdkS0b3PsJv3mmyLpxKpvR1i6S2+PAwkAGawAAOoafWfWIH1tg/
	 6hD8JUyfuzR6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8DB3C4450E
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178411371374.10067.12507314975955840453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af88eee9c14771be6b3e96316bd894054ad75e38ab9ee18d869215b8b0caaf34
Date: Wed, 15 Jul 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784113713
