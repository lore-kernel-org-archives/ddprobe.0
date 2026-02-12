Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E262C234A
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770930894; cv=none; b=TqRkvG4ft/AnibaxyzX0vEixLRGCbr2PbFA/X+sptQA3wRwNp+1ur6bkqqE69FlcikF8nLN0GWxdbjwweMv3ho47HcNCXsPM+j/XT3K3EsjmagqIpgI23/+EgXQZbjQnpHuAtf430a5xnnCBT5eTptTXJCREEFFrqU7uNABJNpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770930894; c=relaxed/simple;
	bh=e7WoZicjucQFI3RuiMkXowIy0XqHkF1sTnFUYe2JKxU=;
	h=To:Subject:From:Message-Id:Date; b=G5D8nfCztrAS5TjchmxQBPaDOvENcDmtpbIlCYp5ZEM9UmDGwiJcZfeRQ85XMoTufGk4i2g/M/JT8ESnkNMIp5Uz3N7fGrQPNNnVH46/srwTrTa2clkbrWq6xqn4/xPKOqYprfYRmIIZSdV45uAyRUtczWClrd0DfxvKkkUcTG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8dt6vh9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8dt6vh9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA76BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770930893;
	bh=e7WoZicjucQFI3RuiMkXowIy0XqHkF1sTnFUYe2JKxU=;
	h=To:Subject:From:Date:From;
	b=i8dt6vh9S+Qz04tYfS8PFgTufYHMGUxS1Kw5/e+uMCYkA4+RVn5YX5fg0kSb4vczV
	 4MUYX4sWy7cjn65HEc3PPGjCikZD04bzE5UbLf+DcuE2V2+kUC3XYhXlNCgA2x7HBK
	 GzfePgXDj6B4vhuntcS+2QcvK9id3HG+ASjTPNjdjxH3Q6IGTQa5Qxi0eQDlp9Ibyq
	 K+6ZLEHFiOLDw8WcNnTdXsWFCyG5tO1NZDgRkY3fdoJH8FK2wE7LObuA9Nu62IK5fX
	 eM0P7Wsc/b5MRLRyVStxHBgsPo43DX5p3lYnbcmnB/3mNCPmyRKQHOISmA2glBcSGC
	 l80MAI6/NcS9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A48C0EEA852
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177093089366.20868.4564126878428890742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac62a43b4ec6943e0f44965c54e992b0cc21a387ef180a4fb8ae07e9a8a8562
Date: Thu, 12 Feb 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770930893
