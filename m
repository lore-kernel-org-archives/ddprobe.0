Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278D32D979F
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 06:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763965914; cv=none; b=NmJ4xQDoZnuskS8/gU9DPWwsxnJPrB4PEBOAXGtzh/Tt0kZv62ZUWygNkmsoDkxSmoF2yVcA1Q8sq6iYKk71TkHvyD33OpXeiFQY1mLj5tM/AXWKkUQldE/Y6ol4Vu+arS0z3Yy9Pg0Iv592PNQZadFMgOaTbT3EuAp+MGumq78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763965914; c=relaxed/simple;
	bh=RVZHi5s+kczo+JMezF9JdD+QXypLeFEIfdPVlNamnd8=;
	h=To:Subject:From:Message-Id:Date; b=f31ELMZJyGZB/GJMc6zHE6O2aEYeP7nNCaKqlWn6WHfzKM8nSlLRs421NJtJl/i3SkJiAJVwm9MnlgYaqXaVELNWnDUM9ItOVBJJ1lNYdiD4IjoZ9NIq4k0t/X1izh0dDvwSQk4fuyolYKJ+h/Asz5Hxa6MHAI9bkmWJLX+aahw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/CKLNMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/CKLNMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18CBC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 06:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763965913;
	bh=RVZHi5s+kczo+JMezF9JdD+QXypLeFEIfdPVlNamnd8=;
	h=To:Subject:From:Date:From;
	b=T/CKLNMl5bP99SunICexdFsTFqBiVE97TwNS+QEb02frihSnDY5PZ1KA9dWthYBP1
	 WLnaRZ0jFbt/p/zFZY/zehjksiH04qLtBlOxwPM2bozPye3eALa4VZS23/61txIByy
	 RZZeRz5MDN0KKq6+cP3ATgiHnxayGSFtkuxtOzPFDM8llmAeOMb3AQ8wXyOKwrxIlI
	 MucZ5ah5Bitvbqi/BfgrElVUsJIvMr4BSI5RMI2H0nzqAQTiWYGMZz9l1g+Pa8PFJq
	 cEwQPFbn8GpQR03vM3fjGM/qafitmSIUdXEkZsUrCtW+VIrJEJ9m5lYFxnfRFu1Cvb
	 e9DZygc9L2PSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9166ACFD31C
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 06:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176396591358.2314.1673519456330555041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34962d3a5ef35bf9225cd30115a5b43dd01ef54e2467ee92ac4508ca2bd581a7
Date: Mon, 24 Nov 2025 06:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763965913
