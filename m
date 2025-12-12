Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1034A3E
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 14:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765548174; cv=none; b=FLkcbGn0rdvZUSi72r6KiEzV9OxUqLfm3wa5Z1eanxRybjme3Bfp/GaeK6R7lUCUOHheP8VAZ9CopqImsrlZyWbLhJ0kWyUe7q5Uk6D+Ej/kFGRfKd/pouznv75wVE3bNVJbo2zrUCWep/Sdt2kDTp915SqbWiDwGd6W+SDFdkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765548174; c=relaxed/simple;
	bh=zU7RU0e1Mgstltdod5ckoW3Bd7yhLOV/E+hQgEg+Mng=;
	h=To:Subject:From:Message-Id:Date; b=hsOZPKLDYe6jxpQrMOUH5qvi2T5qftAzzCrNVLz932ctXEBFr67bpsWnbXWL9q6CH2NTddu9GRpB+12xEtKKP4gCKIlh4icJ6NEAF1PjKXDOUjXjBS5R7BCCM2rfsgoZo0mpjLqSrho9wTVu0U5PnVGpTUKpqhKQjsRGHVLX+MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5X1IRTK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5X1IRTK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87BDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 14:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765548173;
	bh=zU7RU0e1Mgstltdod5ckoW3Bd7yhLOV/E+hQgEg+Mng=;
	h=To:Subject:From:Date:From;
	b=u5X1IRTKWnQI6hbordJQHh/yyqyTCsoRNvu/Y/AEPxzFWhsDkw8wx94hrZZq/Cu+X
	 2dQNnoUqgjvS06Nx1WQWj/AmON4FPusdv364ZOm+Wk/l7gWSGcA8ADcDinV+XHsHPT
	 D9Knbt779fjr8P3RKiKPc2BngEKx+XoNydcDpnIp2vJTu+80dWO3tjHVeG1ePetv80
	 I4yLg65Xl+mAiqpe6cQbzEfKvpgoBUwqMiipMiENzdr7MSVRkkLtbPVhw89agCwqg1
	 0BNK9Kq98szT52hBRlmU/GFolqFwd0+o5w7/4Opd2zjQhloOqm8tSVxpfPzqazKmVh
	 cwbdEFLq23zIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93963D49227
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 14:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176554817358.31248.5489739126646793900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 236c1d36cd2412aaee1790912c73ad19eb0dea73b66da36eb0dba1e492767075
Date: Fri, 12 Dec 2025 14:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765548173
