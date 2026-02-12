Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CFE289824
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770921294; cv=none; b=hAglp5JXc6N2CkK3gWhsP+pLCSWPKdKZEqCGNYPk7lIaPDzDQtTxuuSeAygkXvctxK5JPOhh5GiMio0K64WTlvYoHBZ18G5dsHV06fvNoDcH9T149POR7c9dWw/2hbnF26FNKKI+lR2i+vg3ZbtT8eHjhENRZTcskIK0VPwbk38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770921294; c=relaxed/simple;
	bh=Dv9Q3DHEqVggCNbDSMvBtze0/xgpeqQ5pEoQHOblFGQ=;
	h=To:Subject:From:Message-Id:Date; b=SKwWm091kh3pC2BHJ/ncGbeXfMze/GFQ8EBrP+jurNE6RDF4ysQ4W6gr8ESysIzyxLpXiZQz/Cuv8f0CEhGvlxXnwCA+a2BGmSE5fzZH9cb/itnBkJSQb9fDzSouOgA2fj8Nij7dTOVEfay7bj9fOtGuSGSk68fe7hfSux8PsNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kn3C8Ed3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kn3C8Ed3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB919C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770921293;
	bh=Dv9Q3DHEqVggCNbDSMvBtze0/xgpeqQ5pEoQHOblFGQ=;
	h=To:Subject:From:Date:From;
	b=Kn3C8Ed3TMASnw0X/Ya/pLW15ZNfI/PEt5B2HN3jbxI9/HdVePTld0pvQYCz0K2ft
	 aEMZLMFL5NWDDFzzi1FTiT2kUfFHnl0f/Y9GL0/GnHalPGjiIABM+wINIvrPUn9ysn
	 qRTrWM7AWu2zfg45FSt9SYzQ5+QFlJQDxobmpGjPOTZB3C6wILa4Jn+IcOZd5I0F6h
	 DKm5+sAicGTSvw85lMS/etCLAtTxSfL3pvXjHozS3fYl52Q2Gn03HP9RZymk01g2gH
	 hGObw1eqZlqQCCzi7ResgIwLrBe/LHoT0Czb/Dk72kr6TELTDZf5b9lSReEN3GwzoH
	 IKUr4K2IP/ObQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9796FEEA845
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177092129360.18955.14514883777309964087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80c37fb230c0c52312bae2673121f239b035cf76c31485fefc73b7f49650cd94
Date: Thu, 12 Feb 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770921293
