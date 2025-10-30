Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151DE286D7D
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761790194; cv=none; b=bpk438nFk9fleNOl0XvJ3TgaXlHqzVPBPZcMSMsmt05rbm04VmsMOKG/TWAkSrAmbVfOwyLn4K0uiR9nd1SvUNvyFI4bh1is22QK1lMiul/iG8RfrAP4VZ9dE9+hQQRfx0qlm5v5B5j3uM1SoN5qHZ+4Ot97Qcyd+h3T1vjhvco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761790194; c=relaxed/simple;
	bh=NZQLmj9Qv+A+PAEXQgbTprzYaizvrcAJ0EZxOdbMq5E=;
	h=To:Subject:From:Message-Id:Date; b=LJKe//e7gdT02VcSS+bGd7RVgYdS4+racOZw43HhlATHEmtVbP/EnaZb7JhDmR5G7ox53YWmN+E+v1qBKV6i/PqVzPFZvnJiiHJl2joWzseAysEFAa5akE6YeVxywKOA974lM5smgBThSUSaYr7SAjfk4t4UO1bkJ1bitw3AeSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4PQD8Hh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4PQD8Hh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E07C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761790193;
	bh=NZQLmj9Qv+A+PAEXQgbTprzYaizvrcAJ0EZxOdbMq5E=;
	h=To:Subject:From:Date:From;
	b=T4PQD8HhYDbMyDGqR+fX1MbXC2d/0rhzxhjNAwAq5M+V+42Hr25A5nc3VeY3zhfsI
	 ihd58eFEF2h0YvkJj42fAwbnWdoWhNt3BeDshRrZfnBb1Uuqci5osH7nXc+1GxXmq4
	 l4NbguNrhgqaKO8/zWNhcoWv2sMAGdO/Do2PG8iqrlOafbBiMu4qXn4J5915ECVJq6
	 MHpPzMoxTVK2aDjqEt8onjRmT6QNhBZDoEcB6OkzJ8sFcxRYGmOoKrYNGzfCn/VR6S
	 nQhT5oGXdH/SXaRGK817KEDsGOhSqCWwIbENzMOYXTDAG7wntfftGDmgcL8g99LD9Y
	 NyCYWn+WT195w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C95CCF9EB
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176179019358.4802.1901432143160843126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25144a2a0ca692571b6eafb3574054c27f807d72c87b4299c164e01b87b56766
Date: Thu, 30 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761790193
