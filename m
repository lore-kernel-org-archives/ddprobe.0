Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DA0288CA3
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769402634; cv=none; b=f105PRHTen+sP8leg+QNxf5nx6nhRllN8S3iof11n0hiImJXP82YuKA+7BSHODDcJE+ZGPuuDr6gv2hh1y0ah9wIgl2MvEtqvMH3o6H3QxOcKcFcgojnmLpoHXYv3pH46FtmPldj4tP0x1JiUJrlLRLgu17QyB5cHPE/kUW4x2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769402634; c=relaxed/simple;
	bh=XIo/3mDja0FxB5Hhx8ub2jsnWv1P77Iw0bEbgG7rsJg=;
	h=To:Subject:From:Message-Id:Date; b=ooBlarqXvfe5vN9/VtydoXw/nzuuMHSFZQSfZELy4HgUuKy/CBbDr4jG1Pt1Xp/eobe9UAgJhDV0ZmHuFN+lRMfIXLkZQuwKty23XenURRetDVLh0WXMq1H/BRmXh2iC6157z+SDFwgZ4hqZVaXmEJIi2Qb+6+/lEdFVrdWbzOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WX9xH5i2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WX9xH5i2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1CBC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769402633;
	bh=XIo/3mDja0FxB5Hhx8ub2jsnWv1P77Iw0bEbgG7rsJg=;
	h=To:Subject:From:Date:From;
	b=WX9xH5i2PAn+BEGzeb3cBYJm+ZzIQGlFzx7AiBlMWK45QuKHkEjqkvaofUpVsoPR1
	 2LRC+mGpZIOeGdA/2MAZEjooppBDtFepWZFlTWBNAmLkyJMmHyiv4xr+KFko1x1tEt
	 LbLPxIJbg9jfqRfpY5WNnoI1jANa/c9mtVg0O9QmRYQz2yLzOOGnGQG0anGnJZTr6u
	 8CiNSO9L6+RlngtXNIJn/8mKs6O27LuLkWm06Asc6i58BjbWdpQE3jqR2M5ihdUOss
	 kiKvVzrREcOQO7E9MDvLw8KCSKZbbiX0WaagLuLrkTlWJjPpXiAx2U3PUgeuJOmTRL
	 OgGWPgW+sfJ7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94443C88E48
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176940263359.10391.17663743205028897188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 778b02a2dc896ab51f017ca68ba189677fef264b38f8bbe1f2dc225a5c7ddb7a
Date: Mon, 26 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769402633
