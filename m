Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FE4388890
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 09:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780480474; cv=none; b=GWExguMbaWUw3afw84BM57FfNcjwcYPn3J3n3SFIZFYBDfytiJZWq4RUHLgIwKyRjWSxH+GB7gKTpmYH5b63MTtWXjuL+v3o/C6ejPvZUxc3ur/xDHHKn1pmIRuKsUdDJCvUkK4IyFE7CkTJ3n1Zr0x8gJfYL9e2R7Z2YfUltvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780480474; c=relaxed/simple;
	bh=A41SIbO27nO/O3I5aW4SwI98EbuuF3Uj2nSnfyuOQQQ=;
	h=To:Subject:From:Message-Id:Date; b=AO+eh76T+qCK/Nks02F8UbfINTdscIiaMZIrlqQLjzyQznvpCYr/hL5VEX050Dvto/GytkEm9vD8Q7yIWwuP/jFO6+cRCy112YSSODkK4OKpynQvCmCycPqqRygEyBahNOJc1gomclYFdnOwGjGSufuGQOKTdL9OGgpTzaWu0yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0HPQZE2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0HPQZE2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE4F6C2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 09:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780480473;
	bh=A41SIbO27nO/O3I5aW4SwI98EbuuF3Uj2nSnfyuOQQQ=;
	h=To:Subject:From:Date:From;
	b=C0HPQZE2cDiB0khiIvl8iZEJ/4kHW3Td1OL1raeNHWO+r6y9WMjeHLfPZXPZsSXpx
	 6vX/cNmBER6/ODyPvcfYy6iQBqlK3h72wdOqNWGH8ffZ+oxtRKKJaR4j3wbGHC0ryR
	 eIvyvigGIzE8bkn1bY8tlgI79braq9+IsxpF6G7/Wsxye3b+eZ+YKB9DlPMmfCAUtO
	 zlEVsonVPfbkOSTJnn35kUAMcGZ6CE9hBM1ofWUG0BBy9EcbjzIQ2vj15vFOVCOL0G
	 GHSGuECGdDfyEdnSPvCpMmzy55SWZAgqPTi3CVTtUH1jjMfwgrEXHUwqx3RdIYhz3i
	 IozEPoOpKXWOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8662CD6E64
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 09:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178048047368.5922.16664569179065760074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c0ea5c4dd7a406f6fb232625f9b0404c7049adea3216e72fb5888603417ab20
Date: Wed, 03 Jun 2026 09:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780480473
