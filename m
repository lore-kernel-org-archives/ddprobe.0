Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B30D326941
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769801034; cv=none; b=fhR444dD8LAbHFMwpdljEjNQMUEQDF41xwikGBsb5JP2Ehlpa1/BVPayS160hROrq1j42QWa2E7fYOINwBr9ExiYX62dwquBGM4YnZOwfkMvy3EJMDoAyunBX4+DpR9suyyvvL5OmMCDvKiiy3i9RZ1Dir0tzvnyVGEU2a5dHkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769801034; c=relaxed/simple;
	bh=WX7FrQCgXCi5YZecH6ajEESjMko62hsWTPfqZ/ABwhw=;
	h=To:Subject:From:Message-Id:Date; b=GgZYld8ERTIi6mCeqgqKj9oB9NBwkvf8ZzGmRnneXHPKGiXOPSwnBrKP1aKeWzFjH8eJUUWkoSFkJtyXaTAZiuzrpc/IUuFe1oupjvXxttiOiyT0MynGRu9zdOZExbCCha1zG+5JwXwxXgJ0+WmEr5geGMDVoPtdAidFfvrulwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/lgCWWU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/lgCWWU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A646AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769801033;
	bh=WX7FrQCgXCi5YZecH6ajEESjMko62hsWTPfqZ/ABwhw=;
	h=To:Subject:From:Date:From;
	b=o/lgCWWUdThozvLLjiteuSohbgbKf0hA8uH1cYExyj6VNvvmq5Ikp4pNLm4o2UBOf
	 MPjJgi8FKjUUSFk7xSTKzQk64Wfd03E0B0P1LoT0gAK942jKvS5Jy4E5cxz/V+z5Hc
	 PfH6GrRVvZlDuOk3Xgl4m7nn72va1RhNenblKMLNI71zETtaQE8/udN37PfbER1qUU
	 RABg26kVYsivmkrhtKJzRc87yg7xF/SPy3SRHUEnc/f2vuLobE4EgbkrQs9FKUCmh1
	 w2aqvLNPlt+me5VfsqVZzFlQJIwABB2XCVozGDpKD9jS6ZuYDzKLz//mByKQ0dkV39
	 eSrqU1+3wp3ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924CFE6BF0A
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176980103357.22264.12843945585970350334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 351f0455275d3f0279707a444a78bb4b7a57a778e0edd32893618519649b76fc
Date: Fri, 30 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769801033
