Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3DA318EE1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 07:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782632314; cv=none; b=orttPDK6G9owRgElK9nM/mYW+yJ1RZ12DdGjSte5X8rl98PwZ1WxouAEOsozKo0yw3KMjb6eaXn7HOHnafEPF9sJ7+ldDhCOGSMfmIDSCf1FhhLkrnUPkW+zmPtBmLGzhcU3Us6Gy8VE6XGSC2i7L1YHCh/8IA6zAvBs3L/Du0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782632314; c=relaxed/simple;
	bh=tm3wVfw9yB9dxU1k7chARvFDGHgRAyNH6tS05aPjD1s=;
	h=To:Subject:From:Message-Id:Date; b=AVHkw626eEFIL+F9uzahNbrHTK1ssUmyetaELlRM9evx4yx56FT1wL62uXJ2WMiAh8/wgYU7CYbffQ+RyGKnxeNyQbKQWoJDA4WyE6+dlViIT3nCuekt+vskOvazdDtBtqqFhWvf5XksgiPPAH+pFVLWPbx8eie6flDtjZQVwmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9EzpjXk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9EzpjXk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD3FC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782632313;
	bh=tm3wVfw9yB9dxU1k7chARvFDGHgRAyNH6tS05aPjD1s=;
	h=To:Subject:From:Date:From;
	b=t9EzpjXktKenJ4jNPxSvs09pkS+jiNLGDTqu/AXypfGllBGrDwcvFsiqPCDYiI4Se
	 RF4gHPug1nHhXz5lOnBqnYDXCRkk0iWzwWVclZHvlD5bNexBDaMWDxqsE44BbDtEEW
	 trUEG6TtOQwSzil0UFhKqdj7dEf4dZK8bZqpPjTJJeFDLaqmeBCfWOTshlUIEr97iC
	 qOmcNJpIVHQG8SGNciXDPAH8i5YH4H7WeZun6yFMbxZgwjz+tWwssPCJ2qw8aFHsvy
	 v8LCbAP6yqD7glxDUfYH+unxQPoJaDqlwtkO8EYqFSaoPxRuzS/oz2qWgfG162GDnj
	 gA26S21IBqK0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B192FC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178263231368.19570.10550446494610825983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49407b830b0ac3ea7b9e8726753ba228f6a153be59cb169304ded2f3ac9e8f31
Date: Sun, 28 Jun 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782632313
