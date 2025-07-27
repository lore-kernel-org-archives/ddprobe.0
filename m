Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2756A76025
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753639794; cv=none; b=XcN3xYj1fepo1kCi9LCaXYFk+1Ox/CtSBpf7iCaCxfEk+n3tW3Yj0KtrOXILiu45cq+hLmyRjA6xHGVbI2BrQjIaS6caVvh2pTOpdqk6VThz3JrLrSdyGORWIlNNIDOUvtuCjfv8RqoTmF69iqMDDYmsZ1k5TkfvwNulEegNH+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753639794; c=relaxed/simple;
	bh=2RSSD7MaU6MXeOIt9lyPgbux50HO+p1nCU9tc4vBqb8=;
	h=To:Subject:From:Message-Id:Date; b=H5A2nqvxVrIX0zEKo/exx88ye5MRQGByeQOPwsDmKJCP8wvdgOGIRovKI+Kj0ir97ckTqfFr1JkL8YlfuayUvt3jImchHgUfglMeanoMskTSnuZPTkaB1cR3/aC3Jtx+b3+gbDOniNgLJy6V5F/HzcoQ/Fdv87QxiL9KoU5eBsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpjtfvtR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpjtfvtR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0148C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753639793;
	bh=2RSSD7MaU6MXeOIt9lyPgbux50HO+p1nCU9tc4vBqb8=;
	h=To:Subject:From:Date:From;
	b=tpjtfvtR8me9bUfCMj71zJYdVan+XU/ncUka6ewxYj2ZCebapJ70KuByAXwMC5hYR
	 qYaDNKeh0LoujX1QdOgngBabRbI5CsuEckmDEBHrSM/K4mLN70UBYFSha6mfgTj1mF
	 UF+hNPoUSYLWjIy5e2lrngdJbHlJC3PAZDWuo2/YwmWQTaKnM9v3spAEXIHc4HxtqU
	 Op6z2tZV9owx5G2ubqqKT7KfWWXK1bI58Sk2DHdHyHZlHiSZFgI+0tEeeMTY4pUqUW
	 EmmLwVNhYsyMfAHjffYgIfo2+p/3dSr3ZrWwUtYJ5g72dbcw/L+qs1UhnnAKlS4V3f
	 IsI/3NLsMlylQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E45EC87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175363979357.23185.10052356085723531356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edd9058bbdc867e6171e6d1baafc55638eebf9c3522804cc79594b550d4d451f
Date: Sun, 27 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753639793
