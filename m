Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DA2F4F1
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759046394; cv=none; b=QHjOVX/vZ7bLhcdO/054yztaCny8CYVe/9TkBqURAncpuQ8b5dKVNK8VN/KTNjd87TeBKtVDVYHlxB1osvrbWPEw5FSamt2R2a3JDaXGg3o63TB0C3WB7YPSScVDFWHfrkICQ8Iud3Vzt0zZqUxpPS9fZ31k5MWR8qFQ4PHrmRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759046394; c=relaxed/simple;
	bh=OAZT1RFNTjUukahF+qsCgdqz+slctsvNsoqa5rV6FgY=;
	h=To:Subject:From:Message-Id:Date; b=USRpx/wmGtG1DSU0lgs6fdTrJkNYgAnBCFMCtI7xt2anD/f1yIGuNUAD883PY9lolQBafRgOT04LhkPEwV/GXHUJ7H51FR53kriu/zah39L1BWkifRM7fbCkKCKPxrSTBp+M4aU5iOBoH8r/zdqHP5JXI9O8Uwh+cJC31UjxJJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrtSezus; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrtSezus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A726BC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759046393;
	bh=OAZT1RFNTjUukahF+qsCgdqz+slctsvNsoqa5rV6FgY=;
	h=To:Subject:From:Date:From;
	b=WrtSezusSFzVQig1FanCTj9Qig9rVlPPJprU685D+X2wJS8UhV0bURmJfM0jy1r64
	 6+LARug0BIfn326WcewIo00ypf61Ih0FC6+GdusCk7QlQ+sEVNJbV4IZsR8MBI9q6M
	 VyoWRbP/0IKCO0eANMCPWIRvUpaxX7zO8FX1kARCgz2mVKBwIGvXcxn5CF+x8b07EG
	 Mu28DgCV4GuHKrk5cdxe/u+DfgcZmysXhne9141oAPQFRzDhZhTfPrbsx+wWA7fk1M
	 0WyJjNS4ypsKkMhal+8BJ6fTAZvvbOqLsVU4S9+FQBGScBh9qQsXbTSSoCkeA3NWRD
	 CdUY+MJjrbtbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947B2CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175904639357.13005.14462143064321275322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29ecc81cde87fca1541c1e3cebb3a0b7e6dd2d3332832cc77d2fc590c74dfb5e
Date: Sun, 28 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759046393
