Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225F223AE87
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776865054; cv=none; b=swc5WXC4b4Yo3rAPw2FcTtjE9khC4WCWpo/o7RS4Mrmx8vaNTyZIksUqnLEc7oO48HOe07ea6Os8a/FcjCAEgdB9qoUzI8MG/mWSZ8Q6wXYfysJ+xCd7fPMLyfgX5cf+8FHVU6XdO+F9C6Yn9IYX29xNqhLfxoO2DjCXD/A7SfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776865054; c=relaxed/simple;
	bh=357jkA0fFKjWjZfxmpXWlMFadWdsO8JnwweB+6LHhSs=;
	h=To:Subject:From:Message-Id:Date; b=PFibxf993R4/1GoQMmt3pa/Szcvlywt2s5edYfjei0zbUIRqyDavHfW2iv7g72yz1823Nytfp4vJ0zSh/yni9OzPJvz8u6IRinGCF034+mW6sFLYpFfnQnTcfzUf9Z0PgynJtmE0m2VigLMtjsi9/7hd9GvNQXVJ/XtUl0DKlPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxVPHA3y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxVPHA3y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD56C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776865053;
	bh=357jkA0fFKjWjZfxmpXWlMFadWdsO8JnwweB+6LHhSs=;
	h=To:Subject:From:Date:From;
	b=YxVPHA3y9UM5GCyfk6kP2DeWFSI4BWUOjXuW8/okIjNg9EWkZF1hBb3BP4rIhRYy3
	 1IUD/EyqdIjAhyNGIW39G9mjZTtxOl4HS95TID7JM0LusdkInKsLJA0x526uixmySn
	 Ub99X5HhtjvrOspXoAKPIdTXPe3mUH0RVtE7ZTu9/hzAaxDCRKHjzpLLXyHMhZa3AQ
	 TwcHCLLltfSK5EFUkrAc5m4ZfY0O26675n0hHjuD9cOfehcFn/k5IA0tCThdIQAL6L
	 o0GKgASUrfgE364V29FsozgPq0/yXakhsF8uu+hJXbk3EGV+Cdx3xCeol6HZ4E+/kM
	 TIYFynz7s2sgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4F2F9EDD1
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177686505369.21572.13852302962713926328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 320d93db942ab087167e8ef8e7aaddfb40d5a590cc78559121fe3c866b81f587
Date: Wed, 22 Apr 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776865053
