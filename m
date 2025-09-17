Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BF030FC0D
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758151194; cv=none; b=LWmO6zhZJkjIbQRPgMEJGrK6h9TRtjdd7YHjUnMZjyYQWDxNduqX0izLUTx0d8HJVoNQgFesAX68q+FOUHtjNHePh44YUV62920YI2bEHHytpAcEXIbwkGfnIRw/QydFncMkUajZatBRG7FaWY98+4QMZsz40LCEf6jkmTsYnrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758151194; c=relaxed/simple;
	bh=kIaJQsUCJwFKZVNGr9VsNCX7x1WInyt6WZhjTr2iN/4=;
	h=To:Subject:From:Message-Id:Date; b=DOg5wQOcABdAZhbqe1hc2N626efPviITdB01dfQvIbqRNREhbaJhp/a7siG4vOnlMNw+ii23eTwNe3zfC3VhLi4DZpbQWoYfuU/XlLpvZnQHt3qyOmBRDwbbDX5LenR8SI8Cs4hSMzOB7VsxNzn/izc9fnzjtQwlxczMdLOVKL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLgr9sIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLgr9sIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B238BC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758151193;
	bh=kIaJQsUCJwFKZVNGr9VsNCX7x1WInyt6WZhjTr2iN/4=;
	h=To:Subject:From:Date:From;
	b=uLgr9sIHvy/PXQhr1dqPfYDshfwUuwRxsdtd+mgS3fA/y4t+xKKJnjsm32B9dHKTv
	 YCQSrPY8BpqrcV+0SZTB85ycVDgzlVNYs4vO/Q2CClZ8x3O3SEHbihWnRytRvXxnma
	 t0e5dBh/6ljiz5p4ddiCQXj4E39n/DLnckXRwrLl//hArojkpCK1vmBnl37z6WXcg5
	 ldxISTBo5FwLviSRal4MAyI/G7G0YYOX6htXc4e2LBg5C2QHbdLgrA5040CUFbZptf
	 n+VdHlhywvZtEarxXGOkCH9jS8pgbh+c9wPPkD6RhQe6ThOw4mvuv4e/efNOL08OBd
	 mzo3QuV52TE5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA6FCAC59F
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175815119362.26213.1029688090947593264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f809d26abebc7c3742567af24892835a6e04006f1f570d3328d4445169adf064
Date: Wed, 17 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758151193
