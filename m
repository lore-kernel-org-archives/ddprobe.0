Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C53322C7F
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768509834; cv=none; b=CrgOoDEenxqlSEpx3s/T18yEn+oHESzyylBp5A6O1gUYCjqWdgJ9okt42gLXbAE7WAf6v3PJu6vHmnbCwOzG4EYQdwlki6cuI1uwyxByGp8nTaRuYDq1NfmxU7WudkD8xy78uMhqcItCdxvHLw4ekEZTHYU6AaaXdF7cn7qVlvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768509834; c=relaxed/simple;
	bh=HMMtFmIB4MHJo+XZ/RkvHTnJNH6ECldvqGCWemjqmiI=;
	h=To:Subject:From:Message-Id:Date; b=nIvV8kmOP19RlJcw5Xzqek4ckXLtpay/YHt1rXCjl+OV8zRHi08nGdjAzHi9BCrIvz86Y452141eGrvgidR28GmAhCe4FJzhFLaFepnRiIHGIQIYu4oL11EB2zNO0IkRBr5L4atEqQQamu6W8qxBBKRn1P3H+EojX2tMhSW0ANg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqeqItI4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqeqItI4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1058C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768509833;
	bh=HMMtFmIB4MHJo+XZ/RkvHTnJNH6ECldvqGCWemjqmiI=;
	h=To:Subject:From:Date:From;
	b=PqeqItI4FxLXunfuCObXJ1WcKtxy7nLm5W9hVcXvS4Z1WEz5lVuE6Vy1IeMkQVMc0
	 yS4JYvsyfeSTPV/ER9t7Nnl4QikXpTPDqbC0U71O/w2PFZZTbPPdfcxtAGWocsQRP2
	 5DMSr0Z2pocjmekBLVDnl2ZHN/92EDPBt6LfrTlNw8epRFJ0+Ok7B0aFEoqjNIx7em
	 I/YPrNoPZ2HzFl6foXKCRI8Nb1OtBzAUM+OPxaLa+K+5P3dRtxjmN+n52YvRBda2g4
	 mvANcg1LDTGEMbdLHguTJ3knmLO9/hz6IL1iNGLzvRc/m9/gL0Ei7tL2ylMwLEcVD0
	 pBbABpCoX/MAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA69D4661F
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176850983357.13152.15939638972208480828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29e163b1007a1ebc6a49777d3e63b9cc59f7683867d52dc7e40581885472c559
Date: Thu, 15 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768509833
