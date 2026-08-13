Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF1E25785C
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786581034; cv=none; b=Cx1uqshgvSKuq/rKI4CSCFT/rvAMXbPTBPoJTKV8i18eVcCLrkyoyWZOOtMSFW5xGgTKBXIQBGa8Ip5meBGJnx5Ioz7MrO9yeetLMhEky9dFFLo3m8Uq1DfiSlWOtXIs1AM67bzz6QrKTllRCHCfsLN4OthkjGeQWDK8jlYWvko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786581034; c=relaxed/simple;
	bh=sKJdEEfLlJxbAkdvpNZyONmghHgnbAILrW/fX/NlEfU=;
	h=To:Subject:From:Message-Id:Date; b=butMxSQoqlkO2cszoBMq5tJ2xhPFBSGlI3Eirhozefbm2Wlj4czUlbzGiyb0cbK2sorpaEKmgxa8A3C5mNnTOZPPucROGFPX/W7e5DllmbPQcHY+V6YgEaYgv5zSGCto2J074C0M7nRsZg7ucfU4qzGWaRSjFEemtZOrkRMzmyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ClWlQdoH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ClWlQdoH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D109DC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786581033;
	bh=sKJdEEfLlJxbAkdvpNZyONmghHgnbAILrW/fX/NlEfU=;
	h=To:Subject:From:Date:From;
	b=ClWlQdoH8nt9aanxTEpEABnRaASNhvuqN5ADGuWM0Sogmikn/H2RU4svftQlrlYWp
	 WhaYuqJDgu4qCILGhv8i+7x7m/bgnQIqIaJbN2AkpYtdoMW/MPdtgrhoDMoQuoAMJB
	 cj00r/mvAeYGsJInnzS4wDtkQA3MavtmWchIpLu7FbaD1Nc9n/cAHD49qVcTpL5D0p
	 aJ0lvD/2QH6Z4vSj0kBzhy/HVpSLTmIOVStMgjSjIWI72Uskl4KOUlOdErW+9/DtwJ
	 wVqUWcorQ/woIt0Bl7aSGi/JX8GChH2QexIZLybihDEjEtJnDwKS0gmeuxqIkAEsiq
	 FTCqgygjv7e+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6D4C5CFCF
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178658103368.4980.9117074069967260266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eabb57723d871a747ac3643cac8cb53becb286b56a2baf975fad0753b2b16ca1
Date: Thu, 13 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786581033
