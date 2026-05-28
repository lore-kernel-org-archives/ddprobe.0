Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC9636C9C2
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 23:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780009354; cv=none; b=Usc8WN2F5UsTtJtvBoBkMkgXsMKbz0rF4b+P2xpMuYarWwMvN/r1kPVHNB0suQm9zrIj9/Sr6JSv7/Wj9QVoublPp3oH+I3CjDk3ftrdnxKg/aJA9NIIxkqgfflHcP3WteTF7DQ+moAmCrS38BpocMvlo3PNvpwweAE9ERGF8aE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780009354; c=relaxed/simple;
	bh=3ON9wyWMKVdxrbBt8jyD5V/tfaAHsZiVqvDWm7ya6fs=;
	h=To:Subject:From:Message-Id:Date; b=YxB2KTws9Cgo3sCqbwhFlwh2XFPgVViq8bE6M4XiiIhnZl7lG4zZI5fsn/3BEUVvnDa0a/pUUW6c5/tUSMLB1mrK7dKyabR8aezz63wUgDb5Bl2kkCQMfs6XKUoLoCbAuMVfIC9jnw7KLt0yFFc9LmTvCqrZVrvuNFSg+EMiADA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYI58d+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYI58d+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB772C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 23:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780009353;
	bh=3ON9wyWMKVdxrbBt8jyD5V/tfaAHsZiVqvDWm7ya6fs=;
	h=To:Subject:From:Date:From;
	b=lYI58d+0t0XdCeWWbYxNw7OM+v3b00OQKWApLvbmBhxFMJDnRn5A6OBjyybgiXc6y
	 KULap5fHcUwCtpkLd4qcGcL0BILAasMyoAa9N7J8lDAZcYv3zhjpMgTG+g+xtpUdUO
	 UBtLaelY+4erh3jB5ekOX28c20Xzr6MaYfpRdYJyZSXViPkMqmMQgQhLk9MGYigISV
	 B6FRJz214bCzUkEhkHKGzlh+fNlJOP1PXdcmbXGDEgf99b8M4NHpVjmEk7/zrRZJYd
	 hfqugkwT+TB6fO7UnLWfmsuV36ME25TfLSPOA/zYqQKVatxhaH9gxgnypPgPXU9Wwt
	 7IFb4paSS7/Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFBDCD6E43
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 23:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178000935368.14426.7242244953970866681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4866cea1243a12cb6cbd87fc7504666f399d9605085035c059f7228219c80661
Date: Thu, 28 May 2026 23:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780009353
