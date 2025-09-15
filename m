Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09AFE221FB2
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757959194; cv=none; b=VcxteUQoC5LmlCHt80xtga0nfOugE7wgWacee7wHZ/h1K+4CBhqdd7PnxHpkOjAOL3s95x/bVNEEssvsTc4d9M/H5GT9ZwG6TudLQw2QLcYO8Bt/+VWGUWvjplp7c1skckGWmhF07Lw70vzKvrW+M+nc/cHkbgoTvr1GsxTgnY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757959194; c=relaxed/simple;
	bh=2SESVdHPd0BAK6W5MrXllAOetq30yf9E2mNjFoLJJKg=;
	h=To:Subject:From:Message-Id:Date; b=Oaln6iJPuxqqVDuXXU4ahEFpeo2scHGWQYSF8UXsJ6lBpu6GJd4/3Z8+ZQzd7t0rpbP/EwAmjEtc4cFOL3hHeYCtj2BWyM8LMvXZknJ+3Q5hKvvY4J22fRYxSVUlQtNbMwH/a76ONQo4TdpaCMzTJOyjRfHaLZKMI1DSSZOQb9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ht6GZ0p/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ht6GZ0p/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2669C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757959193;
	bh=2SESVdHPd0BAK6W5MrXllAOetq30yf9E2mNjFoLJJKg=;
	h=To:Subject:From:Date:From;
	b=ht6GZ0p/XpZdCjPjxcGFvQZB9s8Ucq/935ZCGtjsMQTdpyjCjIMJd8d6kWf5kXyCP
	 +02toLcz97ToxXka8su3dTEmr33um2BpNRgumvUQuu8Zvv+POQHWD2wANlh8CXKGQw
	 oIm9RvKlWe83PI+Pt3dAdvQ6Wlfg/NIDWdXwF9FCx6jW2IX5rJebdl4xsCBqDfSe6M
	 I0Si0E3Q/3g8c51uFXgz5OGhts93ry7D6pw+Ol611R/4B5mWbEvXxrtWQOutZc0rx7
	 yukUXijKms6miuSE1RWaFeYBE0XQwLbTcXt5P+Rmydop1d7wcxjTKVRauqrk9IeLBj
	 P/saMjoAJ8TeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBF8CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175795919357.4731.3556485490261558255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 209d5ede946d4927717af67651f2cc4f22e9e7549bdc6d83ac65191287bd9e71
Date: Mon, 15 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757959193
