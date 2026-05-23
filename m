Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EB32305968
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 02:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779502954; cv=none; b=MPEJ5YswrzEizcBD5OXJR5NngIgvpPDi8kqArmF2dAvmbM/TCih+62GUfAo8NQR+74LpETkkZtrdqextwOYeikiJXdh5UvlJm7w3LGCV+ouB8CdYeUDhpW86HFurT6CE1kEJhtWZW/K+qU2Qqo5gjYod8h8VqpGHdntecJy41Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779502954; c=relaxed/simple;
	bh=okc+PP1+/62X4frztlIkp6gCFxtjs69yCmAZpLW/CzI=;
	h=To:Subject:From:Message-Id:Date; b=Il5mR58j7Tk+2U1tjl0UvPdKmV8OFG24ueNXdiu5WqIfJg7BOlqouk0UdKM7ME6UNlDiKtM1FcUhsXxGWS8Tu9aSCU/W8oRhzpImQF8+Xm6zFhXgFa32b/qIxv2PR9NIHqgdLo9DCwsD5slWin+XEeMvxlG4zVz1w72UiQNGlfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MfCWGbAh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MfCWGbAh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3786C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 02:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779502953;
	bh=okc+PP1+/62X4frztlIkp6gCFxtjs69yCmAZpLW/CzI=;
	h=To:Subject:From:Date:From;
	b=MfCWGbAh60lqvzHc65oUYym9Sqto0diK0cQ1GXSgVMjWsDZMPXhyREP5IP2DK0LXi
	 8g8hHLAoW7MNL/lkW78XoIE/mf9TgIjM5voTi91Gh2ggyY9nbQX0r13fRY0x7Pn44f
	 HsUDxSd7GbnAcGtdTVWNuDiPtSdLd7T040sU8VnneSVUnvybXJcbqW926C4rIDb8Vj
	 rq0JQvlpZwvOSkRldV3HspEe0ofALcSgZmw0ldeb92DAPaZUhInMx0foes2OAcCpMw
	 /VkMu8/8zkhuICWbhHP9zDj/NwraiziaWSE/PCokzbOTZ1+xznrZPDRFhg2Zso4sA2
	 +v59EjqAuDqcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC080CD5BB4
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 02:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177950295368.10630.3799267492968585320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29f102a1f0c757f8d4b8ea824ae9bdfc303f83f21a8ee4cf12408aca57e5b7cc
Date: Sat, 23 May 2026 02:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779502953
