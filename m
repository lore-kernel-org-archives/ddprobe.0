Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0136732F748
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767633234; cv=none; b=sypT4hOw9+L2PDfFLFbD178K0cRQioFxINEAzVBcpzQkjzDa3p7uMsamyNoA5SlEfBGB5hH97W5iInvptKloSx9TuypdYKXUB8l/Gny5Oe3ajbkzuLaRXDHgx+CEnPdQh6Njcy2N9JtW9x7gUgfycQYtUK/49mNUjXzF8ulTuQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767633234; c=relaxed/simple;
	bh=fFbIDO4YDvSLod5/Nz/emnHFijQNuWPiSgqtIGvKAFg=;
	h=To:Subject:From:Message-Id:Date; b=lk4nKmOfPAhMjdIpygC3wh3atm5pqocgyj0OGLcy0hNBiBnvsPRmyqr6C+iEYjXcUqAG6reigIWsAsu69Hw9jJ4KOIM9mbdaV2Muuz12CGo/ux2Ol/Cyw64gB5pkbyz/8EWKX3dkQ2fjl3b4tRcgd/5Fsa1Tr7HEz0+B5eG4Cks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EHWGygeG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EHWGygeG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBCCC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767633233;
	bh=fFbIDO4YDvSLod5/Nz/emnHFijQNuWPiSgqtIGvKAFg=;
	h=To:Subject:From:Date:From;
	b=EHWGygeG6CxvCQDhmaUVrtYk5aZYcMce97yrEzfkdVcQmUPc0s8K2ZcK0XPJGJGKE
	 nXWQ+zubBfk6gYmSETslxV9e3x5HImqUbauhgFvCjzPwQdHdCsVpuaFN7u4AHpDTT5
	 7fHGu5BNV5cg4o0UaPqdd/XQKgBep1YOTomUoXCpfX/J4D/ZocZqB/bNz//4u39ECl
	 riJOp/GeQmyEyI1FnWiCfTRz3Hrj65A1Zz/XLG/kGPjERbVsfe94tgFk5hmuwXHQQm
	 +NjoMRd2JTf/b3wbdiTEbqc+NPFMCGfAlE7tDYmXxxg7Uu5s8iVcvmCBVbDH4miI0G
	 sjtQQA9ddn75w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F3C79FA8
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176763323357.27189.3738858843962975295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd846c11b55bf1d38bed5428712283605f74593b0b0a447bec44de80b9c55466
Date: Mon, 05 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767633233
