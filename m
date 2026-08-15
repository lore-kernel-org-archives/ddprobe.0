Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518D83BCD16
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786806634; cv=none; b=e6MSu5bOJbMftqzyF9E2D+vsrdfkrgGm/mNUlkwCPaADW7enca/8rWYojLYKB2WFoxVLakWD1GnV37vAvs3p7oY0P/HNJQREaFBsTWTNexPrYlzA8R9miCSbvyuTkwsUE6kPyBVPXH35qt2IRcMJx5KXA56UVQn6HTL6efQFmgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786806634; c=relaxed/simple;
	bh=7ULw599JU7d+Vwy7IsoxLagzZ/NTZfoxKVpWGVRvU7o=;
	h=To:Subject:From:Message-Id:Date; b=Dy4VDLPW5h4jfdzn26gV9XOmrXRGrEwzpEc9qdWHkkEY3fFgxybEq0qbqTDV5QSya0CnbmbBiOKdiK5XvcfN1r/x8TjH2DTD0F3dDa9aW9c5TzZHJmbD47Jc0yOsjNhu+8MR3wDdAgHaGya088WEeomNKKPlKy+mHEUtadK5vvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgUUpean; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgUUpean"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10D5C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786806633;
	bh=7ULw599JU7d+Vwy7IsoxLagzZ/NTZfoxKVpWGVRvU7o=;
	h=To:Subject:From:Date:From;
	b=JgUUpeanjr3B++Bo2UzWglNGWa/tQmhk8coE2xUj5lzcPvOUbqsswyQsvRlkCnK3Y
	 EW9TPZlrYClUGhCNhWZkG6tipnRgUjceaHLxpQB1p8XxN/WyyOmv5h6Jll+tgmEIh+
	 agjgTbpwVDf9mJohC24jJvDh3LEPOGCJHcEVI+aFdyJ5NIVLA2CoxPrlEeboZjZKVn
	 b5cVOEhtb1x+1wIKdHj3WIhApPPGK0wODE7ESy/XvsEay/4AjQ8fBYXF41iMC8ldKp
	 ZCI2WtZW8/+ocyh+A8lJRI70p/af5WnexOycdQBiyHm9AhdNQUGP/0npjdh49PpuK4
	 pyc3j0mv/FIVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCA9C5CFDB
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178680663369.19602.2088736402876235792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0cc87a543327bb05f665c0daface737eeaa54747c722fa3aa2b1a85e9fb1a32
Date: Sat, 15 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786806633
