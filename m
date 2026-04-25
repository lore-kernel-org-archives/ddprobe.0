Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA6C1F16B
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777076254; cv=none; b=hCPP5jNE0x4DejZFJQl5BRAkatAHZuRGEGkAXn69A0OiPHuMSYu3ICwuw0Uewi6bfc0/QnJg3nLUa2J+5BoAcklmTy8Q2RNm5Q9gAAPbPQy2RbwRQbl9DO6DTNdGcBn9Q2NgoxIsHwBcRjIXlL834dowPZo0mVxiXU1dIbLfrnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777076254; c=relaxed/simple;
	bh=/9JgR5dXxRpu4YW3zqtwUCBwwq9Yy2BbNBgTvAm2xYc=;
	h=To:Subject:From:Message-Id:Date; b=ACIywJtKoEjXd3HP/yIHHwgXxHG56n0ZZiGd86eHXKPi3cMH5j7VcnsvAjI/3gdIeF66QcQ0oUTTWaoA28IfomMPKr4Citk7SRBvbdcqVQmixFnroeQUH5TJf/epyjEMuIrn3CBrlYrKicN3v1mipLpZqqOSyuq1rzyTOW5mdZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xa9tKsEi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xa9tKsEi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82A1C19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777076253;
	bh=/9JgR5dXxRpu4YW3zqtwUCBwwq9Yy2BbNBgTvAm2xYc=;
	h=To:Subject:From:Date:From;
	b=Xa9tKsEiO02/4qznOdwTNb0/cE3qEbRmlJqnJWb3DE17eHuwZqVoAMqGtsMXZj6n1
	 MpYlln6aX1LA1nokyx4GDjeIn89pe9STti26lLKiIejz45q15bcmEsKJVQiE5WXNt7
	 RGlrb6xSwi5xgfpp7V+IMUFzDUC0dKOjMtd31fS01KZB2sWMAjF8ngUlDm+59yDg8y
	 6E63h2OSNHnCHPcvEcGRybJQUhuPapUZGsGPQDHGND3kDUgTYyhnCKof3/R24ijL/z
	 Wtuammftd1d45667bwwxMNLaqdtZQOXCHzQnCtReiI/ZFkln/vVkq5oDHcbY0t07mz
	 R7G/rlafdlIjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94E7FF8850
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177707625368.20724.7101750913214421500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a2177d81f72be46953863687e179f0ba916b117acc011303ad2efac24c2f738
Date: Sat, 25 Apr 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777076253
