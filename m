Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D9223CE
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 05:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714021883; cv=none; b=udEUlSM9QbzcyHEBjB0+zqDhtspUFjieMWnfLF1xE5AiHiez/TA1y/5lILGaysd9Kz245ffaUl/RmpTJ/nSaVI5lk/ZqiwCugc593AzrixP2cnDtbcpbIcxrvgyZDPgOLMLXkkMsVz15hf3N+JGbC7UwMk92IadRETvO37osPF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714021883; c=relaxed/simple;
	bh=6v1wmF40ZrWtYUIuy3mYqh1wALp9lOjBkglwoPknGDY=;
	h=To:Subject:From:Message-Id:Date; b=h5mGBCgYVgXkTumx8feTvwv/uA+Y4O/j1T6CISYjCmWSh1HndU/IpbiglPaDqIAUIF2xBRrYjBwpCfkgM0h4zANyFNpQGfpNrqssI8ATs93JFY4X0fEXWNSoDd/RN5nqGYREXdA/uUG5JJD3itSmwn0AhASGflmiok9kIiTFr4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ymf1bTtl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ymf1bTtl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE6F2C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 05:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714021882;
	bh=6v1wmF40ZrWtYUIuy3mYqh1wALp9lOjBkglwoPknGDY=;
	h=To:Subject:From:Date:From;
	b=Ymf1bTtltwsky14Cc76Vy3uGDcd2W3I20aod8EENxvHssShVOz6R7pPz5h5hOxCFJ
	 QAc10tMhy0GmtrKSjz+YP7VaKFSgU9YBCFdBq7AtktfLGTdtClznoJvaOuWXrUDUaA
	 imwz49b8BvrYag5lknR9EUWBcLHZ5knPmB+7lSkyXGH4tT74TKjZzFmYdj8TIQWxQo
	 T5CRgz14IB/zYI9gXDth8CqE1IghKsAkDU/cVhMgBSVDJkADDLaRBq83OJx5hsWZFF
	 b9yBUb2kwBMZniuWffpM7S+Gf+i7TfE8YkFlB8RlnnqLWmT0XoCZoCDuzIBpA5ERRA
	 7IVToXggJfLpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E12C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 05:11:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171402188279.15319.4400403702050538678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce88d919748d13ddd1cb92e9144f92055c70a0a0f448c148de071e12a6e82da3
Date: Thu, 25 Apr 2024 05:11:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714021882
