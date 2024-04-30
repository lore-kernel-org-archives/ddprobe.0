Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563511C0DDC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 23:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714520543; cv=none; b=BiarnBZAk0qX63oGiw0x+btuhAnu6Pfn1aGsl/xSTIH+14ANIqduvTBjCOXMLPDBXH4LmM9C/MVpJmWMVna/qSlMZjw3oWKfWqgwJ7eyz8Jxz9DVlJ00M1pGm8JQ6u/vLlKtVn/E7MQhJ+ugIpEvt+lO703w1K7KQ1oDKsUb+MA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714520543; c=relaxed/simple;
	bh=DJwrUS8e1WnjJCg7/mifwMx+vDiNPn4yQ1xv71CIMLo=;
	h=To:Subject:From:Message-Id:Date; b=u65eiJjLDDZ2roSVVQtvyxod7UgkdgMRO0APw96yb+IR/J+8Dau6SDXPsjMVmgbUVXct9HbKYhfAHX5umPIbNP8MD+e8Il7lsSkYzVNSPDiKxyxANNgpyRitW4o1m5v4MqzquU5CJ8FU39pAoweuhVrksfnrbFr8n3oIRvoBXW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HuaaxH4x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuaaxH4x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4759C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 23:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714520542;
	bh=DJwrUS8e1WnjJCg7/mifwMx+vDiNPn4yQ1xv71CIMLo=;
	h=To:Subject:From:Date:From;
	b=HuaaxH4x9jpJ4111o/qEDxm7B1eC8dmZHemvZO9kzCY1bm8GLUcTOqegseu77avIk
	 YK4nI+sT4gTXl4/p+DGCelY6SH6LnsZAP9DAwsSvT0L6M2enJmKFZvaHK3Jm+NWWFR
	 c8gv2NPpbJE1O1gxhqR91J+MHsNcK1W5uDKdg+l6k18YjKcak1QNxLuOLtwW0cLdXa
	 lXzye+Cm/Ix5Ey4kyN2VUtgtQgvbIMjOFMbC0m6EmMognVYpSVwfzlxpRKJnHNkG4d
	 2zY2wR33+5IXpdFP4x6fErpcIc//fc47gJGjZbyMn4K0ri/7EVyhwhLo6Ymf/cK6MD
	 vb6U404A9gXFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF70FC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 23:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171452054277.32558.9408961117198074021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 753a8a6ef36cc8bb810e3e8665b8cb945afff637377dd34b0f3b3cc720b45b42
Date: Tue, 30 Apr 2024 23:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714520542
