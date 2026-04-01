Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C66E1E98FF
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 20:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775076934; cv=none; b=l3sg97KX+mWjCHrIxzIpHr1hiz2pR0GlFu9SLsBtUxyl2AUMQTJT529Rk3x16G+iJOUGHLH7JU7/SZQCXfYXdav7MDOGTX1nBWqljJOBGfwL+xtTCXSKsDMao2J/VYfDk1DS9GNTjL+GcDLtNvEHG6RMcaqAS4zaLZO1IeYn3OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775076934; c=relaxed/simple;
	bh=b3+4rwG8Ocw76rCxw4a/PHOCCsPTSK3evTgGjPIBmFg=;
	h=To:Subject:From:Message-Id:Date; b=uRHz3d34cjGT55XXHdgIZkmzlgErzbxIlEgUK9rF3LvmS6+jCH89kpqq4RKqKiazVV6VwrihicN8rLQCKPUT5NdPbsiV49kDH95xsuIqEb9QyNZvtb7aB2v0+toPOK194/GkSVi09xpm7hRCalLJ2SC5yttquhSwL2fXsmUYqAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNv1lMFf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNv1lMFf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA595C116C6
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 20:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775076933;
	bh=b3+4rwG8Ocw76rCxw4a/PHOCCsPTSK3evTgGjPIBmFg=;
	h=To:Subject:From:Date:From;
	b=fNv1lMFfBOs4ndjSskA06vXDPAHqGkspQmEoysDoH29tzM40eAahc0Fuflpjg1aGS
	 DNEmOmhXDFunXLofKD4RKoyG8k7kwe3BIVsHL0Z0ejLR0XxMVtEkTS6gBQWHsmfmDF
	 Y8iqG6fHM63GVqpdYE8uXfbHFgu9wlncy6+wXE7psocq1nzGwMjdox/NbxlvHVQIzC
	 Kq7ACZOdxuJyVaPIiY55KRlCcfui4M/IYVQvKj+IuDg3KZUjKI6i94EUkKlPgiTnZ/
	 FnUOCw5Yt1IG6ms9v+lWKNJaW86wOPcDebeVRENQuwmxSKQR/5bpZyLvnH96L+6Ypn
	 QgNQaHhh7efAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCDBB10FCAD2
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 20:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177507693380.5065.6233177283574904894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d48d940fa9204d3287624f27e6e14ee64c4a65e6d34aa4796687e011bf85b85
Date: Wed, 01 Apr 2026 20:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775076933
