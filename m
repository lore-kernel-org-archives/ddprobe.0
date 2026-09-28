Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644C32222AC
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790598634; cv=none; b=M3FTvDLl+FhcAcO8lgC/fPwCCm6jWAZdBtUOMWl7yX/10Vu2XQImE8wjTHx9P7EETj1dvxKwjUtCPmJ+bHAUrZ2urhQm6fIRmW7rvN/1YSsT0AnOvHEREC4vx+dvEVFUmCD4rBlDK2ZOPnMShCVpXXMGEZ/g9CrLXisHvAVkOjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790598634; c=relaxed/simple;
	bh=bpp6Zh6WTv+DxXQYhSEvek5qEN1/LILtGvKpOWQbiCc=;
	h=To:Subject:From:Message-Id:Date; b=cLq+uJjuNlnG/BPJrR0yWr2SUybMcDD5wNjqp8TUvfh4yvwYhbkT2BCCskaPx65rcxN4Vp8MvJUajO1KrsqL+0kgGelgaLOcyOMvrYA4JSA8tgJ3urvJR/55XLfBPav7YZZjAPaKTArAQf4gBk4MeDuHSea5vocbPg0TrmgzT/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpNVXSPR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpNVXSPR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6034C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790598633;
	bh=bpp6Zh6WTv+DxXQYhSEvek5qEN1/LILtGvKpOWQbiCc=;
	h=To:Subject:From:Date:From;
	b=IpNVXSPRjKwzIbll9MC+OoaAoWDf5NCNgkNPWhyxfMk+t6Ym5CUQCWn6EbnzTpOwD
	 wWKs4+j/YEsL7wqPh0a0uZ066xi5mdffxWuO4uPZNbxtci87ubjKCoiwf0M7NQrMwd
	 xmW0uLPmb4l0b4Y4QImq710PTMl/zh+TOpvomjeBmoJm9mGqLtiH2VbIIsnQQnS9k5
	 sLnSmMERAoay0PTPN78vdE6PVKSNPz9uqn8ajT3UwV3MGFhvtM4PhDhGHO8nSoeawE
	 2I0pD1bJXGsXu85KxjwRoTgOV88oCw6DufFBx8c/YFGCAvdyiIlAiq9pYqY301Cnn6
	 ZBNK+bhpdG2ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B7FCA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179059863371.32321.2753654283315659095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b018ebfe696527ba389fb3738b857f2b85e115ca0bb5e2a83f6c02a964d8a10
Date: Mon, 28 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790598633
