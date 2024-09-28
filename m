Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1281EA85
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727546154; cv=none; b=dp/qJ7xIGl1jaxoJfJIPXD1PRrCyaKBqcBMjPZr4Wi6fJHDhwdPYzjCzB2S3H0BGTaBVL7xkt/DHtria6cUDdONgFR7UF5V6CDm2/5yFpCvDF3cWccjdQo0dtU/NZWAleg5AHBBbAAjv9zPc44HGuTzd9/FcNmJSIpG8E1114Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727546154; c=relaxed/simple;
	bh=Lv4OstFuXlvWCznNrvAQ2oYlfPHiLpGQFKY/VGs8Ooc=;
	h=To:Subject:From:Message-Id:Date; b=KvhCMgvjOwkgfMy6vj2KTO7ZnK5WZIYfmhtV+mStCHbydXIShkY1RNCxtHM+PgVPHqqxHvfGvCn6ZHkUWIcFVJXlSyIMsem1Ekb2GpEB1wZrN8N5YNeqE85l2hLTmCIju9q6/VYHJt6/6YGFvA/WOqtF6dYyNxcrMSMXQqhsQFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mov1Iyx8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mov1Iyx8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD75C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727546153;
	bh=Lv4OstFuXlvWCznNrvAQ2oYlfPHiLpGQFKY/VGs8Ooc=;
	h=To:Subject:From:Date:From;
	b=mov1Iyx8kSEjD8Byu8M9ZVO0/hWs3zeasxuuUfFZ/GlK1oU61W61H7qVZonNNZ9L6
	 74JMwQ3uxck8XNN6UEn6zn2Khw7hooDmNO/64WrlgIEgk5mB+0RdvdwxTYNctdXH6D
	 namhVHHyK66M5Aqb1EZwSDAv/GAZglvAOinQWCRo8uowMIzuTOxFqhE8wgipIVw9+A
	 15AR8ChHhDTEO7D1maV6iN+D8HkR3CgTDZT/xFvJtv7rdSZMoQxi/xc78XeUELWAzj
	 WzZwnpn4LX1J+0ELZZTxWhkeS5XcBifsNvnnsRrx598EMydprCjLU0IdJw92BsOZ9s
	 YrHMIVctxZ5Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1FCCF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172754615360.5239.6269136153466184918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba93ab7ec9cdb7337ebc643c19cb1da825ace6f7944516ede3372db8b08fac28
Date: Sat, 28 Sep 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727546153
