Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190D228D8DB
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 16:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764001914; cv=none; b=CSLfwuvktd4gSo84xEorgJUdnvzu0YdBQScPAlKEwea3BTQGu9wyosnRmvY5zKJXngXjJ4bMGa25EH5MDh1+O/IFH9ga2rXynEpiXM6zx0Yp2ys2PCoOWTSJAaB951tFCVD7DMmts5cfvUYocdqCSn0ndoZIgCvT9GtD9Bn9yY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764001914; c=relaxed/simple;
	bh=ZCltjnQMkN+1GNZ0GY5FfMaf1N5tBshd+P8rjPAiw3Q=;
	h=To:Subject:From:Message-Id:Date; b=MuHrMeU4Fsh4SUKfwpAGJu3c+/1bmcp1emp5/O8kE90/VvbQN7H9EREcTMqkFg0Rf6+kzpB31glTZBN5nL0x+9UGsaOqH4VMllyZYSH2lF19vXIb/CGNxXQ5IQa/FwnbKl1iP1YZy9moq7GrTazkLSpz2RN7EYDBICV2X+H2Tik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGJ0q2tD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGJ0q2tD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A286EC116D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 16:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764001913;
	bh=ZCltjnQMkN+1GNZ0GY5FfMaf1N5tBshd+P8rjPAiw3Q=;
	h=To:Subject:From:Date:From;
	b=LGJ0q2tDnZICamwJewsEc5V4JUw9H5KVi6wgSQO5EaHSdPqd2UDoX0hZIUxw7LQwG
	 mZLCGzCr+C2IPAzWB3aTUpJi93NGm2pDK0qQtZBSkKYHciDoNh+qp4fm03dlkV1f7V
	 YaII8Cg2V1UOEXzQ3stASbPBrsiGrhIrrsCv0QyGl0WhCD4mL2Xko96AY+ium5dCzD
	 zAf6YdfVHefqypC0HJNxguq+yCNTpPCOmCw2cwK6gUPf33KCwqYpIBbAkNCKCuhahX
	 mCT1DaMxYPKIyvR0UQKHluyefbjk0K7lzocSsfQqSI3CeaxglvJ0z88c4+Cnu+cvA8
	 85CjsaLTK7Ypw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93959CFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 16:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176400191358.9590.10197539807564840954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21a8c7cc4ad244a0c037f6ab32e31eb85e7df627b6656ef06fdb0913b266d22b
Date: Mon, 24 Nov 2025 16:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764001913
