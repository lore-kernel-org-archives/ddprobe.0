Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C251519BA
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749509994; cv=none; b=b4A6bp+vybvLvtZOQ9APpm6LgeNpTU/9wZBfv6U+PiBfer5JPSOfngPdqiClar0GYeXSy3coG9CGfrli0Coixa+deijGjbePI6PSoZy2yx8tXwkZhVNKaUxDP3QBwaI+0lLg/Tul4cS8IQMXsfwh1UqEYpY/1LaBJ1V+yzCEgWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749509994; c=relaxed/simple;
	bh=JSkr0RSb3ifFgewVLKXkYik7V7jZsBqTLM+Bnagyofo=;
	h=To:Subject:From:Message-Id:Date; b=fKAM5BOrk+Zicp9loOxmG4zJvSMX8iNWjewlGevRbL4eH4ZYjp8vl8OlHz+VgUtO1nfsSXhxTL6wfq2B5SNEgimP9oe+4U7/sAoTafqRwBpZ2GSOIovw2TEvWsCOCLPKSIAfnD3yH+v0JguU4HuQivMSH26vEXTF61Cu/wsiX+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D58FdF4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D58FdF4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02CFC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749509993;
	bh=JSkr0RSb3ifFgewVLKXkYik7V7jZsBqTLM+Bnagyofo=;
	h=To:Subject:From:Date:From;
	b=D58FdF4mZuFYu/RHZ1VaLlKYE6dQA8sUohitifGrkqbXoaL8OiGc4c0eu2h6rd4qG
	 +E1U07A/AreNAfDFqTAYE6nrCg5pTTZUxiJn16pLuVLoRJe1lsxiF93W5efvFLDFFM
	 MFaXApU/n5o4vqyXUTi+9sXm1jkdsVSYNvwpyNJE/zacMJAgO8ju1iSotlck4YBbgP
	 VL3dzpR9ORZb9gSbSRpv6SwKEUSfeqexU4SIGOT9cayHh4lEjianys5sruaBgy+tjO
	 eOn5xR9lMqEkTjFW1r3lYb7lseFCgXDFGoSLZKWBOlZeydaBtcI4UdRqDE40vVzogz
	 ACbEO9IRNZArQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FCCC677C4
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174950999358.24227.9810529526632260704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28c355e89e727e1ba988b1ff37c4d5f455262f569f501e6883adc68b8d638a3a
Date: Mon, 09 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749509993
