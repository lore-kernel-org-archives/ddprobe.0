Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B16A355800
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761686994; cv=none; b=QqLq3qaFqfkTwexAu0sF3fG9aJsASJj/3mTVwpLCtw1wGoZKzQDf2mxlBqDfPjiVzwq694gDNInQSbEqMPVsDOqO6sCzDWKHgPmzca0K4rPUSTFB39XSi0+VE9EgXv7mHDqDJQ5vInQIQpzv+9SctJMadyVSnntCy9dRmd2yGQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761686994; c=relaxed/simple;
	bh=ps8wZ7SWB7v2AqKlmKnFsoS+TlwYwWDriKGzG9qPXcw=;
	h=To:Subject:From:Message-Id:Date; b=DnJXQff637KW0o6YEG84NeqbbgUEJE4Aj2Ut9aW75UAGX6PP/86kcIe6JwGDaOF6hZxdHLuY++g9qYIet2QMJsL8BA6M2T6ienV/9akinMESFf29Gu02fGaWQBJk2P+NSJYvt2QwE42Ju5zhdbl6nnntgJTjTAJ1GWLz0zdZ8DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctB7dEmV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctB7dEmV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05B7C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761686993;
	bh=ps8wZ7SWB7v2AqKlmKnFsoS+TlwYwWDriKGzG9qPXcw=;
	h=To:Subject:From:Date:From;
	b=ctB7dEmVyqUDep98U9WLJ8QDohsTeQl/nJssmV1CkmsWFhOvOju0/B+mY5S8hwOQ/
	 sHLCw8fvJaxjU8/1GtiZlpOsLcywZ6QBQJBuCzLTJ1GXfmYtIc2GStNOSCLbe5O/TH
	 kY2PzVOPjEwejgDISu2OeYf3bwpIs3vp+uiIw6c3UCsIKsuOa6zbGWX3UIgmQhu2y4
	 YhdhePaBRYu2pSUjSDJPfERbE2oqIi+i0JCs10lguv/FyuapLyvKXhs4poO4uFrThU
	 q8d8Ab4ZWHAoIvXYncmh7bsqNQ2HPIQpkh1VkOtIdtEtKCWnYUHr2BAmP6kkBDf6Pw
	 BfbbFLo521hjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97425CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176168699361.18741.1760794497039383630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d07899c42ee0175a04ba971c846336001c2dc71a1589d42939adfdf66949a4c5
Date: Tue, 28 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761686993
