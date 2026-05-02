Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A9823BCE3
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777699654; cv=none; b=iGc1zNa6WUSXHLYWLWVm2gohQZ8D8xkLRyZIlVPkJV6OfQCfkL8myoul4dukjWXhHt+K8nUNa/xp88LqnzTGDvKS94B2BvCbIVr/+XLcpJfRdeDsXbCkJCUur7qEcgET8JbuX4jpDFm9LRteeTnQR659Xkm+VMXqgS3EsRzTrTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777699654; c=relaxed/simple;
	bh=qs3Odpbh7psdanW3jCBmPDzNmpWhQzooAUJhmxewxrM=;
	h=To:Subject:From:Message-Id:Date; b=OVhbMQofJSS5+j0WDa0OAQRkpaUZPRPRokb0CyT42RXB70JNKHm/nYOPP3VmWmrZNDU0spMihyrctaYZ9gF3oTJyQu/3ob4ZKn50Hzbs1f+Iugp4RhVYXSXAkPvRFtkJnLQPEWAUAKEPlO2BqXcIfGD0bUcgRcQfaHGpqqIA824=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8ags/IA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8ags/IA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01BDC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777699653;
	bh=qs3Odpbh7psdanW3jCBmPDzNmpWhQzooAUJhmxewxrM=;
	h=To:Subject:From:Date:From;
	b=U8ags/IAqRuAkV5txQPQfhst8VnoTNTM96OKbSjAzaZikc5rq39s8D428ywPdIkLC
	 5ECJJGOGztsqMUDhYrXUHUAjEq33ZV/wTsIlqqBWCfxvrP/ESsDuOZYmX3ILkQQ+eR
	 zFv/9ZWJ23FdPokaDvnfrBZ573dXUAUx6NZ281G22x45cyJW1jL64Bwd3bD1nRsKeS
	 jA0QgdMzweIcgaEyhKYhDFYUf/o0tY0MwTo/VwrdDdw2iILeNfgCvrx/JwebbgMbIu
	 dkhe4IHT7+VwcwPVCb/IawnKZjxTgIpIb9zwltOoKPZ5mycZhP0odZPObJFWRAlA9Y
	 jWFKM8lu7/l1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF923CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177769965368.5779.5778813570405049829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 525abdf1b047fe7a41f04af83564e887bf4fdd18a5cace432b6e59ce5107726d
Date: Sat, 02 May 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777699653
