Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B32028030E
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768690434; cv=none; b=DmBPQFamzELPGHNus1CVVv0ekiQttcmguvyR04UaTpsfA0fqRm6nR02JeXDN5WSTMcIgkN6nxrGsmcy00HhcbvZLKYcg1mZDHeOyZwzWL4LNanhb2aB5G2KcTreWSn2oYFKp/yfAYkDn6BvZFonZ1xESISX5c9h3gxsoMzzPWfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768690434; c=relaxed/simple;
	bh=IbErf3Dhr4b+CU5rSiWKUBreL0Pevin2DLdtRTMNSN0=;
	h=To:Subject:From:Message-Id:Date; b=ceBU8PrSc1AStrjD9+mx9z6EncDY+7QbxCfp4a9O0YbkHZnowTcjFBS1zfdTLsMhjeT+u1+YoJ3316Ptchv5bjncrGPIz9qLlizr/eNUoRH2x5VWsCko6sEdsQtU4wKEIOjv3bp3UsnR1O42CWv0CXRe2PwgwmNocFv82GJx91w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfgdKbnY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfgdKbnY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6720C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768690433;
	bh=IbErf3Dhr4b+CU5rSiWKUBreL0Pevin2DLdtRTMNSN0=;
	h=To:Subject:From:Date:From;
	b=sfgdKbnYyx8yRcZ/XuXxvgeZNG/KYI0Wc07S1y61FFXEIxvrK2P8P+ald2D7hJAZA
	 8wb6t4F2/K93PlzITN7rqO24cF4lQEQdp0jqd/Vajz3wef92iHfuTA/0gAL2uSKekB
	 Ap62Gu5HcoQsPqi2mjb1U25N9sRezBye90T4d4kOv42t569pVPzrPZOGqq5b6XICHR
	 gzx7FsIYinNYJK53gdcBJOfUwybzp8tEqdK+hfKI5Rv5/LAwrDoaWDg6qFPI7tP+EF
	 OeJTkbiJHf6RY7PYnOxBsgCVi9C/Vay2Ripq3qAO0ZjQeFk0IsxO+kxbeH3AoLndPY
	 nHBl4aQPpXIZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956A7CA5FE6
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176869043357.30112.13799564355295870461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d178cf62f9ec0628c8d980f1356e12669e90136bd59c9d3b22e85dcc4beb2a8
Date: Sat, 17 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768690433
