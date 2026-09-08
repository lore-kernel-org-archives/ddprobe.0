Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528123B994A
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788908434; cv=none; b=WWCJh8GLtbz9kY1LEffjuZzzo67d4u5gs7ARoi87BQxCzX/DyU5ITEhqnLSuXMzgPtPawin+zc/fWyhG9xbbV9wnar2zMSUA1dBPgY6VD8bInhN1LIV4sK9k1ihNrFDWdahcdEi46nY73ieBMBg4tkIz84wGl8P4bx/+GDRRz20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788908434; c=relaxed/simple;
	bh=JI4+qh/DjMd6JwNd0kHrybOskechfeGdUcCeksOuk8o=;
	h=To:Subject:From:Message-Id:Date; b=iD55UkAjsH6LsMNLWdcnry5yeWJP/JfHPptMmd9bD/8s5AKJEjiYKRH5qYRj5a1oK/pGautOmA+0L0W0BeCh+b/fRJF+kuBYFftE7C/zI8RojZONoaVfX7QOJHB8SX0jPIerzI2mLlOPrfqRwHPlfszLaeXfcE0xe0ukyYMLBfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJIufNLX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJIufNLX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB6C9C2BCFB
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788908433;
	bh=JI4+qh/DjMd6JwNd0kHrybOskechfeGdUcCeksOuk8o=;
	h=To:Subject:From:Date:From;
	b=PJIufNLXcK1icWwwaH9GjqBfyqQD6tY7cb5ZgQwzz5/CM6RSquvZy/wDn07fLfAsW
	 zak8MydjsgpDkc/pmi3qkX9vkLf+E9/YbU1wett9uiQXt1hxV3xWYoAPCEXsvvCcgr
	 X4fSX8cesoDl0/DXISLSuQzbIZ0apst0qbcDut/RMLA9hqOYRP0v8yrF3y/XLic7pp
	 e/T7OdayPVPT0fBrWlzza77E3VN7jJ9WGV3nmNhaqiMQ0KatEC1WTPnCP+MD2sMws5
	 6GIxT812WTV4GBP5phg926mP7VY6OmSq7gzm802AlbFz5uVmgCTccWvcfsIoDW4zUt
	 eG79miyMnH+8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B427DC79FA1
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178890843370.10055.7607370652632794970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04502899433ca11530928d899b918977dd0ea08ab64e348982d113bf912ea0b7
Date: Tue, 08 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788908433
