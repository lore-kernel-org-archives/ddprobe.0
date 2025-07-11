Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AB92147E5
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752223795; cv=none; b=kXvoNoNy4sACFl/OHZamVJElULEORIgJxltAyfh79pbjFD1D9RX9/Gcdsxyq08jf9tRfGeyCAMnt78sJRcdHb7F/v6p82Z7W6ErMeoGaxTQI2sNa/hyKy1/NTHzX7VxWVaAfHMTHVJ4XejxXL9Ysqv6SqthfYQP5gy7D0th5Kl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752223795; c=relaxed/simple;
	bh=aSO0um1xapzfYabv7ue/9Jb+rnnTr16eJlEH1FnPu+4=;
	h=To:Subject:From:Message-Id:Date; b=HOAQz1Na3Cp8r59d/k/5D0ndjdBfzbsGygXIeTERUwsWFnjh6W9PY6FxgeKWaYPz//sakwUBhfCcqtwo50QcUxJddPPs+8yWpNXyquGvLEseU3dHAmZZaNRTp763VHuxwyESMnSYHNWiSW0YwP4CuQZakMSbe5BCr81rX+/YdBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=feV0a/6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="feV0a/6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCC7C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752223793;
	bh=aSO0um1xapzfYabv7ue/9Jb+rnnTr16eJlEH1FnPu+4=;
	h=To:Subject:From:Date:From;
	b=feV0a/6PcJxPsrpTtdA1qW6ylteGIh8RYZBOcZ1OrFlngjISuUYBorSPkg8nfaP2x
	 Jr4u/HteljWvNkh7e3+gRmfHUxKn1eKE47Fs7wVRMNeFpWqMsg7VmBUdRpQsFR+9a0
	 ffrftAu59xBRazsqjvgPJpqHfmUukYDhVlZKVLd0wdvKBY52DYeSQdM8W7J077eMod
	 2J5GZOKlwTmaftpPrx5GKEtGrGFjAjk+a2FfFi0RW9fdtwMKEgAAL/1hmu+Qnm9WNv
	 iI+/jsqZUQW10zs9pTcTrowVEyqCzRIJpHvZERhXEwXUu1CP/2zqUcxntCQQovztWH
	 4tArmWqBntRHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903E8C8303C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175222379358.26024.5035398077627390668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93712ff626ddbb6aa1a66d2d9dcd3c758a1b03d5490cd223b7a3bd406f540106
Date: Fri, 11 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752223793
