Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AAF158874
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747941594; cv=none; b=mvENsMCaGu1OtgVrq1af5DaYHGjj6mnYdVlZtuE4q9pPMBlvXfmT72IjFxQA0HCyGE2Ms5g9yKgWjrTkzJ2FbpoOACqOHVEDE/0asApCAPrbAjjVfcO/tnB4JIv+qtMQXkl/fKFiHHjXqxavWGBcCxFdtcijgqDzmcDbKUAQPmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747941594; c=relaxed/simple;
	bh=8NWW0N/sFdjiNhHkd1ZTbvFbJckT/C19/cdyquq9LCQ=;
	h=To:Subject:From:Message-Id:Date; b=rntTblU5Mn1KqSA5TeYS477ZaCtVQgRsYBRKgUpjG2iOIfSkJmRVDxoRqguRhdEGii7iG004oft8E7JdtHlFM/OGhwUkHw0PY4qp0H72IRki1e0jEs9mRXYoK0vdzgAgDB4OJwbsWhBAEef2oDsEhtHlGZdnzUxYAsHCS1uSuac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNqTW06x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNqTW06x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F93C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747941593;
	bh=8NWW0N/sFdjiNhHkd1ZTbvFbJckT/C19/cdyquq9LCQ=;
	h=To:Subject:From:Date:From;
	b=aNqTW06xrvyxcDfWdnrvxkQ2/P3LKEamCYk6L+9jq7j7UdRDXWoCAEoG6KqzOzwaB
	 /uy4ZTh/yXQOZT1bWcLgreUEisM6UmjLrAqD+sBPrYofqo+r02YLVp//2FogMEGa4f
	 WxMRt/ydviulTX6NsndfULdBFZloouaT0mF040mX25Dah1dw2LXgtr8WZD8Mmaq6y2
	 3oiEqzBByD/C+zQGBDhhmlgGKE5YqaAtHAQneMHA91g7FMdp+PctdBXLfKh8hXpcCj
	 fjisSn6Pzl6SCAJzSuZrf4g14f3NPeRssntr3NB3RpIOMEa+Z3cFzy+RDZf7DbUjbW
	 0yQMMA6JNWkZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEC5C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174794159358.2764.2424706425101138601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f364db44de02e218249f77ffabc0598381d5ecc0ae4be60858f386771c2b9e68
Date: Thu, 22 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747941593
