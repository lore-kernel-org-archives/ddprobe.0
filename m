Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268DE19D08F
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760660994; cv=none; b=rAiaHuM2QbC5MQvx3ST4dKhxrgkMadbdKA7WYxiS9hZK+5CtnjLIufVx/QSJ/0DE5rQgVsbtE+bfteuYofutLagxUzQGXw2DxRt59uD5DObLEtVen35nxifZ68GZOiry/gdIbkZ04Gemmbsw/6Jie/dknuqnPIu+/TUDEE7RPxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760660994; c=relaxed/simple;
	bh=kKHD96JkGehYBSNPSKpW+PgxGUgDmU9Ps5/+1zjkcck=;
	h=To:Subject:From:Message-Id:Date; b=PDKUGvaxbgRTnVyCFh+6xHOtLjzVfxPTUe9U0UssaNJNbVfnFgIJLiSGQWtXCP+bbWlHdWhFDjw/plE90zikckj9Nw4OsUjlkyC0mTppLoWZeVRfkRQdNWVH9jIpHd0vNmNjIJUqVmrrWl9nFEEdWyTm/OHCjX63+vsuK93OQxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hltqh16S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hltqh16S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A24C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760660993;
	bh=kKHD96JkGehYBSNPSKpW+PgxGUgDmU9Ps5/+1zjkcck=;
	h=To:Subject:From:Date:From;
	b=hltqh16SToqjGO0Szb0t55YssBt2vAUdnqxKPetN2Th/PI1wUR4JIdPzqrqTwPalu
	 MetUw42a5+La/AWUIaFW9xaSd5nd8sVKERfUVK4r+R9Y2wf4GC6Iu004sFFDXzNwrl
	 O0MiqeeK8lShNozLt3CQU0ipSLk4yoJxH2G2nTwNLnkCySaKw7Bk6JoGH7FFYaERcl
	 1j98dueDWClvxLZiRxxEnTBgpQfrkYD3Fs5+eiDTs0BzJL89BMBhrmvO/LHl6NaHMh
	 bt94WzGd4tgspwyfRrMM8soeL36g0PGVLfOS8roF8JfHzULfIosML5a/sfGOGK9ynP
	 zJQzDNs3uPCEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F13CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176066099359.17726.1279555858403465051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fd84fa9e518a3c433b84671ff5b9f384cf997b347ce4893de6acee4ae670585
Date: Fri, 17 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760660993
