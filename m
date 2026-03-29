Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082734315F
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774756494; cv=none; b=aGzybIQpeYSRtga9C+4LRoiCnDqwqu6fb3FMtF1vtRml1zERoZwiOwixPR89uJ07YrxTRKZUnEg6lo/MgSBPLgJQcJspH6o2SI48H+xsQ0ItrR3Qhb2E3KnXPOuBW1RgqFo3ogZXu4Vs3gPVkFFx8duF8My7N81/kAvL4owLEKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774756494; c=relaxed/simple;
	bh=n4TLMAgf6GUnj9gBdlEr9Jd/cUz5lpZBM26sFsESuN0=;
	h=To:Subject:From:Message-Id:Date; b=ZDI/4jF4l63kbxrGxVEYNXK9QTu9vrt7hDdMly5fENUYxadOUslaZ11H9DDzr9zwxb3rKO52tEquI86reqpJfgNTnlt443bkClnj7SW4d9O8tOrWLwG6SXhyqMdKfAsN2rVpoSS4MPc6QTrXh/k9qWyTep/bi4bLRX7XsEYzHgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXiTXFMO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXiTXFMO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D7DC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774756493;
	bh=n4TLMAgf6GUnj9gBdlEr9Jd/cUz5lpZBM26sFsESuN0=;
	h=To:Subject:From:Date:From;
	b=rXiTXFMOo//5rVHOF70WxMO1tieThfRMZhFnvJC/OVuNQUpYeg8/HtrSSvNXUBjEc
	 D7pm1pufdx6w471GGP0mzfHz5oYRoXTmJz6NEOA88RLvOlhwShfG+57UYSYo6eKdcQ
	 c0r+1Vl9RYG/PytmompEQd6Lyg6vRzpFmZL7VRtNnVvfx4OHFx7cc+Ff49ClKT09jG
	 Q0ud0x1/wjwjsELotwNX92lbM+X8XkOL+b7RO11916DttsGLojV8rCFF1Yf7MSd0br
	 UGTNPDthzXQQWFCF8aCwTCrJSf6S7BPV4swCDaRY527dQCTarJSMqQmlFqui/AZB0R
	 ForKGPYZ1Zuzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905B1F3D5E5
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177475649358.10573.10848109595833089315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9468612abcb663ec8b976408d697207e4176accbff1b19313d05810cbb72be07
Date: Sun, 29 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774756493
