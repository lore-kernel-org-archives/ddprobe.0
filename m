Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363EE218EB9
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734719754; cv=none; b=AH+5DCBeu+Iacim0mX8dmKpjlFyexseT87ZZA6A04RaVgZ646tBl1jz+Zx2kc4gzk96CNZo/pQqDmQZU6q0wYCqnOtc/xUWuSPdvR/2/Mo+gPMM3p3DZtXdugHZP4xUXRA8bpF7g0vnFV6AN4DxPmvU+YAALukCSHyUyZ2C0nF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734719754; c=relaxed/simple;
	bh=EyuabtB/xxEdglSm3UiW3zopsviAqgcykdoxvs1Cq7k=;
	h=To:Subject:From:Message-Id:Date; b=f7RGdIG5o5qds+rghr4e+woOVkfI/cPcBkj+o8yejbzPHNTNTDMMqSaSyJVTfGV8PhClPQNsaoY2GKPZO3nMoPFBGaW47IPoon6B70FZ/vVI8fTpGOn1kO2GKUC1gOBZFWv5Qgy4jbbx/euwykt3rcnJ5VimOi8F8CLNe8WlsQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPzmMj0+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPzmMj0+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B078CC4CED7
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734719753;
	bh=EyuabtB/xxEdglSm3UiW3zopsviAqgcykdoxvs1Cq7k=;
	h=To:Subject:From:Date:From;
	b=UPzmMj0+jY5CoDa8o3ocFuL8AEF5gEeb5Mz3E6nRy/r2HhK2HCOI+eQbtgzm9aoYh
	 9C1nEBi7VbYzQqq2LAVaCKx4mNlIpXAnE/YiAMQky5qTxeIr+rHaAC0tUkD6zwB0CQ
	 tlNtn+IqcexTtKKpFk/4c4QOnAD41AIw59oDfm3ptrbXHAQ/W1eUbjA0kq+u5ul2TB
	 3nDZESRr0V19GXj0z+EudvSywMdgLKvFh9cwVlMLpV2JBzeI+12iWpLGhy7EE1UXtr
	 JL4wubNahV91DkMPWIMOnuoJsNoHKsUcUNV1DTPOttt6gIZVJibM9e57GImoQtdClE
	 n9HCW5jdAUL7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97680E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173471975360.10397.2789110681135514157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a73dbaa43da6563ed8c12bc75ac741aef84de3b07dacc6768b8569749fe2cdcf
Date: Fri, 20 Dec 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734719753
