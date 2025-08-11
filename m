Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C0B1DEFE6
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754920195; cv=none; b=LMtQ0r35f5gjuhJ/EDHtsbfgdw3l/Dxw+Ue+I/2N5ZGFqF04k2VaVzfdk49t/Ezk8i2Xog1UaLWP507ZOS9X1nGyu469qFw5eugayUJ24sz4X97OSwTwnFVC2ySxHcrKY67szxx4M6uaaFlXHEhjD1RJeSjHl6YSdAQ07xL5/SU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754920195; c=relaxed/simple;
	bh=GT+4Fx8g3dPoGwSvIuVTv/G/Omw4/Z3EHyCndMl0EWI=;
	h=To:Subject:From:Message-Id:Date; b=DY2PyU+PtSdlZgwqpqNByI77DaRkFyNM2B3rCk0YbVhxRLGMZw3vUPo33Em7Bh8kQUgGAxmcSGXCaLZvV1kgFotyctTaFhlre8J60ImaBnZM0JQ3tpoDn2FBqgw3/lkloynO8nWx4KBi8MDkESo6XYQLgyh08IkZUF8HbCYSfW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZtIYVfLg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZtIYVfLg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BF7C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754920193;
	bh=GT+4Fx8g3dPoGwSvIuVTv/G/Omw4/Z3EHyCndMl0EWI=;
	h=To:Subject:From:Date:From;
	b=ZtIYVfLgliZE1WXSobDDT/U4t0dBtM4w7Xei68FE/sSoQab8Rzotrs0qh/ZiHy7++
	 kHVO/3uzQf3zwbhexg8h6MGXZb9IFwsbtSCY6YhqPQUhGtP6GYbtlgjaCDko4IOkUI
	 RX71y+jpKL7GHyt+l9FX1AUu99zPcd1DrtsmebgTY37VKAXILmS1bLy/ZoeXUR3Etj
	 Y3vxOi/w3Z5zMHJTomL1MyER4ThrkAJZ3Fp2GixEWbliQtcfrBUKJhQ+27xtdZjvck
	 AbPgdNIfBNXEwUbv20z6tn0XIqVPPDOixjaiKhaFtOrG2uU8dx8jfLEj1LNNojlnIN
	 0T2E5OOodjS9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E264C87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175492019357.13194.3163353768710617971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6f96bff594e5c7b00d0d4f899d64e68bf7e2d90b2f6a7f5e1f7f07ec7ed603d
Date: Mon, 11 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754920193
