Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB2E38E5C5
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785765634; cv=none; b=NwHmLgrtc05B0M2ypojkPFkHzW3GXpkkVZkb+U0A0sCaM8oBb/jLGXNmxIHVJXCQimkt8VlFj0hePAlkzVKsYdRdUzDXFKRRdpWRa0YQF7TN38EHtAOmd8g+7VKSRX1fMfcQkl7g086fObg2gRA0GJZE4luXsq79IKOg9SwEe0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785765634; c=relaxed/simple;
	bh=W4GRd+p+N/4i4bFHaWHX0kagnww1jl5TyvHeBEqCkc4=;
	h=To:Subject:From:Message-Id:Date; b=mqJ+bwsXv0icdaPSrCILRQKxMp8+m318HuUpencXb1cAiuXdOt0Jp6iEpPemYXbq5s3mP4QXVvDwVyOhyhC5k4APTdFvubJiCt25NYw6FKoIES/5OEvI2BnWBfT82f9Qo/bPx/GFr6L2xHLn0e9IjEUt/wFXz9ZJbVX529OwBv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5iNWSd2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5iNWSd2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2079C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785765633;
	bh=W4GRd+p+N/4i4bFHaWHX0kagnww1jl5TyvHeBEqCkc4=;
	h=To:Subject:From:Date:From;
	b=c5iNWSd2ZuHc64HWd2/n+4nSGNdXv1zPP+P2v4sIhtblaDgHsvp5ZI7IAM8elzBGj
	 5rJQMfg7EYHAB3pPguZDO1D6gxz6GccL2nE1JhDi8Ewhva6m3HyHvYtQiguUZIfnzW
	 ShK9QAb3wmbeG2HKtGF1WopIRJzrf5+95ksmU6iN9zDTEZOSIVDD0xul1gX1qg4pFw
	 cvnyrDHb8cKCmfSiTFf18TW2fGc/lggpZ3AvdHdBsAHB5B4PPEqc/5WGRV8RoAyQ/m
	 9fue+VwpuP3zKWWvJtjL0KP/XyBqQheRx+rzZYnwFwImZydqZ1LPjevKVO2QBtThYM
	 TNRZrP0RCQCvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC353C55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178576563369.31716.10282211481508061719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d584d81bb5809ccc148830396085dd795e5e3980687dc8c4c74fee66ced6c9
Date: Mon, 03 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785765633
