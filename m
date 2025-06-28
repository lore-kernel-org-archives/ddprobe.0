Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CAB28E7
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751069994; cv=none; b=ZFbX5wbXyrkemuwQrhKSjp8LyfGhXTGLWx+HGUIIbQeFitJE5HWZ+GCPKWWUewJdgqTSeqqqq220iIianckObzPbL1srXGUPD8pstLGM/UvwD9VGVJTVyejs8IVLi2+3N0IdflspIBqzyQfXHWfC/sXKn6UKI6j2MRow/wxlIKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751069994; c=relaxed/simple;
	bh=l78XNC3RkITGJi6JvaO92ddh5EnQWGLsioJTBBZzRqY=;
	h=To:Subject:From:Message-Id:Date; b=azM8pLnJJxkWwI/ITqr+8a0eJSAkVe3NznRmZPpJdRmQ+r42/GY+1vjbC6SeOdzXXxcTsIkg2OyTzn/6EoeDHqmiEKBuc+z4RuM7ycCzVCrLNHu9E5MhQzHo6h5QthLmRaNc6W1VpcdAAASudrnFAbd5aSsT+clA6OJuejJKN5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSp/nWCZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSp/nWCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25B6C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751069993;
	bh=l78XNC3RkITGJi6JvaO92ddh5EnQWGLsioJTBBZzRqY=;
	h=To:Subject:From:Date:From;
	b=iSp/nWCZGy+QlfPbrH8krjEmRlI/EE6F0rWT3m6d+hzvMDeItYcEho1p50yCT5EqN
	 X1Qj6zz7wtw9DOrExX0OzEGGaIdBKp/Dc6dSOK671fCXnzv7XEF/+lSwuf46nChFYb
	 M3sTtzRQ4ZL+EN1UxDjN4BKKjoF3L6LRmOlxAyVGvicZkFdc44hUx3mnZKb4t3rPfQ
	 SBHwyaCjIt7usJpQFav2XkbjVVWR9jluxJhe+ovLXmcHxk0sPSXZO5dXNgmXOY8ib+
	 bMpuRuti+TOmPqxa6kTBXWPqDgSY7SSIMZQwxVtm3nbew/3tRFaCrkB3KUF/0Kgvlg
	 jvzNvApmdc5eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9B8C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175106999359.22898.4530601459807561897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f87e9163e93b41395ef8454eb660980627c4d316d67d68353c0bdc32ca60b1a
Date: Sat, 28 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751069993
