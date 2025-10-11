Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DC2C8F0
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760163594; cv=none; b=O7VIeNuaYAJ7BMhL5fNksSreYa5WQ3H1BwvyR4usMCeaeL1Vi7njqTwudb5ZVh7q1LqPMDebcBDzLc4Q+aLsItx1/qeUbK4OSg/RVp2IYo8lULC8kGifQuZZONmuS/l6TMdkVPiCEnLNAsyp/Rqzvf2WraB0l0pyxfaSiX6iu1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760163594; c=relaxed/simple;
	bh=my6ocJLVb5nlxmP5jLikCnzXxKKLDqKuDNlmf6uYkBY=;
	h=To:Subject:From:Message-Id:Date; b=Wd3hvUeYqWyyR7cmFJ43sGvstkHC19dr3d1GWOYMo4BnEm2S9DqtGIcWszIwqtnLLoCLn5g0VEf2qZ1QQDkwzZtftlSzitCZ1b0n9mh7FYw6mFiW6k/xgAle+r5xntXDXYQxLYgC32m341JMiExr1Z3vn45rVkLEq9SLWZd+H3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iicHTI4x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iicHTI4x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABFBC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760163593;
	bh=my6ocJLVb5nlxmP5jLikCnzXxKKLDqKuDNlmf6uYkBY=;
	h=To:Subject:From:Date:From;
	b=iicHTI4xK15MqqAqmhy1r/FE0tbiY1O+QneUY4X/Bm/5y901S9S2KTglrOniz0gKp
	 vbQbj2CMyDJqFQi1xsUNRXr1oAqRizUbRMFOoERGzrjgj6tmFS9qhQB4C9UMGxBfox
	 /bET5SnjWAD3ySdhvjSxklCysT9C9IPFrKX4uBFlYNXoIPWGuaBPCOS6QF0NFbY5MP
	 0hjYBnvxIiggEqJGIY5bYtXWF7UqvJtDH3/0yhfqLuIY3yUK935pln806b8NyGIw/x
	 cactg+M2VLJCYBPncHafcaxpRIXFuuB+6Fzptb+lRRNjrDmtMb2gJTABbwmSndnHjJ
	 ExCSb3Q6qCIVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9654FCCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176016359357.11133.11743018485250473907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9d484b30fc4cdd439e9e3c0ae2957a63d79d81db2c941556448e7f4ac1c3fd1
Date: Sat, 11 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760163593
