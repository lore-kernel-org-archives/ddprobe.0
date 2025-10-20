Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F585194C86
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760971794; cv=none; b=saUnFYDeyARPIufdUdkq1uwMrXZdnQ3WjRmoDMIMVTwmSrDjDTM5DO1KDfy/d2ei6jAVXC3wh1LmOfch7KLV7LyH5WskyASvlnEFzqiARRQRU090ccbOFHFshQt4Vlmzq5ioYRTcFAulnsjpcaTUpjmRyiGc8jQoclt1wkAPWyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760971794; c=relaxed/simple;
	bh=0PV7kMzcWrM2DcF9wvPEtLc8FNrA/815F2eB2UvfdeM=;
	h=To:Subject:From:Message-Id:Date; b=tVf1dgeYRYUG4Lmj1ctKv1os2bQ7v8DWav4/fPiDLrwItqi5Tovoib7mR6qEt5fAtUAxPIYzYtsA6GoX6SOTY6kbmsUWAzXaUMu/+Opj97RsuzSSKNk00/hjMUJqFovmUMITvGhpm+dhNyZ6qaBTeEiuo5/KNh7GCLuhQIdnPgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CtZSIgfu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CtZSIgfu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A204CC4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760971793;
	bh=0PV7kMzcWrM2DcF9wvPEtLc8FNrA/815F2eB2UvfdeM=;
	h=To:Subject:From:Date:From;
	b=CtZSIgfuKJPr8hz/Dz4kRDs9otxh/1+Di4x2iPAUcjnVNOWqJaPxRLqTV0KraHyAB
	 jzWQ+PqId8/YfwfH+lntMekztVHw+AzhRyyBdzd6ExnupfH5LJgjlFSfjdiYcS+GB6
	 6kr4WGorX8ME5B7zXvbsACZPvUsPcAGU7DEXIER9Fv5Lyjm/yjFPrEw2S/yNXvu4D1
	 sy6SNVAJ2oOw/B/yNddn5gpDW0K/zCxLR3ys4eyDkSrfhvrBAfTYqf4vMEKteK3AcB
	 t68YtBvABCn0JpBXXAQY+6P1w2ZMHTdTvgfiWCkcdJtgN5GG2hPc0d7OKfU1c9S2gq
	 8mVbZlkQy7d0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90485CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176097179358.1241.15905230141900479650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46f6a2f5ad95698c3262af039ebc88f0987931392be86cdbe6ab107ef656d743
Date: Mon, 20 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760971793
