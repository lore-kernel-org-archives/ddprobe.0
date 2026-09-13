Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D45D3DEACE
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789340435; cv=none; b=UsgKJLTzZmL9ZVcggKElB+gnsnV1EKTeKcXQYjE8dmCneqndCwUWpJ5FuaPe+B3DVyh1sPEamGiwHGzP1/GpJp3cd8i3UZEjm3XK7dx8I8dl1f1lbqVOjjI8/hEMfwOd1Dfb0XvRtakLk6uS4bQDtX2aQKaLskRVAt89gmROufU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789340435; c=relaxed/simple;
	bh=gDpz69hH/Hrk5K7nt1PmyNKJ91mEZGMeMuuUHwrG47o=;
	h=To:Subject:From:Message-Id:Date; b=Dw68RJc8TZ8NFdOAt7xV6Hr9dI6G8Ks3aN1TLmgXsUPVTqEq6/eJl/JULKTN9W6MEAszprr/E3Pz7cZ/LswnGo0oyetxkaG0d7mVXZN14kmu3koO+it9n9mYTFEybXFPvKkLoSQtOodcxUfKzDr3AS55NTTjKFXIjSFLQKjdODU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DilaOe51; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DilaOe51"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A0FC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789340433;
	bh=gDpz69hH/Hrk5K7nt1PmyNKJ91mEZGMeMuuUHwrG47o=;
	h=To:Subject:From:Date:From;
	b=DilaOe51SZGem2LtB6h4Uj81/bCMzC9fg+BF4Ij8D8Sibrtq7UWwyUkcmRuEACy8Y
	 mOblO5L4QsCA4+Kqzkiof1EIl0LtE5SxB8m7FDXtDWlANzdKL4+Aw+vWOXnSQxAZ2w
	 qERdqPwq7ZmVUFlXtX+rYXESgtUotfGFGc8F8l1WxEDtSt2lvMDsknLE56qE6XhJ+6
	 Gc9e1s3YA8Uoqs76QzLQOivlrVDwkVEuSMD9RBtjJ/t4XdGAHdY05CDiOk8Ez3zVps
	 zgumkxELLsgbEDupXsehmEhRw47fHARC6wz17f7kyHEvXX6w9X70F0klefcKPVtPFB
	 93f80T601M/gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED75C88E66
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178934043370.30284.5754087173820361302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ed1ce828f1cd48a39b61c2c9894e8c2b504afd1bf012423c151e48cd10412b
Date: Sun, 13 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789340433
