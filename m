Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283643016E1
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 21:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783288714; cv=none; b=c4MY/yt9IbZSwfGl8OK3Odi9+Q+OGrMd2MpQcNt60/PZeahoVUgbjVomPqof5QPn33PKZPKs+rug5beH9qfu2zlRdWV+qxxhPX1JHNFgNHIsn0ocLKLlrCQnSTk5oH87wUpRoB87bIdhGmZ21adMdQoqRYMiPlDAdf1xGpbN4Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783288714; c=relaxed/simple;
	bh=2NPSrJ4bAmPZfuB48uLAeuRQ+UB6LpItLK6XnYHq6SI=;
	h=To:Subject:From:Message-Id:Date; b=AuckD66n+6tWRBMcHPUMqWbO2+wxAnMF1bL/d/6+Yl1t4gHDqEqrzI7nUyLPLJzZ2qrLKP6vgEiRujwyDpDXrXKdMxIH3jqBEOxfSTrhR6zaMFtWwg9w266Y/Xui2IHsn0QxRiMKHwZwgxglLfRqLigmJ38+aWmQlY/ZvnKItL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESgvoIwl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESgvoIwl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C890EC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783288713;
	bh=2NPSrJ4bAmPZfuB48uLAeuRQ+UB6LpItLK6XnYHq6SI=;
	h=To:Subject:From:Date:From;
	b=ESgvoIwlDtWkzbYk/NBSD1qqdNazWhl3/sla/+zJ3+dtMDswN81cq7S3z/dc/5K0F
	 bOKdNI/QktkRZlXHnDZu04Rhz/fyMYIhb9W+go9GETl8i1tJ5uhpDT7jFW7aQR8W69
	 vbQ6VMcy+qsSVtUklIoZp1fkdQfpfxk5f0RMGAV3VafKTwBjC9wk4o4GmPM6/5Q+au
	 w7qDsqak7UdgLWBDyT2lZDftwDJTRFIZ2Pk4INH9RWrfJ9++wR/hRW/JnQ7ABQd0nn
	 4coFBpYkPcl+9l6OvGfdKmNX5XBmp54i5zXqrxrcBVCqnJWc7jjKeyFp5prKcnAQGA
	 Ec/RgeXgHwSBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8511C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178328871368.13960.17344276061398312962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d066f04ffe33a98f39b1d680b0d8cff6dfa17561ce91df0f90382a74c6c204
Date: Sun, 05 Jul 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783288713
