Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C81C1957FC
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748228994; cv=none; b=qe0jvScvIBF/G01vm8UWTJIOmMTYlH78XpT3Sz4wB6m0PG/vtij5fwvd83h18n8vzpPpLy6YBFii4SK9gmn1sADiyuO3h2jRKNRe+CMJXOJaTtxCrAGMTwTxl1GfCDlChhuH0DCvGWlBVueQmoIfNq1yBck2WS66fJam39EEANc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748228994; c=relaxed/simple;
	bh=IHTFNPU59VlZlw7FdDG/vZmiR44BLDaDgzIn7iHbdzU=;
	h=To:Subject:From:Message-Id:Date; b=i3mrzcVDJOSPU7V8QIgMTd60+vCpMaEkUJSuisEpnTpLQyFsXzFosPcwyuGXolK80ju5sjjMUV9VcJBmiA+6lTHyeBpbu+RzDEipoo4DU22wrQbEU64WHWFOId6lHGvzFEOS1BvkSi7Q6nWKRGlBWoOjrwfKgoNdogzIw+66+cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/X/fpz9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/X/fpz9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54D0C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748228993;
	bh=IHTFNPU59VlZlw7FdDG/vZmiR44BLDaDgzIn7iHbdzU=;
	h=To:Subject:From:Date:From;
	b=N/X/fpz9HpxNyFwuDe1jKZDdqtc36udPndbde080Sw7VinRZAzuPtLV7hV6/P9QSp
	 gAubn2O1UFG84sZ6KTX9Zc36O4FN7lmk4Csi0DfA1HW4oIo46b3ySsml0n/UFpbVKB
	 849AN5qL3fp+B/R5ggK5Tv04YWqn0CfxCGfcRmduLaiN4j9sV0BbdCESL0y2KmZY3Q
	 WUNkPzvDCb8vltyA49/INFt5daAIG6cdLkUTkEeRds3ubW2/acIc0pZII1sgfbj4yP
	 7yBLQuqrlKbFgTMWwV7pFJOEfG3eBWcjBQQN1mxoTHf1S2c5SDoGJVuhOnwbED0lN9
	 Zc8CzJUxrYhWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E63C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174822899358.18205.4823326524031240987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8c6ac94b89241b336dd0dfdd0b81e8bd92696d2b708617748df9fdcfe357b21
Date: Mon, 26 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748228993
