Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C1023373D
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767825234; cv=none; b=r1HSpVD8TQmhtY7VINSwnPpyG+1Rqjc3yd8AS6PONSCQxoi/3ksrR4eAoWIgc6dApkAzfrMRKNFzhDUfNqRDizcgpmNm1vLkbXnKa2UTt3LGg8cAH8xypIt3GjZPCyAJD/sMOeY3lkdqwR2so1EdKr4CWv92zMZcjChmCgxGgjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767825234; c=relaxed/simple;
	bh=W88M76U7JGSFjaywUOpNTVgMazBh9dyD6XDT9Yu4vWU=;
	h=To:Subject:From:Message-Id:Date; b=RFo4t3ASVdeEvM28Gh3gaRBIRgRLOS6JOomztGI5P6ESnHlbqm20mKKeNHEaWsWknV6uBp0jVfF9/0Huz3RG0XAkljTnKDhfOe3fRu7WM/aFCm82K10V+08wIbNueU6ZrXewze3QMZh8Ka8mxLmbz828yU82/6koAmJXpgaWHjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCiv+E6X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCiv+E6X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB7BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767825233;
	bh=W88M76U7JGSFjaywUOpNTVgMazBh9dyD6XDT9Yu4vWU=;
	h=To:Subject:From:Date:From;
	b=sCiv+E6XMuOMoqI8n2vsPtlJrGDY6napPSu8NFHa/E9mHvGMwPi5lbHEFmMn/N5eo
	 zK5VtFufUUnsgXjlxFppMaTD9KlZj6h4IZMENsVZLThn/K/cvudC8Z5FPpw2E/+mjz
	 AAOx8Geu6u/7SwLYRBV+UfK1cAXcSE087caY4kPqQNZoQxC3dGO1EO8fRqmKaBSSPq
	 rwWsB210pvDXnuDsRZMBByOC8DdpnlCn8kAIZCf5iIK7V1ncjl1suJiKRmU/qP4LEM
	 QPFBkBC2l4rfRI4D0KJGLfyvyiD6bsSyGcm72/dou+hIw9pNEwTMlUBuU73/isNO6l
	 7AXP8anfLAejA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F144D0D178
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176782523357.16612.9914200906879809944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4e7ae3329fc54a397b1ee8ccd8608137697a54eddd390761c5618f30d0742d3
Date: Wed, 07 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767825233
