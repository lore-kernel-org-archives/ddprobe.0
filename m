Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81E6F2236FD
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 01:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783733314; cv=none; b=NLYBMoFXQjtRVn9xDwQaRdnKg1Aro3tqv2d78xgD3rmJcEXOEu8nDlGdbex/JUspG/dWz0m4F10wyGf07+JxyFxYBcQE09mIr/sQWHBHxyp9Z42RJ70B9doL8IEOGdc1TCIjf16sk+feI22PtMc47qDO7FC46hY1TpNFMUAuf3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783733314; c=relaxed/simple;
	bh=1GPLTI2dglnDwCjpknVgCmJETIJQOJXHGuFCohdecKc=;
	h=To:Subject:From:Message-Id:Date; b=YuxFz2T98dIwyPv4zkdzFSejGAYvy2f2pR1r0i6HGkNXfYrvqGMyjGjQbsCTyHwpl1y3wHN+oyN8VPJ5Ce/RiE1ERzTrocGsbIyTShNro88Wx4CMxN2xXkeO0eCTT+dGVy77pvITDhUTiYdTw+yY8uaBXUXATUBD8IUj3OhM+Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIgwFFH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIgwFFH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB09BC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 01:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783733313;
	bh=1GPLTI2dglnDwCjpknVgCmJETIJQOJXHGuFCohdecKc=;
	h=To:Subject:From:Date:From;
	b=BIgwFFH8MxPprOUQMTUt/25Os4vUkip3X7ZHZbH0b8qT4Sryk5Wpn+Esn0/m0DC5U
	 ooMR3K9pxpMZuScaUFjKV+xXntchx9Dj3hOb96ksLifg09YyDk9psG018VbPeLpE3/
	 IJoMbVCfXIVNGxSQCoLwtvDWNlu9BgKwK3e1SjvTGPv4cgTgiqw6B2UF55z+OA+UQl
	 UWlH1asdn2HDslMdp5blX+KT2/0oafhJydrov4bHNKx4pu3XnGIOpVgB2COaVb4XK7
	 o5/q8GAW9G6np7oaEm9tD+6eHu5Opht3BdbSynkoARPtSmESLdHoQ60HtRkbdxqvzb
	 th8jzzabUBUhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0CBC44501
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178373331368.14669.14225983020056388514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 881ea2f01906867a62780aae56b5d2be543d7317ca4f28a36f0b98ddb44e6316
Date: Sat, 11 Jul 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783733313
