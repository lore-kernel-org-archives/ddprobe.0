Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D242E6CBD
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756798194; cv=none; b=atDQCsihW6Bco34Bv+TaQpqWlXNGSP7tjvjZQjeR6V0YjOkFMIzXFbZEazOAU5mCQSbfBqB9bXUoA17DU1dx7WOJeCZ16pBGH31gh3RT/Qvi+nRJ79feV458MKDoqPLPxhhJ2P/Is7sqD5UYycA/Xo4dq0lP6tU/f9ZEp1azX18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756798194; c=relaxed/simple;
	bh=ytEM6cQYNyTjdHAaEx4RsYmKHZEyBqLhfmXkFyq++3U=;
	h=To:Subject:From:Message-Id:Date; b=NJdiZ5fHw0r57EKnXhAOkq/E9tfVCBZKJl0329aiby2XdGl/fXVTbM74SAKIt1/I02ghwXCE47j4LKHqy1qlUvz1Z0MZpMy9UEjB2Q/r43HrPZ9TvCUmf1N0ACvhNUri4v+nMVVHnmhpeuomy87ZBKpRHZvG9cPnVCnToeqez8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwEduHOX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwEduHOX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D9DC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756798193;
	bh=ytEM6cQYNyTjdHAaEx4RsYmKHZEyBqLhfmXkFyq++3U=;
	h=To:Subject:From:Date:From;
	b=JwEduHOXbmmfGBrAQBvmgDIXN1+sLcse2IJqKJlRIr217jqutQSJhlBd+J1sqMpLl
	 npsWkmEGFC7drsxWlFlS2ZjvdMI9iVMeoCQ9o6hlxFd8PvRSDH2KvFPJb5GDJ9m/P6
	 JSomG8WTIbJOCilLqxY34rcjjloOB+rZ9Tx94T5HJH4iiesJLa0JjFbOClVhdwN22Z
	 QxKLKSCbGjdHb1ve3G9y11l90WlUV8OUo2MkEWz34alr7p6wLqk4EhHbX4F85I1KZK
	 TVN6o37lDB9hT7aciFTuSbNO5jH6/TEPRqTIFFIomBiebz/kzfWihlYNRPAL0Uhgxd
	 HLzqs3QN9YkCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E475CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175679819357.22780.10083452727415856284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5143e91d8c8fe499802a4b1e39f8f90107221a47b5e9d0cfadc4cb10d0d76b93
Date: Tue, 02 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756798193
