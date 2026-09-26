Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 620A0377A92
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790457034; cv=none; b=UUIlNjQqNtg2XANr5MpXtMVdEOmlYZTUSIsZWSTmnR5elZB+Woell8/nePWkHO6HJ/LKwvK89VHS8h00jqj25b2ctXYsoaiLQYgDE61jwCgJqwmBiCRK9k07TcPGUf+Alcv6sKef4gHq9s+zZqpCtfA6phvj1GCNtkRwTGi2NHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790457034; c=relaxed/simple;
	bh=t2Z2sb1/Tt+0itlt6CLHbjniG4BrsJ5Tm6ZlHQG23RU=;
	h=To:Subject:From:Message-Id:Date; b=s++t/nW4UbTCTXeNMug4VWp+JbP62dQ4CEuojxRFfaWa3YN4H155C0HC3te/2hcPPrCmNTyqaHrz2DljCVRGMTeRVCft3vxysXSPs80sz5/XqfTVB4hZLTEny6axQp81Vrz+KiDikq/QSytX5t75ML1xXWtJ8xDC9lbdGycSs2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIBsO4ju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIBsO4ju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0654C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790457033;
	bh=t2Z2sb1/Tt+0itlt6CLHbjniG4BrsJ5Tm6ZlHQG23RU=;
	h=To:Subject:From:Date:From;
	b=XIBsO4juSpcWXRXfJ+oEiGDqjS2lWoeikrOCTzcBwaaiwnFc6WaeS9nVcbGxMx8rI
	 BoeJEw+/eCNQyz66mB+OCigidmJQe2TZCYa5fs5FOZmLBn+BzeJFR1vrN8yFwguG/a
	 5znkpP9iA8uG0sSqN7ePsvRtZO9LiehoplyKWQRZRszxfQDdxEsxDYTJrDlFVgIpIZ
	 llTeDZ/JD90hpX38hOFBLv53/dN+xA4pD6MuzhACyTpsZyBGf2rPZZgO63q+mwWojM
	 qhiS0OJ4Q3lzAeKhC5zzaVGccQ7ErNuPa6dpBYYvMBBjnqlmY0oL4pMMfWnXYX67e6
	 /PwKsUnDbgd/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE7EC9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179045703369.7701.6601206546036125888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 695c1b4ee33250b86bc70c5a3701358d38c4db27838693719eff53c472fe8ce9
Date: Sat, 26 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790457033
