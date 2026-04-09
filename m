Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F2B36E469
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 08:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775722534; cv=none; b=lg5xBH95IUkaVsCQGETNvsrMPKUZgP8VVTUcOXvufXvcZBXGfA1JufYGbcGC33nXapbS+y0M2P8pV0ix/2z3udzSS8LmovOnxjOaLnrrwmtqdvP4WJjuka1KrAKevJ7Tjm23U9Z/9m7xtlv2gyd8If9JtA8eQaw+I9gROLWq824=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775722534; c=relaxed/simple;
	bh=McK2kovRIzTf61FyB++LrRNcvWy2CCm4vkImQT0UQl8=;
	h=To:Subject:From:Message-Id:Date; b=IEpZsfO3IZoL3F8COyJcjUpf15Gt1JR7w8yLMDsjPllVOhwqaLEp7pW8L2pHHr6NRvohEYxIT6kqa2Ctima9gMC1OdHZsZL26VDetay/4+IvnTGCuiPgorr+WYTwycdV/bRyTdaaSmt9aVKVApW/gn0EWFC3Ynvv8bpCKkUkdEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwcHYs2d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwcHYs2d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC366C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 08:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775722533;
	bh=McK2kovRIzTf61FyB++LrRNcvWy2CCm4vkImQT0UQl8=;
	h=To:Subject:From:Date:From;
	b=QwcHYs2dGe/1kOjaqt7znyGcDEDiSUOnWcYrGp0OtxkxxjsLPxh9jmLwSci2DuoKN
	 7JxfpVAzM4hNpRLEe/zOgA6SrNACXdCxoLCNTW5weTwUFA4rHBhiyHjeUDxaDPwjhX
	 KrPWabinFuBmkcmEQM/hJ/WldinNaSlEhGov4bHpELMUCO+YyINte1PKae/Vi6Bmni
	 JFRdiAn78brPU94XYLapuyIdphiUn4+kjiXFDEQr7/iQritNqXWE+I+D3/U9LoHXw/
	 dYu/0BM0R+tSGbtV7kAJ++gbcwNiYg/9b5JzqUdGIsBWOs0E+HVBPWGZoxVmpTQKh8
	 60yp10/2mqzrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB236E9DE62
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 08:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177572253369.8030.13677604973427400965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dadb6c4801025701335fc5c2fa85b50a7bbc581b925280b0c672a678c9ea0d4
Date: Thu, 09 Apr 2026 08:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775722533
