Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F24C0369219
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785802835; cv=none; b=Lgc4Gl56Fi/3jw6aeaWHYt0vfE860CFB63BiusG8kXrVPqinB1OTdktUknYfm4nbT+QEvO6VTRXqAq8r6fkph/v1X3QCvPR9sssqWkSUXV6kD/a4P04Q8+AIAj7ImlQVkypWkvWSJZo7HH4/CtWo1drsRHjZTUfeBJNFiJl5AUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785802835; c=relaxed/simple;
	bh=ztDt8tlvFmpjivO7+qrxJtOQZNWeWmX43x8sjThDVHg=;
	h=To:Subject:From:Message-Id:Date; b=sYF32eUdhoqNpXlAPZQxDfgG6PqlNYF3CqABRMbceWkK6392QJYXu2d/nkchcEX/Ru5IkSM+NJk68ZVl+ulbqZLJZrSw2LOL5dxq29MhaB8KAWoPB35h25DIo1l3/UL2bghPOVaOFdZvHYvpD7axaUZqbK6ioDQ1cMpB6Bf7QiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2tLRE5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2tLRE5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7218C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785802833;
	bh=ztDt8tlvFmpjivO7+qrxJtOQZNWeWmX43x8sjThDVHg=;
	h=To:Subject:From:Date:From;
	b=H2tLRE5i5N8PJDyjLfNy5AW4O0CZCRVq4sX6aFP7RiQ7PVTa8qvX6ICnoqIyzIm4r
	 PcnmaMMEYs+Fb7m9+XyiYSBOJEVvtoP4dtdbIb4sYQUOlTfq9PutTIme9krpciOwaU
	 carX2lI32yWMfkiSNub9C1hwnZWqpa0U92evFt7kwK6Q8xtqBYqvu7/Gvv4u4UkESS
	 j1lSi9eDMGOr8kp0rhZ3q4s96/wio6ruea6uFlMiR/uXCAFDAQ7NkltOnetWAQkvDs
	 wQuOv1gDqnmIMAE4QEixn+4CNlNeiK9VT1hh2sIELtCgQ6KdxHV9HPhfyYxhvlm763
	 P+vzqg+UqogtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20C4C55182
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178580283369.25509.12898981925779374096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10ab9fd3d7fc81e2d642cd7773a73ba561918179aaa67db21c2c32b5dd7bb737
Date: Tue, 04 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785802833
