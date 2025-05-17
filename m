Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429FD1DF269
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747477194; cv=none; b=JOJJJIEde+DJpaZIpHIh152/RzULW/mU76AwoD3TMv5sACN1aQPdjUuwnwW2tRR9NhitYebLnBhJFO6p5ejpTpXz4HbzcOHl5xmtr8USxeTZAfi02TMtO4A4JIkWeHJ6aJ+/1PBBhCmF28B1DtXaxHkpF2LWhxDly15flmnxfeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747477194; c=relaxed/simple;
	bh=IeewGzQ6sFaIsjjmpjXimo/bKZTGGlD/r55J4AK5oyA=;
	h=To:Subject:From:Message-Id:Date; b=VZxxDdKPHE4XWLgXT7JRhBVK8qv9ovcBSQu2dWKKduM79ER5yozIIj1TqNMPP2pMHhryxfy7z9tdIW9wS7mCWqZvqx7xI0K++N1agG+RCq4uyuS7dQAzI/+PBIr1kr52VcG1rWvbqbjY/OmjVmYGTit8K/RF93P8oCEFAnD5wUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfSgIvkG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfSgIvkG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67E6C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747477193;
	bh=IeewGzQ6sFaIsjjmpjXimo/bKZTGGlD/r55J4AK5oyA=;
	h=To:Subject:From:Date:From;
	b=bfSgIvkG5CnSyp9OlozFCOWMosGMBdIR67meWIwK1W2DQK4ucqlnNSsa8LFpOpItP
	 nIRqsWkWG+9b8RjvnMszDLafkzoP+wKZPQq4PFYGOEi25zPUOlxOgpT2UXPi2PJ9AB
	 ZReJ+A+mOSGKBJodjICiIZ6Evv+CX47kIJCRM39J0m67ddH8duCgjAJWMZ5G95ffM9
	 6+YT0nAyUEkhdXcaUbn1B8GRP+ZShTfMPQ1+sWLZNC3bE2sqlBmgySf0jWaOcm90jw
	 HToy7bMZjE7x/xbzDF6jXEYZn6U6mTLDJIgFlSrxhbOawXLbfBieDU9kv2qybfL6rP
	 qNbzWlUj0ttZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9133BC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174747719357.24131.4740757346882893610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ede78c5002b63b301852cfc016742d3d322d2bac62b9ede517179415f5fdd45
Date: Sat, 17 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747477193
