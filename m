Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E2D83CDE
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 10:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719830663; cv=none; b=b8hdH70G23H2EOXnP1PEaWpGnYbKvdVKiJEwDf9trHsscho3mXDW33DJuLFjazMKCPXG2zYnCOojqf+eP1DcCxv85U79rmSC38uhuQOCYubfpFQnyGbuidCOlhe3XLbUnHHwOUdsQtfvVTpbNpf7wS+Prgn42ApVMjvErS92i94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719830663; c=relaxed/simple;
	bh=7iqSxKuc4IUV/mymWmZZjNW/jlrHrHcUaMiqkd9Q2jQ=;
	h=To:Subject:From:Message-Id:Date; b=cTYDdqBFMAWc9vtJ3D/dyFUPt3rTgY3/ZmFEQiMQoyecrvRQuSseTb6+TMdnoxL9Qogidk2kJ6Bpf0xC1YprsOvl8nJYrTwAP7Sgms1Zq5RnEupgZHteFvE6FWs2rHRQlzwk2IZztdpmVaUtvFQv+8GJvgp02rpM8S6y0G+ypVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJbTkjDU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJbTkjDU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D6FC32786
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 10:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719830662;
	bh=7iqSxKuc4IUV/mymWmZZjNW/jlrHrHcUaMiqkd9Q2jQ=;
	h=To:Subject:From:Date:From;
	b=bJbTkjDUMVaLHxL6uI8RhVmGKtIrIYVV/o26I5fqPAbW+JHcMD2DYARHySyyRISAS
	 vPaJTQRCFwRPKVupXA/x6qWIQuaS633vVG6bi2C/CjCBrodSmd0RMk3Rsdvd7Ia5Ez
	 d7nlkLk6YJDsqUlLCefJJkc8SNtIMs76rdYv9zKJx0Hv0KufuJWeYjIkf2N09/vLMJ
	 d0EMM3bFm0A3ti+fi/NS5gKlY5e05v5a5Va42Ra1gAByFr8UUdwxChTU8/1CzLr2HB
	 4IqNZQ8R8d904AfaWqPVqK7WKe3t7Dj7Hu/4g+iA1ZaeefR3vyimLIM9i6IHPMx1MB
	 xifk6V13B4wSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C40D6C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 10:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171983066279.22937.10862568499447891870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ba8f0cb4e8dccfa058daea8cf5f0752a8778f58804d6075639b7537caf1df1
Date: Mon, 01 Jul 2024 10:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719830662
