Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3D32FE59A
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756136994; cv=none; b=mtRqFT/ogvi8wXMFWz0MXBGeb0ZTx9CIpNrTi7ydE7TyqlAx1FLoTtzHCN92fwuOnr5JkucPf3+EEFpnLAuHj/Cpx9DSbOeqoYCBaUdvbsNscrEww0r7dJqD4NatY3DPrD9aMtFZoV1NM68a2u5KxSmiyjy2fQ2BERvBMIxjmFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756136994; c=relaxed/simple;
	bh=FdWd1afe6Ttt0obBupafYaaQT2hLwJtVSqWR+LIm8Ag=;
	h=To:Subject:From:Message-Id:Date; b=gUpJkkuLlnfFbLyDEhcc/Nx5+kLAUZ5i7GEsXhvRUEnIekCyvMv7ls9PPtYc/alXqYEuX2ZLjBHzw83DenAvFnZ3AOQaXUKVntd29lmU0Ptokv/JJ2iePk9iv6V5rEY2+BoTX/QOUryJZqnlq+szYVVwthPH9LCjcrKNj/0NxHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bpusn/0A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpusn/0A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7E2C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756136993;
	bh=FdWd1afe6Ttt0obBupafYaaQT2hLwJtVSqWR+LIm8Ag=;
	h=To:Subject:From:Date:From;
	b=bpusn/0AjtoWE6KN3R7nxVb/444KE4MQDxJRmb8WR3YDsMaSuneJlsLup0yOMx/gR
	 UXDtSWgQR0ykE/nWf0hOz0swCO3e+NE8DQTHVl5iRQ+FBFJRMUCuszIFaBCj0Ag+Ab
	 hEWeg1wJAmUNzUIeQpGRr2624pozWpRz/iXGSr2tBkuhENPeLlJqj6N3hFRQJSDH9K
	 7iYvySNFxgt3ubWCskBZxsaOXCfnl/N8zJNQmwHgnBO6Z6lUNW6AKLnbzdGQejr51g
	 sRD8duCDYGeHDsItFJ3wwLjzOlTYzWEM/8cQ84RLu247ytoopTKxIaB4VL75XASFM8
	 N7KAirT7z5B+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9027FCA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175613699358.31434.8059646787599560207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1c742ccea9359333602966c82063d29890cdb201cf0a5342895cd17f85cb02a
Date: Mon, 25 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756136993
