Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3809928EB
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746329994; cv=none; b=Vl3KYdncDzMc5UGnb4eXfqxwcJxHp/yrt7pzvXdlBkvPWOSeteMququrMdIjpH/kVE1h64Iiew/3vmwnW4AEjSjpnmryQtM3Bez3DYrM7xJl8aSTJ0xJYqq4j8h3glkYsUFvsvDirjeb2HG+uHmH7x3WdFYKyHeUpFHFwzCkV0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746329994; c=relaxed/simple;
	bh=PAX0Zg+0Sl0PYTGUdWubWwJ+dTgmtMcxFV1DWx0IN0E=;
	h=To:Subject:From:Message-Id:Date; b=ufr5ArUeqkuy+XSGBI92psS8//MbogY8LmQLfp7rwM8OajCehhUwuBK7MXkIp2lWwBJyhnwu/E74/bz3Hb/ZjRbkmdvJ4VrLiktNOmy3r0tAKsvTrLyGD7f/I34a9nYoHSD/rnKYA7vFxoFAuW2xgx+F751D/N+ykwT3nLMZU3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOS1VScW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOS1VScW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D01C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746329993;
	bh=PAX0Zg+0Sl0PYTGUdWubWwJ+dTgmtMcxFV1DWx0IN0E=;
	h=To:Subject:From:Date:From;
	b=nOS1VScWzn6Cq8QtQhA7o67Myt+89L4wgqK15EwYb4KHtwIzttiv0VbrG+apcHC+K
	 XNcPy/Vtlt71hfZv1/KFmvyUmwyR3CS/MG/B7WXH+AIG/juSkHUUu53cZOz1qymvRj
	 tDk9lSpq2B1GkpGP8Vo6/yio0uLECPKdJKMMpzIKrOD5FqlMT4TG5kYQLwuzdqA5D2
	 cmYFbqT6U50m88EYa4GxSCcLkOj/LHnAbGnxNmDcNejmGhyL/XUOIUhoEwTdeBT1ew
	 AnRdzw91EceSL5jF4DY1C5F39lgcln3TIhKHagnG1ew9/EcVUkoeOHWlWVxMjeqr5c
	 HuigC8+McXFhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930E8C369C2
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174632999357.20042.12825813482548640443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f1587af5cb4162fd5f144f744f29727f9203a65a5cc49a205e1636337c64ff4
Date: Sun, 04 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746329993
