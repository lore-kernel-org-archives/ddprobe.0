Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4721014AD2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 19:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719428603; cv=none; b=C2jY8QSlu3AXzw2QbTBJmxRlQDG+mQlHOiS2Cg6EA/97u+3BTAvhBpk1mwyYy67EisDlW5iWh/C72kU7zerx/xi+lGG9y6CxqOIatCCO8ygcAEwwnG4u5QQ1jl63lVUEq6wafDIyTCGZJbZe6CB3M1lbuIX12Xh8Qs8qu1XTo8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719428603; c=relaxed/simple;
	bh=uhRWqcm/j+YxYRW+hSbo96s0EpvUANVpj+5iouxwts4=;
	h=To:Subject:From:Message-Id:Date; b=rC7Z/5P2YTcYvLT5KYWdlQ4hSIC2+pAd6GjsC3Z23ep5ICdKeMD4GWQUW8tRtkTOgfVu5COYyH96QKlss8ZJ5wINq20IlkIPMLdrNLo3e9aHrA22u0B7H2PDploT5LWogmuw1IlkQPtzG480YUvXdVd6EmeArkzfQQQVOd16yJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfkC4JkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfkC4JkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D503DC32789
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 19:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719428602;
	bh=uhRWqcm/j+YxYRW+hSbo96s0EpvUANVpj+5iouxwts4=;
	h=To:Subject:From:Date:From;
	b=PfkC4JkVJI33mxeNzuoEJ1KS3C8oqlUsyge1blLCUqavOkHnvEY6+IkpvXeCIJx4r
	 lGuejvBvFc+7vqNnmSaGBXwWlK8G/3q7v4fcUOGbZduatPocALRHS50JOzVooyt9C0
	 S9VmtGL6TQkX2pG+NUrGwdSzfAlx1w0fhgdOTruRTQuJUCXwEjdKna2yWkOX+t0Uub
	 5n2DuS5FSoyxczZRc21aMPXJYZqyeFuGecoi63HQ23tBK0NyshXFffTD/434vzRtu/
	 sv9fORwRBlmYkIKMzmdQNfl8LBU1Hhn1lRrvq4ajj7MA/88/vVhD2D+5K0hNiNX8NT
	 IqcVszR5Y5mSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3023C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 19:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171942860277.15183.10073794685573875962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31111bb3d28de54ac702f186e7432d801df02f2b99943bff8d674b8685506846
Date: Wed, 26 Jun 2024 19:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719428602
